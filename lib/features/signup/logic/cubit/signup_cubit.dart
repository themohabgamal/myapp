import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/signup/data/repos/sign_up_repo.dart';
import 'package:myapp/features/signup/logic/cubit/signup_state.dart';

import '../../data/models/sign_up_request_body.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo signUpRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  SignupCubit({required this.signUpRepo}) : super(const SignupState.initial());
  void emitSignupStates() async {
    emit(const SignupState.loading());
    final response = await signUpRepo.signUp(SignUpRequestBody(
        name: nameController.text,
        gender: 0,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        phone: phoneController.text));
    response.when(
        success: (signupResponse) => emit(SignupState.success(signupResponse)),
        error: (error) => emit(SignupState.error(error: error)));
  }
}
