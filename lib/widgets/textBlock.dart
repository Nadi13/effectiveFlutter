import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/colors.dart';

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
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          )
        ),
        SizedBox(height: 8),
        Text(
          text!,
          style: TextStyle(
            color: MyColors.textSecondary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          )
        )
      ]
    ),
    );
  }
}