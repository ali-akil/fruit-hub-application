import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:friut_app/core/errors/exceptions.dart';
import 'package:friut_app/core/errors/failures.dart';

import 'package:friut_app/core/services/firebase_auth_services.dart';
import 'package:friut_app/core/services/firestore_service_abstract.dart';
import 'package:friut_app/core/utils/backend_end_points.dart';
import 'package:friut_app/features/auth/data/models/user_model.dart';
import 'package:friut_app/features/auth/domain/entity/user_entity.dart';
import 'package:friut_app/features/auth/domain/repos/auth_repo.dart';
import 'dart:developer' as developer;

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseSerivce databaseSerivce;
  AuthRepoImpl(
      {required this.databaseSerivce, required this.firebaseAuthServices});
  //////////////////
  @override
  Future<Either<ServerFailure, UserEntity>> CreateUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;

    try {
      user = await firebaseAuthServices.createUserWithEmailAndPassword(
          password: password, email: email);

      var userEntity = UserModel(name: name, email: user.email!, uId: user.uid);
      await addUserData(user: userEntity);

      return right(userEntity);
    } on CustomExceptions catch (e) {
      await deleteUser(user); //the account is created then deleted
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user); //the account is created then deleted
      developer.log(
          "Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}",
          error: e);
      return left(ServerFailure(e.toString()));
    }
  }

///////////////////
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uId: user.uid);
      return right(userEntity);
    } on CustomExceptions catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      developer.log(
          "Exception in AuthRepoImpl. signInWithEmailAndPassword: ${e.toString()}",
          error: e);
      return left(ServerFailure(e.toString()));
    }
  }

/////////////////////////
  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isExists = await databaseSerivce.checkIfDataExists(
          path: BackendEndPoints.isUserExists, documentId: user.uid);
      if (isExists) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      await deleteUser(user);
      developer.log(
          "Exception in AuthRepoImpl. signInWithGoogle: ${e.toString()}",
          error: e);
      return left(ServerFailure(e.toString()));
    }
  }

/////////////////////////
  @override
  Future<Either<Failure, UserEntity>> signinWithFacebook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      developer.log(
          "Exception in AuthRepoImpl. signInWithGoogle: ${e.toString()}",
          error: e);
      return left(ServerFailure(e.toString()));
    }
  }

/////////////////////////
  @override
  Future addUserData({required UserEntity user}) async {
    await databaseSerivce.addData(
        path: BackendEndPoints.addUserData,
        documentId: user.uId,
        data: user.toMap());
  }

  Future deleteUser(user) async {
    if (user != null) await firebaseAuthServices.deleteUser();
  }

  Future<UserEntity> getUserData({required String uId}) async {
    var data = await databaseSerivce.getData(
        path: BackendEndPoints.getUserData, documentId: uId);

    return UserModel.fromJson(data);
  }
}
