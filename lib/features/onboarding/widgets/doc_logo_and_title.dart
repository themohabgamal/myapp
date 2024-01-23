import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/theming/styles.dart';

class DocLogoAndTitle extends StatelessWidget {
  const DocLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        "assets/images/logo.png",
        width: 38.w,
      ),
      SizedBox(width: 10.w),
      Text(
        "ChefaaHub",
        style: TextStyles.font24Black700Weight,
      ),
    ]);
  }
}
