import 'package:flutter/cupertino.dart';

import '../../../common_widgets/core_widgets/app_text.dart';


class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppText(
        text: "No Progress is made.",
        fontWeight: FontWeight.w600,
        color: Color(0xFF7C7C7C),
      ),
    );
  }
}
