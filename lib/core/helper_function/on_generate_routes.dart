import 'package:flutter/material.dart';
import 'package:friut_app/features/auth/presentation/views/login_view.dart';
import 'package:friut_app/features/auth/presentation/views/signup_view.dart';
import 'package:friut_app/features/best_selling_fruit/presentation/views/best_selling_view.dart';
import 'package:friut_app/features/home/presentation/views/home_view.dart';
import 'package:friut_app/features/on_boarding/presentation/views/on_boarding_view.dart';

import '../../features/splash/presentaion/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
