import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/rating_bar_with_number.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';


class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.image, required this.images, required this.rating, this.discountPercentage, this.price});

  final String image;
  final List<String> images;
  final double rating;
  final String? discountPercentage;
  final String? price;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageSlider(dark: dark, image: image, images: images),
            Padding(
              padding: const EdgeInsets.only(left: LJSizes.defaultSpace),
              child: Column(
                children: [
                  RatingBarWithNo(rating: rating),
                  SizedBox(height: LJSizes.sm,),
                  ProductMetaData(discountPercentage: discountPercentage ?? '',
                  price: price ?? '',),



                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

