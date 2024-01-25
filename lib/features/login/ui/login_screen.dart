import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/widgets/general_blue_button.dart';
import 'package:myapp/core/widgets/general_text_form_field.dart';

import '../../../core/theming/styles.dart';
import 'widget/dont_have_an_account.dart';
import 'widget/terms_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpacing(80),
              Text(
                "Welcome Back!",
                style: TextStyles.font24Blue700Weight,
              ),
              verticalSpacing(8),
              Text(
                "We're thrilled to have you return. We're eager to catch up on your latest updates since your last visit",
                style: TextStyles.font14Gray400Weight,
              ),
              verticalSpacing(30),
              const GeneralTextFormField(hintText: "Email"),
              verticalSpacing(15),
              const GeneralTextFormField(
                hintText: "Password",
                isObsecure: true,
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.font14Blue400Weight,
                ),
              ),
              verticalSpacing(30),
              GeneralBlueButton(
                  text: "Login",
                  onPressed: () {
                    //TODO: Login logic
                  }),
              verticalSpacing(50),
              const TermsAndConditions(),
              verticalSpacing(20),
              const DontHaveAnAccount()
            ],
          ),
        ),
      )),
    );
  }
}
