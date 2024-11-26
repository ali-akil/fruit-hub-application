import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friut_app/constans.dart';
import 'package:friut_app/core/services/shared_prefrence_singlton.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/features/auth/presentation/views/login_view.dart';
import 'package:friut_app/generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subTitle,
      required this.title,
      this.isSkipVisible});
  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  final isSkipVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
              )),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isSkipVisible,
                child: GestureDetector(
                  onTap: () {
                    Prefs.setBool(KisOnBordingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        S.of(context).skip,
                        style: TextStyles.regular13
                            .copyWith(color: Color(0xFF949D9E)),
                      )),
                ),
              ), // تخطو
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style:
                TextStyles.semiBold13.copyWith(color: const Color(0XFF4E5456)),
          ),
        ),
      ],
    );
  }
}
