import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'By logging, you agree to our ',
              style: TextStyles.font12Gray500Weight),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font12Gray500Weight.copyWith(color: Colors.black),
          ),
          TextSpan(text: ' and ', style: TextStyles.font12Gray500Weight),
          TextSpan(
              text: 'PrivacyPolicy.',
              style:
                  TextStyles.font12Gray500Weight.copyWith(color: Colors.black)),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
