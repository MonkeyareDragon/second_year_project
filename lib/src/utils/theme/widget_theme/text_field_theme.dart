import 'package:flutter/material.dart';
import 'package:syp/src/constants/colors.dart';

class KTextFormFieldTheme {
  KTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          prefixIconColor: kSecondaryColor,
          floatingLabelStyle: const TextStyle(color: kSecondaryColor),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: kSecondaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          prefixIconColor: kPrimaryColor,
          floatingLabelStyle: const TextStyle(color: kPrimaryColor),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: kPrimaryColor),
          ));
}
