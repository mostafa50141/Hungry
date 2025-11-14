import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/checkout/widgets/order_details_widget.dart';
import 'package:hungry/shared/custom_Text.dart';
import 'package:hungry/shared/custom_btn.dart';
import 'package:hungry/shared/total_price_btn.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String selectedMethods = 'Cash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(scrolledUnderElevation: 0, backgroundColor: Colors.white),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                text: 'Order summary',
                weight: FontWeight.bold,
                size: 22,
              ),

              Gap(15),

              OrderDetailsWidget(
                order: '16.0',
                taxes: '0.3',
                fees: '1.5',
                total: '18.11',
              ),

              Gap(40),

              customText(
                text: 'Payment methods',
                weight: FontWeight.bold,
                size: 22,
              ),

              Gap(10),

              ListTile(
                onTap: () => setState(() => selectedMethods = 'Cash'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                title: customText(
                  text: 'Cash on Delivery',
                  color: Colors.white,
                ),
                subtitle: customText(
                  text: '+20 ********58',
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),
                leading: Image.asset('assets/dollar.png'),
                tileColor: Color.fromARGB(255, 77, 64, 64),
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'Visa',
                  // ignore: deprecated_member_use
                  groupValue: selectedMethods,
                  // ignore: deprecated_member_use
                  onChanged: (v) => setState(() => selectedMethods = v!),
                ),
              ),

              Gap(20),

              ListTile(
                onTap: () => setState(() => selectedMethods = 'Visa'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                title: customText(text: 'Debit card', color: Colors.white),
                subtitle: customText(
                  text: '**** **** 2342',
                  color: Colors.white,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),
                leading: Image.asset('assets/visa.png'),
                tileColor: Colors.blueAccent,
                trailing: Radio<String>(
                  activeColor: Colors.white,
                  value: 'Visa',
                  groupValue: selectedMethods,
                  // ignore: deprecated_member_use
                  onChanged: (v) => setState(() => selectedMethods = v!),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (v) {},
                      checkColor: Colors.white,
                      activeColor: Colors.red,
                    ),
                    customText(
                      text: 'Save card details for future payments',
                      color: Colors.grey,
                      size: 15,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              Gap(200),
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        height: 100,
        width: double.infinity,
        padding: EdgeInsets.all(10),
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
        child: TotalPriceAndBtn(
          price: 18.19,
          textBtn: 'Pay Now',
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 220,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 10,
                            offset: Offset(0, 1),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(
                              CupertinoIcons.check_mark,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Gap(20),

                          customText(
                            text: 'Success !',
                            weight: FontWeight.bold,
                            size: 25,
                            color: AppColors.primaryColor,
                          ),

                          Gap(10),

                          customText(
                            text:
                                'Your payment was successful.\nA receipt for this purchase has\n   been sent to your email.',
                            color: Colors.grey.shade400,
                            weight: FontWeight.w400,
                          ),

                          Spacer(),

                          CustomBtn(
                            text: 'Go Back',
                            height: 50,
                            width: 190,
                            radius: 12,
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
