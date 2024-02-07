import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: TextStyles.font13Gray400Weight.copyWith(color: Colors.black),
        ),
        TextButton(
            onPressed: () => context.pushNamedAndRemoveUntil(Routes.login),
            child: Text('Login',
                style: TextStyles.font14Blue400Weight
                    .copyWith(fontWeight: FontWeight.bold))),
      ],
    );
  }
}
