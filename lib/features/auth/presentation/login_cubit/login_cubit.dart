import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friut_app/features/auth/domain/repos/auth_repo.dart';
import 'package:friut_app/features/auth/presentation/login_cubit/login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this.authRepo) : super(LoginInial());
  final AuthRepo authRepo;
  Future<void> LoginWithEmailAndPassword(String email, String password) async {
    emit(LoginLoading());
    final result = await authRepo.signinWithEmailAndPassword(email, password);

    result.fold((failure) => emit(LoginFailure(message: failure.message)),
        (userEntity) => emit(LoginSuccess(userEntity: userEntity)));
  }

  Future<void> LoginWithGoogle() async {
    emit(LoginLoading());
    final result = await authRepo.signinWithGoogle();
    result.fold((failure) => emit(LoginFailure(message: failure.message)),
        (userEntity) => emit(LoginSuccess(userEntity: userEntity)));
  }

  Future<void> LoginWithFacebook() async {
    emit(LoginLoading());
    final result = await authRepo.signinWithFacebook();
    result.fold((failure) => emit(LoginFailure(message: failure.message)),
        (userEntity) => emit(LoginSuccess(userEntity: userEntity)));
  }
}
