import 'package:flutter/material.dart';

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
            label: Text(widget.items[index]),
            selected: isSelected[index],
            selectedColor: Colors.green,
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.08),
            checkmarkColor: Colors.black,
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