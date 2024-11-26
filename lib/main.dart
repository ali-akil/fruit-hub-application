import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friut_app/core/helper_function/on_generate_routes.dart';
import 'package:friut_app/core/services/custom_bloc_observes.dart';
import 'package:friut_app/core/services/get_it_services.dart';
import 'package:friut_app/core/services/shared_prefrence_singlton.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/generated/l10n.dart';
import 'features/splash/presentaion/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:friut_app/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = CustomBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth.instance.setLanguageCode('en');

  await Prefs.init();
  setupGetit();
  runApp(const FriutHub());
}

class FriutHub extends StatelessWidget {
  const FriutHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: "Cairo",
            colorScheme:
                ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
            scaffoldBackgroundColor: Colors.white),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        onGenerateRoute: onGenerateRoutes,
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        home: SplashView());
  }
}
