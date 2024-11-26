import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({super.key, required this.ischeck, required this.ischecked});
  final ValueChanged<bool> ischecked;
  final bool ischeck;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ischecked(!ischeck);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(microseconds: 100),
        decoration: ShapeDecoration(
            color: ischeck ? AppColors.primaryColor : Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.5,
                    color: ischeck ? Colors.transparent : Color(0XFFDCDEDE)),
                borderRadius: BorderRadius.circular(8))),
        child: ischeck
            ? Padding(
                padding: const EdgeInsets.all(2.0),
                child: SvgPicture.asset(Assets.imagesCheck),
              )
            : SizedBox(),
      ),
    );
  }
}
