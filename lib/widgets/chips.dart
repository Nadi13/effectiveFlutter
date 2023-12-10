import 'package:flutter/material.dart';
import 'package:fall_2023_project/myTools/colors.dart';
import 'package:fall_2023_project/myTools/fontsTheme.dart';

class SelectableChips extends StatefulWidget {
  final List<String> items;

  SelectableChips({required this.items});

  @override
  _SelectableChipsState createState() => _SelectableChipsState();
  }

class _SelectableChipsState extends State<SelectableChips> {
  List<bool> isSelected = [];

  @override
  void initState() {
    super.initState();
    isSelected = List<bool>.filled(widget.items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child:  Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: List<Widget>.generate(widget.items.length, (index) {
          return ChoiceChip(
            shape: const StadiumBorder(),
            label: Text(
              widget.items[index], 
              style: sfProTextTheme.labelMedium
            ),
            selected: isSelected[index],
            selectedColor: MyColors.chips,
            backgroundColor: MyColors.backgroundChips,
            checkmarkColor: MyColors.secondary,
            onSelected: (bool selected) {
              setState(() {
                isSelected[index] = selected;
              },
              );
            },
          );
        }),
      ),
    );
  }
}