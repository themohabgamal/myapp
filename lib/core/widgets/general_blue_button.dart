import 'package:flutter/material.dart';
import 'package:myapp/core/theming/colors.dart';
import 'package:myapp/core/theming/styles.dart';

class GeneralBlueButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const GeneralBlueButton(
      {required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: ColorsManager.mainBlue,
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        text,
        style: TextStyles.font16White600Weight,
      ),
    );
  }
}
