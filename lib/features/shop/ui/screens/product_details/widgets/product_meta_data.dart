import 'package:ecommerce_lj/Common/widgets/container/rounded_container.dart';
import 'package:ecommerce_lj/Common/widgets/texts/brand_title_with_verified.dart';
import 'package:ecommerce_lj/Common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_lj/Common/widgets/texts/product_title_text.dart';
import 'package:ecommerce_lj/utils/constants/enums.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key,
    required this.discountPercentage,
    required this.price, required this.title, required this.stock, required this.brand, required this.category
  });

  final String discountPercentage;
  final String price;
  final String title;
  final String stock;
  final String brand;
  final String category;

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
        ),
        SizedBox(height: LJSizes.sm,),
        ProductTitleText(title: title),
        SizedBox(height: LJSizes.sm,),
        Row(
          children: [
            ProductTitleText(title: 'In Stock :'),
            SizedBox(width: LJSizes.xs,),
            ProductTitleText(title: stock,),
          ],
        ),
        SizedBox(height: LJSizes.sm,),
        Row(
          children: [
            Icon(category.toIcon()),
            SizedBox(width: LJSizes.sm,),
            BrandTitleWithVerified(title: brand,brandTextSizes: TextSizes.medium,),
          ],
        ),
        SizedBox(height: LJSizes.sm,),

      ],
    );
  }
}


extension on String {
  IconData toIcon() {
    switch (this) {
      case "smartphones":
        return Icons.phone_iphone_rounded;
      case "laptops":
        return Icons.laptop_mac_rounded;
      case 'fragrances':
        return Icons.auto_fix_high;
      case 'skincare':
        return Icons.brush;
      case 'groceries':
        return Icons.local_grocery_store_rounded;
      case 'home-decoration':
        return Icons.build;
      case 'furniture':
        return Icons.chair;
      case 'tops':
        return Icons.checkroom;
      case 'tops':
        return Icons.checkroom;
      case 'womens-dresses':
        return Icons.woman;
      case 'womens-shoes':
        return Icons.roller_skating_outlined;
      case 'mens-shirts':
        return Icons.person_outline_rounded;
      case 'mens-shoes':
        return Icons.roller_skating;
      case 'mens-watches':
        return Icons.watch;
      case 'womens-watches':
        return Icons.watch_outlined;
      case 'womens-bags':
        return Icons.shopping_bag_rounded;
      case 'womens-jewellery':
        return Icons.diamond;
      case 'sunglasses':
        return Icons.voicemail;
      case 'tops':
        return Icons.checkroom;
      case 'automotive':
        return Icons.directions_car_filled_rounded;
      case 'motorcycle':
        return Icons.motorcycle;
      case 'lighting':
        return Icons.lightbulb;
      default:
        return Icons.add;
    }
  }
}


