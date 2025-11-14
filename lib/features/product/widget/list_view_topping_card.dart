import 'package:flutter/cupertino.dart';
import 'package:hungry/features/product/widget/topping_card.dart';

class ListViewToppingCard extends StatelessWidget {
  const ListViewToppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          ToppingCard(imagePath: 'assets/Tomato.png', name: 'Tomato'),

          ToppingCard(imagePath: 'assets/Tomato.png', name: 'Tomato'),

          ToppingCard(imagePath: 'assets/Tomato.png', name: 'Tomato'),

          ToppingCard(imagePath: 'assets/Tomato.png', name: 'Tomato'),

          ToppingCard(imagePath: 'assets/Tomato.png', name: 'Tomato'),
        ],
      ),
    );
  }
}
