import 'package:flutter/cupertino.dart';
import 'package:friut_app/features/auth/domain/entity/user_entity.dart';

@immutable
sealed class SignupStates {}

final class SignupInilial extends SignupStates {}

final class SignupLoading extends SignupStates {}

final class SignupSuccess extends SignupStates {
  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});
}

final class SignupFailure extends SignupStates {
  final String message;
  SignupFailure({required this.message});
}
