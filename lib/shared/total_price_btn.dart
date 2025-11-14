import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_Text.dart';
import 'package:hungry/shared/custom_btn.dart';

class TotalPriceAndBtn extends StatelessWidget {
  const TotalPriceAndBtn({
    super.key,
    required this.price,
    required this.textBtn,
    this.onTap,
  });
  final double price;
  final String textBtn;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(text: 'Total', size: 20, weight: FontWeight.bold),
            Gap(5),
            Row(
              children: [
                customText(
                  text: '\$',
                  size: 30,
                  color: AppColors.primaryColor,
                  weight: FontWeight.bold,
                ),
                customText(
                  text: price.toString(),
                  size: 30,
                  color: Colors.black,
                  weight: FontWeight.w600,
                ),
              ],
            ),
          ],
        ),

        CustomBtn(
          text: textBtn,
          height: 60,
          width: 170,
          radius: 18,
          onTap: onTap,
        ),
      ],
    );
  }
}
