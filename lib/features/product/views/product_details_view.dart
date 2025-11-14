import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/product/widget/list_view_topping_card.dart';
import 'package:hungry/features/product/widget/spicy_slider.dart';
import 'package:hungry/shared/custom_Text.dart';
import 'package:hungry/shared/total_price_btn.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, scrolledUnderElevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpicySlider(
                value: value,
                onChanged: (v) => setState(() => value = v),
              ),

              Gap(30),

              customText(text: 'Toppings', size: 20, weight: FontWeight.bold),

              ListViewToppingCard(),

              Gap(15),

              customText(
                text: 'Side options',
                size: 20,
                weight: FontWeight.bold,
              ),

              ListViewToppingCard(),

              Gap(120),
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        height: 120,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: TotalPriceAndBtn(price: 18.9, textBtn: 'Add To Cart'),
        ),
      ),
    );
  }
}
