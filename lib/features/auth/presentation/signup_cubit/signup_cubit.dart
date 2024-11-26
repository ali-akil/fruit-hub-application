import 'package:bloc/bloc.dart';
import 'package:friut_app/features/auth/domain/repos/auth_repo.dart';
import 'package:friut_app/features/auth/presentation/signup_cubit/signup_states.dart';

class SignupCubit extends Cubit<SignupStates> {
  SignupCubit(this.authRepo) : super(SignupInilial());
  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(SignupLoading());
    final result =
        await authRepo.CreateUserWithEmailAndPassword(email, password, name);
    result.fold((failure) => emit(SignupFailure(message: failure.message)),
        (userEntity) => emit(SignupSuccess(userEntity: userEntity)));
  }
}
