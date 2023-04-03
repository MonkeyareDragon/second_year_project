import 'package:flutter/material.dart';
import 'package:syp/src/utils/theme/widget_theme/text_theme.dart';

class KAppTheme {

  KAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: KTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: KTextTheme.darkTextTheme,
  );
}