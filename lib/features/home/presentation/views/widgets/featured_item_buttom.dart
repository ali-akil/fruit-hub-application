import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';

class FeaturedItemButtom extends StatelessWidget {
  const FeaturedItemButtom({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text("تسوق الآن",
            style: TextStyles.bold13.copyWith(color: AppColors.primaryColor)),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        ));
  }
}
