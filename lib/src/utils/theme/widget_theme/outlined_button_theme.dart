import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class KOutlinedButtonTheme {
  KOutlinedButtonTheme._();

  static final lightOutLineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: kSecondaryColor,
      side: const BorderSide(color: kSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: kButtonHeight),
    ),
  );

  static final darkOutLineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    shape: const RoundedRectangleBorder(),
    foregroundColor: kWhiteColor,
    side: const BorderSide(color: kWhiteColor),
    padding: const EdgeInsets.symmetric(vertical: kButtonHeight),
  ));
}
