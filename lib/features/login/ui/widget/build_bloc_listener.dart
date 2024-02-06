import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/helpers/extensions.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/features/login/logic/cubit/login_cubit.dart';
import 'package:myapp/features/login/logic/cubit/login_state.dart';

class BuildBlocListener extends StatelessWidget {
  const BuildBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
          }, success: (loginResponse) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Logged in Successfully"),
                backgroundColor: Colors.green,
              ),
            );
            context.pushNamed(Routes.home);
          }, error: (error) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
                backgroundColor: Colors.red,
              ),
            );
          });
        },
        child: const SizedBox.shrink());
  }
}
