import 'package:ecommerce_lj/Common/widgets/container/rounded_container.dart';
import 'package:ecommerce_lj/Common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_lj/Common/widgets/texts/section_header.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key, required this.description});

  final String description;
  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(LJSizes.md),
      backgroundColor: dark? Colors.grey.withOpacity(0.1) : Colors.amber.withOpacity(0.2),
      child: Column(
        children: [
        const SectionHeader(title: 'Description'),
          const SizedBox(height: LJSizes.sm,),
          Container(
            height: 85,
            //color: Colors.red,
            child: SingleChildScrollView(
              child: ProductTitleText(title: description,maxLine: 10,),
            ),
          )
        ],
      ),
    );
  }
}
