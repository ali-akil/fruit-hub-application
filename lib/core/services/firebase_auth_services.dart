import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:friut_app/core/errors/exceptions.dart';
import 'package:friut_app/features/auth/presentation/views/login_view.dart';
import 'package:friut_app/features/auth/presentation/views/signup_view.dart';
import 'package:friut_app/generated/l10n.dart';
import 'dart:developer' as developer;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FirebaseAuthServices {
  //this method provie the context for S(intl) method change language
  BuildContext get contextSignupView => SignupView.getContextSignupView!;

  BuildContext get contextLoginView => LoginView.getContextLoginView!;

  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<User> createUserWithEmailAndPassword(
      {required String password, required String email}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      developer.log(
          "Exception in fireBaseAuthServices.createUserWithEmailAndPassword:${e.toString} and code is${e.code}");
      if (e.code == 'weak-password') {
        throw CustomExceptions(message: S.of(contextSignupView).weakPassword);
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
            message: S.of(contextSignupView).emailAlreadyExists);
      } else if (e.code == 'invalid-email') {
        throw CustomExceptions(message: S.of(contextSignupView).invalidEmail);
      } else if (e.code == "network-request-failed") {
        throw CustomExceptions(message: "No internet");
      } else {
        throw CustomExceptions(message: S.of(contextSignupView).tryAgainLater);
      }
    } catch (e) {
      throw CustomExceptions(message: S.of(contextSignupView).tryAgainLater);
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      developer.log(
          "Exception in fireBaseAuthServices.createUserWithEmailAndPassword:${e.toString()}");
      if (e.code == 'user-not-found') {
        throw CustomExceptions(message: S.of(contextLoginView).userNotFound);
      } else if (e.code == 'wrong-password') {
        throw CustomExceptions(message: S.of(contextLoginView).wrongPassword);
      } else if (e.code == 'invalid-email') {
        throw CustomExceptions(message: S.of(contextLoginView).invalidEmail);
      } else if (e.code == 'invalid-credential') {
        throw CustomExceptions(message: S.of(contextLoginView).invalidEmail);
      } else if (e.code == "network-request-failed") {
        throw CustomExceptions(message: "No internet");
      } else {
        throw CustomExceptions(message: S.of(contextLoginView).tryAgainLater);
      }
    } catch (e) {
      developer.log(
          "Exception in fireBaseAuthServices.createUserWithEmailAndPassword:${e.toString()}");
      throw CustomExceptions(message: S.of(contextLoginView).tryAgainLater);
    }
  }

  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return (await FirebaseAuth.instance.signInWithCredential(credential))
          .user!;
    } catch (e) {
      developer.log(
          "Exception in fireBaseAuthServices.createUserWithGoogle:${e.toString()}");
      throw CustomExceptions(message: S.of(contextLoginView).tryAgainLater);
    }
  }

  Future<User> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

      // Once signed in, return the UserCredential
      return (await FirebaseAuth.instance
              .signInWithCredential(facebookAuthCredential))
          .user!;
    } catch (e) {
      developer.log(
          "Exception in fireBaseAuthServices.createUserWithFacebook:${e.toString()}");
      throw CustomExceptions(message: S.of(contextLoginView).tryAgainLater);
    }
  }
}
