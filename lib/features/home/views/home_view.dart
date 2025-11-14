import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/home/widget/card_item.dart';
import 'package:hungry/features/home/widget/food_category.dart';
import 'package:hungry/features/home/widget/search_field.dart';
import 'package:hungry/features/home/widget/user_header.dart';
import 'package:hungry/features/product/views/product_details_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ['All', 'Combo', 'Sliders', 'Classic'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            //header+search
            SliverAppBar(
              floating: false,
              elevation: 0,
              scrolledUnderElevation: 0,
              pinned: true,
              backgroundColor: Colors.white,
              toolbarHeight: 160,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 38, right: 20, left: 20),
                child: Column(children: [UserHeader(), Gap(20), SearchField()]),
              ),
            ),

            //category
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: FoodCategory(
                  selectedIndex: selectedIndex,
                  category: category,
                ),
              ),
            ),

            //gridView
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 6,
                  (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) {
                            return ProductDetailsView();
                          },
                        ),
                      );
                    },
                    child: CardItem(
                      image: 'assets/image 6.png',
                      text: "Cheeseburger",
                      desc: "Wendy's Burger",
                      rate: ' 4.9',
                    ),
                  ),
                ),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
