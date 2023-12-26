import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    this.textColor,  this.showActionButton = false ,
    required this.title,  this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title;
  final String buttonTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showActionButton) TextButton(
            onPressed:onPressed, child:  Text(buttonTitle,style: Theme.of(context).textTheme.labelLarge,))
      ],
    );
  }
}
