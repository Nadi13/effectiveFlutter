import 'package:flutter/material.dart';
import 'package:fall_2023_project/profile.dart';
import 'package:fall_2023_project/myTools/theme.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sber_app_Yudintseva',
      theme: themeData,
      home: const Profile(),
    );
  }
}