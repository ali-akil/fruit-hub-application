import 'package:friut_app/features/auth/domain/entity/user_entity.dart';

sealed class LoginStates {}

class LoginInial extends LoginStates {}

class LoginLoading extends LoginStates {}

class LoginSuccess extends LoginStates {
  final UserEntity userEntity;
  LoginSuccess({required this.userEntity});
}

class LoginFailure extends LoginStates {
  final String message;
  LoginFailure({required this.message});
}
