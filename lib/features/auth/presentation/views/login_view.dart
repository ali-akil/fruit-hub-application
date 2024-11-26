import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friut_app/core/services/get_it_services.dart';
import 'package:friut_app/core/widgets/custom_app_bar.dart';
import 'package:friut_app/features/auth/domain/repos/auth_repo.dart';
import 'package:friut_app/features/auth/presentation/login_cubit/login_cubit.dart';
import 'package:friut_app/features/auth/presentation/views/widgets/login_view_body_blocConsumer.dart';
import 'package:friut_app/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = 'login';
  static BuildContext? getContextLoginView;
  @override
  Widget build(BuildContext context) {
    getContextLoginView = context;
    return BlocProvider(
      create: (context) => LoginCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: S.of(context).login),
        body: LoginViewBodyBlocConsumer(),
      ),
    );
  }
}
