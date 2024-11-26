import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friut_app/constans.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/widgets/custom_button.dart';
import 'package:friut_app/core/widgets/custom_snakbar.dart';
import 'package:friut_app/core/widgets/custom_text_form_filed.dart';
import 'package:friut_app/core/widgets/custom_text_span.dart';
import 'package:friut_app/features/auth/presentation/signup_cubit/signup_cubit.dart';

import 'package:friut_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:friut_app/generated/l10n.dart';
import 'package:provider/provider.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  late bool isTermsAccepted = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, userName, password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KhorizintalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTexFormtField(
                onSaved: (value) {
                  userName = value!;
                },
                hintText: S.of(context).fullName,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTexFormtField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).emailAddress,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTexFormtField(
                onSaved: (value) {
                  password = value!;
                },
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                ),
                hintText: S.of(context).password,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 16,
              ),
              TermsAndConditions(
                onChange: (value) {
                  isTermsAccepted = value;
                },
              ),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                  text: S.of(context).createNewAccountant,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      if (isTermsAccepted) {
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                                email, password, userName);
                      } else {
                        CustomSnakbar(
                            color: Colors.red,
                            context: context,
                            icon: Icons.error,
                            message: S
                                .of(context)
                                .doYouHaveAcceptForConditionAndterms);
                      }
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  }),
              SizedBox(
                height: 16,
              ),
              CustomTextSpan(
                  partText1: S.of(context).youAlreadyHaveAnAccount,
                  partText2: S.of(context).login,
                  colorPartText2: AppColors.primaryColor,
                  onTapText2: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }
}
