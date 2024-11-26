import 'package:flutter/material.dart';
import 'package:friut_app/features/on_boarding/presentation/views/widgets/on_bording_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = 'onBoardingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnBordinViewBody(),
      ),
    );
  }
}
