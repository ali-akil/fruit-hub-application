import 'package:flutter/material.dart';
import 'package:friut_app/core/helper_function/get_user.dart';
import 'package:friut_app/core/utils/app_images.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileImage),
      title: Text(
        "صباح الخير",
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(color: Color(0XFF949D9E)),
      ),
      subtitle: Text(
        getUser().name,
        textAlign: TextAlign.right,
        style: TextStyles.bold16,
      ),
    );
  }
}
