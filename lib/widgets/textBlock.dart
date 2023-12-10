import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/fontsTheme.dart';

class TextBlock extends StatelessWidget {
  final String header;
  final String? text;
  const TextBlock({super.key, required this.header, this.text});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: sfProTextTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            text!,
            style: sfProTextTheme.labelLarge,
          )
        ]
      ),
    );
  }
}