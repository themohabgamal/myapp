import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/theming/colors.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font24Blue700Weight = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font14Blue400Weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font13Gray400Weight = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font12Gray500Weight = TextStyle(
      fontSize: 12.sp,
      color: ColorsManager.gray,
      fontWeight: FontWeight.w500,
      height: 1.4);
  static TextStyle font14Gray400Weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font14lighterGray500Weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.lighterGray,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}
