import 'package:flutter/material.dart';
import 'package:fall_2023_project/profile.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:  Colors.indigo),
      home: const Profile(),
    );
  }
}