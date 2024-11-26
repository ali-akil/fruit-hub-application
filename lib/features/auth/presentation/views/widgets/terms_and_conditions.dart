import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/widgets/custom_text_span.dart';
import 'package:friut_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:friut_app/generated/l10n.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChange});

  final ValueChanged<bool> onChange;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: Offset(2, 0),
        child: Row(children: [
          CustomCheckBox(
            ischecked: (value) {
              isTermsAccepted = value;
              widget.onChange(value);
              setState(() {});
            },
            ischeck: isTermsAccepted,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 11,
            child: CustomTextSpan(
              onTapText2: () {},
              partText1: S.of(context).createAccount,
              partText2: S.of(context).ourTermsAndConditions,
              colorPartText2: AppColors.lightPrimaryColor,
            ),
          )
        ]));
  }
}
