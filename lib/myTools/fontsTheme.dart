import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/colors.dart';

class FontFamilies {
  final String? displayFont;
  final String? textFont;

  FontFamilies(this.displayFont, this.textFont);
}

FontFamilies fontfamilies = FontFamilies("SF Pro Display", "SF Pro Text");

TextTheme sfProTextTheme = TextTheme(
  displayMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: MyColors.secondary,
    fontFamily: fontfamilies.displayFont,
    height: 1.33,
  ),
  bodyMedium: TextStyle(
    fontFamily: fontfamilies.textFont,
    height: 1.25,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.4,
  ),
  titleLarge: TextStyle(
    fontFamily: fontfamilies.textFont,
    letterSpacing: -0.7,
    height: 1.2,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  labelLarge: TextStyle(
    fontFamily: fontfamilies.textFont,
    letterSpacing: -0.42,
    height: 1.28571,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: MyColors.textSecondary,
  ),
  labelMedium: TextStyle(
    fontFamily: fontfamilies.textFont,
    fontSize: 14,
    letterSpacing: -0.41,
    fontWeight: FontWeight.normal,
    color: MyColors.secondary,
    height: 1.28571,
  ),
  labelSmall: TextStyle(
    fontFamily: fontfamilies.textFont,
    fontSize: 14,
    letterSpacing: -0.41,
    fontWeight: FontWeight.normal,
    color: MyColors.textSecondary,
    height: 1.28571,
  ),
);