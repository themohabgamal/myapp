import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/extensions.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/core/theming/colors.dart';
import 'package:myapp/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(Routes.login);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: ColorsManager.mainBlue,
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16White600Weight,
      ),
    );
  }
}
