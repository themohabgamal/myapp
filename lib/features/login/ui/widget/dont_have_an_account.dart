import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyles.font13Gray400Weight.copyWith(color: Colors.black),
        ),
        TextButton(
            onPressed: () {},
            child: Text('Sign Up',
                style: TextStyles.font14Blue400Weight
                    .copyWith(fontWeight: FontWeight.bold))),
      ],
    );
  }
}
