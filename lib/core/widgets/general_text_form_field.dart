// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:myapp/core/theming/colors.dart';
import 'package:myapp/core/theming/styles.dart';

class GeneralTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObsecure;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextEditingController? controller;
  final Function(String?) validation;
  const GeneralTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.isObsecure,
    this.enabledBorder,
    this.focusedBorder,
    this.controller,
    required this.validation,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: (value) {
          return validation(value);
        },
        obscureText: isObsecure ?? false,
        decoration: InputDecoration(
          isDense: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    const BorderSide(color: ColorsManager.mainBlue, width: 1.3),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                    color: ColorsManager.lightGray, width: 1.3),
              ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red, width: 1.3),
          ),
          hintText: hintText,
          hintStyle: TextStyles.font14lighterGray500Weight,
          fillColor: ColorsManager.morelighterGray,
          filled: true,
          suffixIcon: suffixIcon,
        ));
  }
}
