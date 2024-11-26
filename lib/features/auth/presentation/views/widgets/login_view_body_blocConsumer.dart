import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friut_app/constans.dart';
import 'package:friut_app/core/services/shared_prefrence_singlton.dart';

import 'package:friut_app/core/widgets/custom_progress_hud.dart';
import 'package:friut_app/core/widgets/custom_snakbar.dart';
import 'package:friut_app/features/auth/presentation/login_cubit/login_cubit.dart';
import 'package:friut_app/features/auth/presentation/login_cubit/login_states.dart';
import 'package:friut_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:friut_app/features/home/presentation/views/home_view.dart';
import 'package:friut_app/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Prefs.setBool(KisLogintheapp, true);
          CustomSnakbar(
              context: context,
              message: "${S.of(context).titleOnborder1} Fruit Hub",
              color: Colors.green,
              icon: Icons.done);
          Navigator.restorablePushNamedAndRemoveUntil(
            context,
            HomeView.routeName,
            (route) => false,
          );
        }
        if (state is LoginFailure) {
          CustomSnakbar(
              context: context,
              message: state.message,
              color: Colors.red,
              icon: Icons.error);
        }
      },
      builder: (context, state) {
        return CustomProgressHUD(
            isLoading: state is LoginLoading ? true : false,
            child: Loginviewbody());
      },
    );
  }
}
