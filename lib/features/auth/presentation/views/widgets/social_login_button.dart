import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';

class SocialLoginbutton extends StatelessWidget {
  const SocialLoginbutton(
      {super.key,
      required this.image,
      required this.title,
      required this.onpressed});
  final String image;
  final String title;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Color(0xFFDCDEDE), width: 1.0)),
          ),
          onPressed: onpressed,
          child: ListTile(
            visualDensity:
                VisualDensity(vertical: VisualDensity.minimumDensity),
            title: Text(
              title,
              style: TextStyles.semiBold16,
            ),
            leading: SvgPicture.asset(image.toString()),
          ),
        ));
  }
}
