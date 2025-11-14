import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_Text.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    required this.rate,
  });
  final String image;
  final String text;
  final String desc;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(image, width: 120, height: 120)),
            Gap(5),
            customText(
              text: text,
              weight: FontWeight.w600,
              size: 16,
              color: AppColors.primaryColor,
            ),

            customText(text: desc, size: 16, color: AppColors.primaryColor),

            Gap(7),

            Row(
              children: [
                customText(text: '⭐ $rate'),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    CupertinoIcons.heart_fill,
                    size: 20,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
