import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:friut_app/constans.dart';
import 'package:friut_app/core/services/shared_prefrence_singlton.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/widgets/custom_button.dart';
import 'package:friut_app/features/auth/presentation/views/login_view.dart';
import 'package:friut_app/features/on_boarding/presentation/views/widgets/on_bording_page_view.dart';
import 'package:friut_app/generated/l10n.dart';

class OnBordinViewBody extends StatefulWidget {
  const OnBordinViewBody({super.key});

  @override
  State<OnBordinViewBody> createState() => _OnBordinViewBodyState();
}

class _OnBordinViewBodyState extends State<OnBordinViewBody> {
  late PageController pageController;
  var currenytPage = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      currenytPage = pageController.page!.round();
      setState(() {});
    });
    super.initState(); // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBordingPageView(pageController: this.pageController),
        ),
        SizedBox(
          height: 29,
        ),
        DotsIndicator(
          decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currenytPage == 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.5)),
          dotsCount: 2,
        ),
        SizedBox(
          height: 25,
        ),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currenytPage == 1 ? true : false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KhorizintalPadding),
            child: CustomButton(
                text: S.of(context).textButtonOnBorder2,
                onPressed: () {
                  Prefs.setBool(KisOnBordingViewSeen, true);

                  Navigator.of(context)
                      .pushReplacementNamed(LoginView.routeName);
                }),
          ),
        ),
        SizedBox(
          height: 34,
        )
      ],
    );
  }
}
