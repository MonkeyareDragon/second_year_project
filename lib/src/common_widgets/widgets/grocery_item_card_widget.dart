import 'package:flutter/material.dart';

import '../../features/core/models/food_item.dart';
import '../core_widgets/app_text.dart';


class FoodItemCardWidget extends StatelessWidget {
  const FoodItemCardWidget({Key? key, required this.item, this.heroSuffix})
      : super(key: key);
  final FoodItem item;
  final String? heroSuffix;

  final double width = 174;
  final double height = 250;
  final Color borderColor = const Color(0xffE2E2E2);
  final double borderRadius = 18;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Hero(
                  // ignore: prefer_interpolation_to_compose_strings
                  tag: "GroceryItem1:" + item.name + "-" + (heroSuffix ?? ""),
                  child: imageWidget(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppText(
              text: item.name,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            AppText(
              text: item.description,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF7C7C7C),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                AppText(
                  text: "${item.calorie} kcal",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                const Spacer(),
                // addWidget()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Image.asset(item.imagePath);
  }

//   Widget addWidget() {
//     return Container(
//       height: 45,
//       width: 45,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(17),
//           color: AppColors.primaryColor),
//       child: Center(
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//           size: 25,
//         ),
//       ),
//     );
//   }
}
