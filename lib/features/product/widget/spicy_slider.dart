import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_Text.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/imageProduct.png', height: 270),

        Spacer(),

        Column(
          children: [
            customText(
              text:
                  'Customize Your Burger\nto Your Tastes.\nUltimate Experience.',
              size: 15,
              weight: FontWeight.w800,
            ),

            Slider(
              min: 0,
              max: 1,
              value: value,
              activeColor: AppColors.primaryColor,
              inactiveColor: Colors.grey.shade300,
              onChanged: onChanged,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customText(text: '🥶'),
                Gap(100),
                customText(text: '🌶'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
