import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/helpers/spacing.dart';
import 'package:myapp/core/widgets/general_blue_button.dart';
import 'package:myapp/features/signup/ui/widgets/already_have_account.dart';
import '../../../core/theming/styles.dart';
import '../../login/ui/widget/terms_and_conditions.dart';
import '../logic/cubit/signup_cubit.dart';
import 'widgets/sign_up_bloc_listener.dart';
import 'widgets/sign_up_text_fields.dart';

class SignupScreen extends StatelessWidget {
  final Function? toggle;
  const SignupScreen({this.toggle, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpacing(40),
              Text(
                "Create Account",
                style: TextStyles.font24Blue700Weight,
              ),
              verticalSpacing(8),
              Text(
                "Join us now and unlock the full potential of our app. We can't wait to have you as part of our community!",
                style: TextStyles.font14Gray400Weight,
              ),
              verticalSpacing(30),
              const SignUpTextFields(),
              verticalSpacing(30),
              GeneralBlueButton(
                  text: "Sign up",
                  onPressed: () {
                    validateThenSignup(context);
                  }),
              verticalSpacing(50),
              const TermsAndConditions(),
              verticalSpacing(20),
              const AlreadyHaveAnAccount(),
              const SignupBlocListener()
            ],
          ),
        ),
      )),
    );
  }

  void validateThenSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
