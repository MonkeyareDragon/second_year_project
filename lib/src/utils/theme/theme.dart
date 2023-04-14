import 'package:flutter/material.dart';
import 'package:syp/src/utils/theme/widget_theme/colors.dart';
import 'package:syp/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:syp/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:syp/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:syp/src/utils/theme/widget_theme/text_theme.dart';

class KAppTheme {

  KAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: KTextTheme.lightTextTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutLineButtonTheme,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),

  );

  // static ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark,
  //   textTheme: KTextTheme.darkTextTheme,
  //   outlinedButtonTheme: KOutlinedButtonTheme.darkOutLineButtonTheme,
  //   elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
  //   inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
  //   visualDensity: VisualDensity.adaptivePlatformDensity,
  //   colorScheme:
  //     ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
  // );
}
