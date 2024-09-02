import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'lite_commerce_colors.dart';

abstract class LiteCommerceTheme {
  static ThemeData dark = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.gruppo(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: LiteCommerceColors.textColor,
      ),
      bodyMedium: GoogleFonts.gruppo(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: LiteCommerceColors.textColor,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: LiteCommerceColors.textColor,
      ),
      displayLarge: GoogleFonts.buda(
        fontSize: 70,
        color: LiteCommerceColors.textColor,
      ),
      displayMedium: GoogleFonts.buda(
        fontSize: 50,
        color: LiteCommerceColors.textColor,
      ),
      displaySmall: GoogleFonts.buda(
        fontSize: 40,
        color: LiteCommerceColors.textColor,
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    iconTheme: const IconThemeData(color: LiteCommerceColors.textColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        textStyle: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: LiteCommerceColors.selectedColor,
      inactiveTrackColor: LiteCommerceColors.trackColor,
      thumbColor: LiteCommerceColors.selectedColor,
      trackHeight: 2,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: const IconThemeData(size: 40),
      unselectedIconTheme: const IconThemeData(size: 40),
      selectedItemColor: LiteCommerceColors.hintColor,
      unselectedItemColor: LiteCommerceColors.hintColor,
      selectedLabelStyle: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelStyle: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    ),
    scaffoldBackgroundColor: LiteCommerceColors.backgroundColor,
  );
}
