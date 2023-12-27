import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    this.color,
    this.maxLine =1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small
  });

  final Color? color;
  final String title;
  final int maxLine;
  final TextAlign textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        textAlign: TextAlign.left,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        style:  brandTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextSizes == TextSizes.medium
            ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
            : brandTextSizes == TextSizes.large
            ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
            : Theme.of(context).textTheme.bodyMedium!.apply(color: color)

    );
  }
}
