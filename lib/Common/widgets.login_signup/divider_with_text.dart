
import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key, required this.text,
  });
  final text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(child: Divider(thickness: 2,indent: 50,endIndent: 5,)),
        Text(text,style: Theme.of(context).textTheme.labelMedium,),
        const Flexible(child: Divider(thickness: 2,indent: 5,endIndent: 50,))
      ],
    );
  }
}