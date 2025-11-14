import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_Text.dart';

// ignore: camel_case_types
class customAuthBtn extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  const customAuthBtn({
    super.key,
    required this.text,
    this.onTap,
    this.color,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: borderColor ?? Colors.white),
        ),

        child: Center(
          child: customText(
            text: text,
            color: textColor ?? AppColors.primaryColor,
            size: 18,
            weight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
