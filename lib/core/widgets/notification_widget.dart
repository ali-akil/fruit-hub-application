import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friut_app/core/utils/app_images.dart';

class notiefcationWidget extends StatelessWidget {
  const notiefcationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            ShapeDecoration(shape: OvalBorder(), color: Color(0xFFEEF8ED)),
        padding: EdgeInsets.all(12),
        child: SvgPicture.asset(Assets.imagesNotification));
  }
}
