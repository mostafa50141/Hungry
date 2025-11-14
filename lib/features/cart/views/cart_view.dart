import 'package:flutter/material.dart';
import 'package:hungry/features/cart/widgets/card_item_cart.dart';
import 'package:hungry/features/checkout/views/checkout_view.dart';
import 'package:hungry/shared/total_price_btn.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final int itemCount = 3;
  late List<int> quantities;

  @override
  void initState() {
    quantities = List.generate(itemCount, (_) => 1);
    super.initState();
  }

  void onAdd(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void onMin(int index) {
    setState(() {
      if (quantities[index] > 1) {
        quantities[index]--;
      }
    });
  }

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
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 10, bottom: 120),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CardItemCart(
                image: 'assets/image 6.png',
                title: 'Hamburger',
                desc: 'Veggie Burger',
                num: quantities[index],
                onRemove: () {},
                onAdd: () => onAdd(index),
                onMin: () => onMin(index),
              ),
            );
          },
        ),
      ),

      bottomSheet: Container(
        height: 100,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: const Offset(0, 0),
              color: Colors.grey,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: TotalPriceAndBtn(
          price: 99.19,
          textBtn: 'Checkout',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) {
                  return CheckoutView();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
