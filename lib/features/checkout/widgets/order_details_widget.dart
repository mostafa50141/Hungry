import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/checkout/widgets/checkout_row.dart';
import 'package:hungry/shared/custom_Text.dart' show customText;

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required this.order,
    required this.taxes,
    required this.fees,
    required this.total,
  });

  final String order, taxes, fees, total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: Column(
        children: [
          CheckoutRow(title: 'Order', price: order),

          Gap(15),

          CheckoutRow(title: 'Taxes', price: taxes),

          Gap(15),

          CheckoutRow(title: 'Delivery fees', price: fees),

          Gap(10),

          Divider(thickness: 1),

          Gap(10),

          Row(
            children: [
              customText(text: 'Total:', size: 18, weight: FontWeight.bold),

              Spacer(),

              customText(text: '\$$total', size: 18, weight: FontWeight.bold),
            ],
          ),

          Gap(15),

          Row(
            children: [
              customText(
                text: 'Estimated delivery time:',
                size: 15,
                weight: FontWeight.bold,
              ),

              Spacer(),

              customText(
                text: '15 - 30 mins',
                size: 15,
                weight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
