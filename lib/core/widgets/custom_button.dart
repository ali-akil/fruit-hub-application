import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: TextButton(
            onPressed: onPressed,
            child: Text(text,
                style: TextStyles.bold16.copyWith(color: Colors.white)),
            style: TextButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            )));
  }
}
