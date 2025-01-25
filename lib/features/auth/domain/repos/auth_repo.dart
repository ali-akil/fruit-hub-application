import 'package:dartz/dartz.dart';
import 'package:friut_app/core/errors/failures.dart';
import 'package:friut_app/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> CreateUserWithEmailAndPassword(
      String email, String password, String name);
/////////////////////////////
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password);
//////////////////////////////
  Future<Either<Failure, UserEntity>> signinWithGoogle();
/////////////////////////////
  Future<Either<Failure, UserEntity>> signinWithFacebook();
////////////////////////////
  Future addUserData({required UserEntity user});
  //////////////////////////
  Future saveUserData({required UserEntity user});
  ///////////////////////////
  Future<UserEntity> getUserData({required String uId});
}
