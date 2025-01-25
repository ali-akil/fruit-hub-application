import 'package:flutter/material.dart';
import 'package:friut_app/core/helper_function/on_generate_routes.dart';

import 'package:friut_app/core/services/get_it_services.dart';
import 'package:friut_app/core/services/shared_prefrence_singlton.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/generated/l10n.dart';
import 'features/splash/presentaion/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:friut_app/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*************  ✨ Codeium Command ⭐  *************/
/// The main entry point of the application.
///
/// This function ensures that Flutter widget binding is initialized before
/// performing any asynchronous operations. It initializes Firebase with
/// platform-specific options, sets the FirebaseAuth language code to English,
/// initializes shared preferences, sets up dependency injection with GetIt,
/// and runs the FriutHub application.

/******  7ec7c10f-e706-4a7a-b3f4-2e94ef7857a3  *******/ void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
