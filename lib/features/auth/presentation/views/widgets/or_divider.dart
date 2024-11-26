import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0XFFDDDFDF),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Text(
            S.of(context).or,
            style: TextStyles.semiBold16,
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0XFFDDDFDF),
          ),
        )
      ],
    );
  }
}
