import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friut_app/core/services/get_it_services.dart';
import 'package:friut_app/core/widgets/custom_app_bar.dart';
import 'package:friut_app/features/auth/domain/repos/auth_repo.dart';
import 'package:friut_app/features/auth/presentation/signup_cubit/signup_cubit.dart';
import 'package:friut_app/features/auth/presentation/views/widgets/signup_view_body_blocConsumer.dart';
import 'package:friut_app/generated/l10n.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup';
  static BuildContext? getContextSignupView;
  @override
  Widget build(BuildContext context) {
    getContextSignupView = context;
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: S.of(context).newAccount),
        body: signupViewBodyBlocConsumer(),
      ),
    );
  }
}
