import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_Text.dart';

// ignore: must_be_immutable
class FoodCategory extends StatefulWidget {
  const FoodCategory({
    super.key,
    required this.selectedIndex,
    required this.category,
  });
  final int selectedIndex;
  final List category;

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.selectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.category.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 7),
              padding: EdgeInsets.symmetric(horizontal: 27, vertical: 12),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.primaryColor
                    : Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: customText(
                text: widget.category[index],
                weight: FontWeight.w500,
                color: selectedIndex == index
                    ? Colors.white
                    : AppColors.primaryColor,
              ),
            ),
          );
        }),
      ),
    );
  }
}
