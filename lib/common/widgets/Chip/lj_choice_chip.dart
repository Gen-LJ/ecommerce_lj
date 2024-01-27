import 'package:ecommerce_lj/Common/widgets/container/circular_container.dart';
import 'package:ecommerce_lj/utils/constants/get_color.dart';
import 'package:flutter/material.dart';

class LJChoiceChip extends StatelessWidget {
  const LJChoiceChip(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = GetColor.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? Colors.white : null),
        avatar: isColor
            ? CircularContainer(
                width: 50, height: 50, backgroundColor: GetColor.getColor(text)!)
            : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        shape: isColor ? CircleBorder() : null,
        backgroundColor: isColor? GetColor.getColor(text) : null,
        selectedColor: isColor ? GetColor.getColor(text) : null,
        disabledColor: isColor ? GetColor.getColor(text) : null,
      ),
    );
  }
}
