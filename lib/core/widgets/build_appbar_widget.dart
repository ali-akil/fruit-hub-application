import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/core/widgets/notification_widget.dart';

AppBar appbar_widget(context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_new),
    ),
    actions: [notiefcationWidget()],
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyles.bold19,
    ),
  );
}
