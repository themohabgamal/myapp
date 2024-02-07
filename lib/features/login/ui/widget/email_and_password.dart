import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/app_regex.dart';
import 'package:myapp/features/login/logic/cubit/login_cubit.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/general_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            GeneralTextFormField(
              hintText: "Email",
              controller: emailController,
              validation: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(emailController.text)) {
                  return "Please enter a valid email";
                }
              },
            ),
            verticalSpacing(15),
            GeneralTextFormField(
              hintText: "Password",
              isObsecure: true,
              controller: passwordController,
              validation: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid password";
                } else if (!AppRegex.hasDigit(passwordController.text)) {
                  return "Add at least one digit";
                } else if (!AppRegex.hasUppercase(passwordController.text)) {
                  return "Add at least one uppercase";
                } else if (!AppRegex.hasLowercase(passwordController.text)) {
                  return "Add at least one lowercase";
                } else if (!AppRegex.hasMinimumLength(
                    passwordController.text, 8)) {
                  return "Add at least 8 characters";
                }
              },
            ),
            verticalSpacing(10),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'Forgot Password?',
                style: TextStyles.font14Blue400Weight,
              ),
            ),
          ],
        ));
  }
}
