import 'package:flutter/material.dart';

import '../../utils/theme/widget_theme/colors.dart';


class ItemCounterWidget extends StatefulWidget {
  final Function? onAmountChanged;

  const ItemCounterWidget({Key? key, this.onAmountChanged}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ItemCounterWidgetState createState() => _ItemCounterWidgetState();
}

class _ItemCounterWidgetState extends State<ItemCounterWidget> {
  int kcal = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconWidget(Icons.remove,
            iconColor: AppColors.darkGrey, onPressed: decrementAmount),
        const SizedBox(width: 18),
        SizedBox(
            width: 30,
            child: Center(
                child: getText(
                    text: kcal.toString(), fontSize: 18, isBold: true))),
        const SizedBox(width: 18),
        iconWidget(Icons.add,
            iconColor: AppColors.primaryColor, onPressed: incrementAmount)
      ],
    );
  }

  void incrementAmount() {
    setState(() {
      kcal = kcal + 1;
      updateParent();
    });
  }

  void decrementAmount() {
    if (kcal <= 0) return;
    setState(() {
      kcal = kcal - 1;
      updateParent();
    });
  }

  void updateParent() {
    if (widget.onAmountChanged != null) {
      widget.onAmountChanged!(kcal);
    }
  }

  Widget iconWidget(IconData iconData, {Color? iconColor, onPressed}) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) {
          onPressed();
        }
      },
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(
            color: const Color(0xffE2E2E2),
          ),
        ),
        child: Center(
          child: Icon(
            iconData,
            color: iconColor ?? Colors.black,
            size: 25,
          ),
        ),
      ),
    );
  }

  Widget getText({
    required String text,
    required double fontSize,
    bool isBold = false,
    color = Colors.black,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
  }
}
