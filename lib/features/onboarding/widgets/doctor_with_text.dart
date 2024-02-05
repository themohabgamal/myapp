import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class DoctorWithText extends StatelessWidget {
  const DoctorWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Opacity(
          opacity: 0.2,
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.1, 0.8],
            ),
          ),
          child: Image.asset(
            'assets/images/onboarding_doctor.png',
          ),
        ),
        Text("Your Health is \n Our Priority",
            textAlign: TextAlign.center,
            style: TextStyles.font32Blue700Weight.copyWith(height: 1.4)),
      ],
    );
  }
}
