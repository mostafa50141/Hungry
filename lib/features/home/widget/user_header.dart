import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/splash/widget/hungry_txt.dart';
import 'package:hungry/shared/custom_Text.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            hungryTxt(color: AppColors.primaryColor, height: 35),
            Gap(5),
            customText(
              text: 'Hello, Mostafa Abdelaziz',
              weight: FontWeight.w500,
              color: Colors.grey.shade600,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/myPhoto.jpg'),
        ),
      ],
    );
  }
}
