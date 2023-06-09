import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:syp/src/features/core/screens/product_details/product_details_screen.dart';

import '../../../common_widgets/core_widgets/app_text.dart';
import '../../../common_widgets/widgets/grocery_item_card_widget.dart';
import '../models/food_item.dart';
import 'filter_screen.dart';

class CategoryItemsScreen extends StatelessWidget {
  const CategoryItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.only(left: 25),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FilterScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(right: 25),
              child: const Icon(
                Icons.sort,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: const AppText(
            text: "Beverages",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 0.0,
          // I only need two card horizontally
          children: beverages.asMap().entries.map<Widget>((e) {
            FoodItem groceryItem = e.value;
            return GestureDetector(
              onTap: () {
                onItemClicked(context, groceryItem);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                child: FoodItemCardWidget(
                  item: groceryItem,
                  heroSuffix: "explore_screen",
                ),
              ),
            );
          }).toList(), // add some space
        ),
      ),
    );
  }

  void onItemClicked(BuildContext context, FoodItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItem,
          heroSuffix: "explore_screen",
        ),
      ),
    );
  }
}
