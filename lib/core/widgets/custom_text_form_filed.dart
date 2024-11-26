import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/generated/l10n.dart';
import 'package:provider/provider.dart';

class CustomTexFormtField extends StatelessWidget {
  const CustomTexFormtField({
    this.onSaved,
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ControllerTextField>(
      create: (context) => ControllerTextField(),
      child: Consumer<ControllerTextField>(
        builder: (context, value, child) => TextFormField(
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).theFieldIsRequired;
            }
            return null;
          },
          obscureText: textInputType == TextInputType.visiblePassword
              ? value.isobscureText
              : !value.isobscureText,
          keyboardType: textInputType,
          decoration: InputDecoration(
              filled: true,
              suffixIcon: suffixIcon == null
                  ? null
                  : IconButton(
                      onPressed: () {
                        value.changeObscureText();
                      },
                      icon: Icon(
                        value.isobscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Color(0xFFC9CECF),
                      ),
                    ),
              hintText: hintText,
              hintStyle:
                  TextStyles.bold13.copyWith(color: const Color(0xFF949D9E)),
              fillColor: const Color(0xFFf9FAFA),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder()),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Color(0xFFE6E9E9), width: .1));
  }
}

class ControllerTextField extends ChangeNotifier {
  bool isobscureText = true;
  void changeObscureText() {
    isobscureText = !isobscureText;
    notifyListeners();
  }
}
