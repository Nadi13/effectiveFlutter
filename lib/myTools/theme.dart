import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/colors.dart';
import 'package:fall_2023_project/myTools/fontsTheme.dart';

final themeData = ThemeData(
  textTheme: sfProTextTheme,
  appBarTheme: const AppBarTheme(
     backgroundColor: MyColors.primary,
  ),
  tabBarTheme: const TabBarTheme(
    indicatorColor: Colors.green,
    labelColor: Colors.black,
    indicatorSize: TabBarIndicatorSize.tab,
  ),
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black,
      onPrimary: Colors.grey,
      secondary: Colors.green,
      onSecondary: Colors.green,
      error: Colors.red,
      onError: Colors.red,
      background: Colors.white,
      onBackground: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black
  ),
);