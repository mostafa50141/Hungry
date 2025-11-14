import 'package:flutter/material.dart';
import 'package:hungry/shared/custom_Text.dart';

class CheckoutRow extends StatelessWidget {
  const CheckoutRow({
    super.key,
    required this.title,
    required this.price,
    this.weight,
  });
  final String title;
  final String price;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        customText(
          text: title,
          size: 18,
          color: Colors.grey,
          weight: weight ?? FontWeight.w400,
        ),

        Spacer(),

        customText(
          text: '\$$price',
          size: 18,
          color: Colors.grey,
          weight: weight ?? FontWeight.w400,
        ),
      ],
    );
  }
}
