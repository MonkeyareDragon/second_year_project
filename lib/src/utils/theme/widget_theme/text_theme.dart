import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/colors.dart';

class KTextTheme {
  KTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: kDarkColor),
      displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: kDarkColor),
      displaySmall: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: kDarkColor),
      headlineMedium: GoogleFonts.montserrat(fontSize: 16.0, fontWeight: FontWeight.w600, color: kDarkColor),
      titleLarge: GoogleFonts.montserrat(fontSize: 14.0, fontWeight: FontWeight.w600, color: kDarkColor),
      bodyLarge: GoogleFonts.montserrat(fontSize: 14.0, fontWeight: FontWeight.normal, color: kDarkColor),
      bodyMedium: GoogleFonts.montserrat(fontSize: 14.0, fontWeight: FontWeight.normal, color: kDarkColor),
    );
  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: kWhiteColor),
      displayMedium: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: kWhiteColor),
      displaySmall: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: kWhiteColor),
      headlineMedium: GoogleFonts.montserrat(fontSize: 16.0, fontWeight: FontWeight.w600, color: kWhiteColor),
      titleLarge: GoogleFonts.montserrat(fontSize: 14.0, fontWeight: FontWeight.w600, color: kWhiteColor),
      bodyLarge: GoogleFonts.montserrat(fontSize: 14.0, fontWeight: FontWeight.normal, color: kWhiteColor),
      bodyMedium: GoogleFonts.montserrat(fontSize: 14.0, fontWeight: FontWeight.normal, color: kWhiteColor),
    );
}