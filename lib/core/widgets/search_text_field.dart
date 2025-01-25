import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friut_app/core/utils/app_images.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/generated/l10n.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: SizedBox(
              width: 20,
              child: Center(child: SvgPicture.asset(Assets.imagesSearchIcon))),
          filled: true,
          suffixIcon: SizedBox(
              width: 20,
              child: Center(child: SvgPicture.asset(Assets.imagesFilter))),
          hintText: S.of(context).searchAbout,
          hintStyle:
              TextStyles.regular13.copyWith(color: const Color(0xFF949D9E)),
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.white, width: .1));
  }
}
