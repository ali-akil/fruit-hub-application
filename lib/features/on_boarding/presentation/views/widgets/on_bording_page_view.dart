import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/utils/app_images.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/features/on_boarding/presentation/views/widgets/pag_view_item.dart';
import 'package:friut_app/generated/l10n.dart';

class OnBordingPageView extends StatelessWidget {
  OnBordingPageView({super.key, required this.pageController});
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isSkipVisible: true,
            image: Assets.imagesPageViewItem1Image,
            backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
            subTitle: S.of(context).subtitleOnborder1,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).titleOnborder1,
                  style: TextStyles.bold23,
                ),
                Text(
                  "HUB",
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondryColor),
                ),
                Text("Fruit",
                    style: TextStyles.bold23
                        .copyWith(color: AppColors.primaryColor)),
              ],
            )),
        PageViewItem(
            isSkipVisible: false,
            image: Assets.imagesPageViewItem2Image,
            backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
            subTitle: S.of(context).subtitleOnborder2,
            title: Text(S.of(context).titleOnborder2,
                textAlign: TextAlign.center, style: TextStyles.bold23)),
      ],
    );
  }
}
