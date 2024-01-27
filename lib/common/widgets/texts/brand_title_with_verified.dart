
import 'package:ecommerce_lj/utils/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import 'brand_title_text.dart';

class BrandTitleWithVerified extends StatelessWidget {
  const BrandTitleWithVerified({
    super.key,
    this.textColor,
    this.maxLine =1,
    required this.title,
    this.iconColor = Colors.blue,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,  this.mainAxisSize = MainAxisSize.min

  });

  final String title;
  final int maxLine;
  final Color? textColor,iconColor;
  final TextAlign textAlign;
  final TextSizes brandTextSizes;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: mainAxisSize,
      children: [
        Flexible(
          child: BrandTitleText(title: title,
          maxLine: maxLine,
          color: textColor,
          textAlign: textAlign,
          brandTextSizes: brandTextSizes,),
        ),
        const SizedBox(
          width: LJSizes.xs,
        ),
         Icon(
          Icons.verified_rounded,
          color: iconColor,
          size: LJSizes.iconSm,
        )
      ],
    );
  }
}

