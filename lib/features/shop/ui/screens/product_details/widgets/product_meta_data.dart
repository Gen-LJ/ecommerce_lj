import 'package:ecommerce_lj/Common/widgets/container/rounded_container.dart';
import 'package:ecommerce_lj/Common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key,
    required this.discountPercentage,
    required this.price
  });

  final String discountPercentage;
  final String price;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
   var price1 = double.parse(price);
   var discountPercentage1 = double.parse(discountPercentage);

   var discountedPrice = price1 - (price1 * (discountPercentage1/100));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              backgroundColor: Colors.amber,
              //backgroundColor: Colors.blue.withOpacity(0.5),
              radius: LJSizes.sm,
              padding: const EdgeInsets.all(3),
              child: Text(
                '$discountPercentage %',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            SizedBox(width: LJSizes.lg,),
            Text('\$$price',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: LJSizes.lg,),
            ProductPriceText(price: discountedPrice.toStringAsFixed(2))

          ],
        )
      ],
    );
  }
}
