import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/app_regex.dart';
import 'package:myapp/features/signup/logic/cubit/signup_cubit.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/general_text_form_field.dart';

class SignUpTextFields extends StatefulWidget {
  const SignUpTextFields({super.key});

  @override
  State<SignUpTextFields> createState() => _SignUpTextFieldsState();
}

class _SignUpTextFieldsState extends State<SignUpTextFields> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController phoneController;
  late TextEditingController nameController;
  @override
  void initState() {
    super.initState();
    emailController = context.read<SignupCubit>().emailController;
    passwordController = context.read<SignupCubit>().passwordController;
    confirmPasswordController =
        context.read<SignupCubit>().confirmPasswordController;
    phoneController = context.read<SignupCubit>().phoneController;
    nameController = context.read<SignupCubit>().nameController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<SignupCubit>().formKey,
        child: Column(
          children: [
            GeneralTextFormField(
              hintText: "Name",
              controller: nameController,
              validation: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid Name";
                }
              },
            ),
            verticalSpacing(15),
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
            verticalSpacing(15),
            GeneralTextFormField(
              hintText: "Confirm Password",
              isObsecure: true,
              controller: confirmPasswordController,
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
            verticalSpacing(15),
            GeneralTextFormField(
              hintText: "Phone",
              controller: phoneController,
              validation: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(emailController.text)) {
                  return "Please enter a valid Phone Number";
                } else if (!AppRegex.isValidPhone(phoneController.text)) {
                  return "Badly Formatted Phone Number";
                }
              },
            ),
          ],
        ));
  }
}
