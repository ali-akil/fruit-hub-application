import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friut_app/constans.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/utils/app_images.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/core/widgets/custom_button.dart';
import 'package:friut_app/core/widgets/custom_text_form_filed.dart';
import 'package:friut_app/core/widgets/custom_text_span.dart';
import 'package:friut_app/features/auth/presentation/login_cubit/login_cubit.dart';
import 'package:friut_app/features/auth/presentation/views/signup_view.dart';

import 'package:friut_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:friut_app/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:friut_app/generated/l10n.dart';

class Loginviewbody extends StatefulWidget {
  const Loginviewbody({super.key});

  @override
  State<Loginviewbody> createState() => _LoginviewbodyState();
}

class _LoginviewbodyState extends State<Loginviewbody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String password, email;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KhorizintalPadding),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
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
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(S.of(context).forgetPassword,
                    textAlign: TextAlign.left,
                    style: TextStyles.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor)),
              ]),
              SizedBox(
                height: 33,
              ),
              CustomButton(
                  text: S.of(context).login,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<LoginCubit>()
                          .LoginWithEmailAndPassword(email, password);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  }),
              SizedBox(
                height: 33,
              ),
              CustomTextSpan(
                partText1: S.of(context).dontHaveAccount,
                partText2: S.of(context).createAccount,
                colorPartText2: AppColors.primaryColor,
                onTapText2: () {
                  Navigator.pushNamed(context, SignupView.routeName);
                },
              ),
              SizedBox(
                height: 33,
              ),
              OrDivider(),
              SizedBox(
                height: 33,
              ),
              SocialLoginbutton(
                onpressed: () {
                  context.read<LoginCubit>().LoginWithGoogle();
                },
                image: Assets.imagesGoogleIcon,
                title: S.of(context).loginWithGoogle,
              ),
              SizedBox(
                height: 33,
              ),
              // SocialLoginbutton(
              //   onpressed: () {},
              //   image: Assets.imagesApplIcon,
              //   title: S.of(context).loginWithApple,
              // ),
              // SizedBox(
              //   height: 33,
              // ),
              // SocialLoginbutton(
              //   onpressed: () {
              //    context.read<LoginCubit>().LoginWithFacebook();
              //   },
              //   image: Assets.imagesFacebookIcon,
              //   title: S.of(context).loginWithFacebook,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
