import 'package:flutter/material.dart';
import 'package:fall_2023_project/profile.dart';
import 'package:fall_2023_project/Theme.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: const Profile(),
    );
  }
}