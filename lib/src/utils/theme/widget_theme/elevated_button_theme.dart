import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class KElevatedButtonTheme {
  KElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: kWhiteColor,
      backgroundColor: kSecondaryColor,
      side: const BorderSide(color: kSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: kButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: kSecondaryColor,
      backgroundColor: kWhiteColor,
      side: const BorderSide(color: kSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: kButtonHeight),
    ),
  );
}
