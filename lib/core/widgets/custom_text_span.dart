import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';

class CustomTextSpan extends StatelessWidget {
  const CustomTextSpan(
      {super.key,
      required this.partText1,
      required this.partText2,
      required this.colorPartText2,
      required this.onTapText2});
  final VoidCallback onTapText2;
  final String partText1;
  final String partText2;
  final Color colorPartText2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: partText1,
        style: TextStyles.semiBold13.copyWith(color: Color(0xFF949D9E)),
      ),
      TextSpan(
        text: " ",
        style: TextStyles.semiBold13,
      ),
      TextSpan(
          text: partText2,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              onTapText2();
            },
          style: TextStyles.semiBold13.copyWith(color: colorPartText2))
    ]));
  }
}
