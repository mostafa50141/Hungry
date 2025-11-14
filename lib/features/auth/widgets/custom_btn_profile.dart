import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:hungry/shared/custom_Text.dart';

class CustomBtnProfile extends StatelessWidget {
  const CustomBtnProfile({
    super.key,
    required this.color,
    this.borderColor,
    this.icon,
    required this.iconColor,
    required this.text,
    required this.textColor,
    this.onTap,
  });
  final Color color;
  final Color? borderColor;
  final IconData? icon;
  final Color iconColor;
  final String text;
  final Color textColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 170,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 3, color: borderColor ?? Colors.white),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customText(
              text: text,
              color: textColor,
              size: 18,
              weight: FontWeight.w500,
            ),
            Gap(10),
            Icon(icon ?? Icons.abc, color: iconColor),
          ],
        ),
      ),
    );
  }
}
