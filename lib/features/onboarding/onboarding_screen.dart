import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/theming/styles.dart';

import 'widgets/doc_logo_and_title.dart';
import 'widgets/doctor_with_text.dart';
import 'widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const DocLogoAndTitle(),
            SizedBox(
              height: 30.h,
            ),
            const DoctorWithText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Transforming Healthcare, Simplifying Appointments with ChefaaHub - Your Modern Health Companion",
                    style: TextStyles.font13Gray400Weight,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const GetStartedButton()
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
