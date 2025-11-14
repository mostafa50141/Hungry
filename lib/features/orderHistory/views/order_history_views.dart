import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/custom_Text.dart';
import 'package:hungry/shared/custom_btn.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          itemCount: 7,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/image 6.png', width: 110),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                              text: 'Hamburger',
                              weight: FontWeight.w600,
                              size: 16,
                            ),
                            Gap(2),
                            customText(text: 'Veggie Burger', size: 15),
                            Gap(2),
                            customText(text: 'Qte : X3', size: 15),
                            Gap(2),
                            customText(text: 'Price : 20\$', size: 15),
                          ],
                        ),
                      ],
                    ),

                    Gap(15),

                    CustomBtn(
                      text: 'Order Again',
                      height: 50,
                      width: double.infinity,
                      radius: 15,
                      color: Colors.grey,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
