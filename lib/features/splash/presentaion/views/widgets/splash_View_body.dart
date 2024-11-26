import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friut_app/constans.dart';
import 'package:friut_app/core/services/shared_prefrence_singlton.dart';
import 'package:friut_app/core/utils/app_images.dart';
import 'package:friut_app/features/auth/presentation/views/login_view.dart';
import 'package:friut_app/features/home/presentation/views/home_view.dart';
import 'package:friut_app/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState

    excuteNaviagtion();
    super.initState();
  }

  @override

  /// This method returns a [//Column] that displays the following widgets in order:
  ///
  /// * A [//Row] with a single [//SvgPicture] widget with the plant icon.
  /// The [//Column]'s `mainAxisAlignment` property is set to [//MainAxisAlignment.spaceBetween].
  /// * A [//SvgPicture] widget with the logo icon.
  /// * A [//SvgPicture] widget with the splash bottom icon.
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
            mainAxisAlignment:
                Localizations.localeOf(context).languageCode == 'ar'
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
            children: [SvgPicture.asset(Assets.imagesPlant)]),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill)
      ],
    );
  }

  /// Executes a navigation after 3 seconds to the [//OnBoardingView].
  /// This method is called from the [//initState] method
  void excuteNaviagtion() {
    bool isOnbordingViewSeen = Prefs.getBool(KisOnBordingViewSeen);
    bool isLoginTheApp = Prefs.getBool(KisLogintheapp);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnbordingViewSeen) {
        Navigator.of(context).pushReplacementNamed(LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }

      if (isLoginTheApp) {
        Navigator.of(context).pushReplacementNamed(HomeView.routeName);
      }
    });
  }
}
