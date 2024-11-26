import 'package:flutter/material.dart';
import 'package:friut_app/features/splash/presentaion/views/widgets/splash_View_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }
}
