import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_Text.dart';
import 'package:hungry/shared/custom_btn.dart';

class CardItemCart extends StatelessWidget {
  const CardItemCart({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    this.onRemove,
    this.onAdd,
    this.onMin,
    required this.num,
  });
  final String image;
  final String title;
  final String desc;
  final Function()? onRemove;
  final Function()? onAdd;
  final Function()? onMin;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image + texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, width: 110),
                Gap(5),
                customText(text: title, weight: FontWeight.w600),
                customText(text: desc, weight: FontWeight.w400),
              ],
            ),

            //removeBtn + Miu + pul
            Column(
              children: [
                //minus + num + plus
                Row(
                  children: [
                    GestureDetector(
                      onTap: onAdd,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(CupertinoIcons.plus, color: Colors.white),
                        ),
                      ),
                    ),

                    Gap(44),

                    customText(
                      text: num.toString(),
                      size: 22,
                      weight: FontWeight.w600,
                      color: Colors.black,
                    ),

                    Gap(44),

                    GestureDetector(
                      onTap: onMin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Icon(
                            CupertinoIcons.minus,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Gap(40),

                CustomBtn(
                  text: 'Remove',
                  height: 38,
                  width: 165,
                  radius: 20,
                  onTap: onRemove,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
