import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/extensions.dart';
import 'package:myapp/features/signup/logic/cubit/signup_cubit.dart';
import 'package:myapp/features/signup/logic/cubit/signup_state.dart';

import '../../../../core/routing/routes.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              });
        }, success: (signupResponse) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Account created successfully"),
            backgroundColor: Colors.green,
          ));
          context.pushNamed(Routes.home);
        }, error: (error) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Couldn't create account, Try again"),
          ));
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
