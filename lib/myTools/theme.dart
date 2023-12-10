import 'package:flutter/material.dart';

final themeData = ThemeData(
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