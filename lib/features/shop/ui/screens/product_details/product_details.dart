import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';


class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.image, required this.images});

  final String image;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(dark: dark, image: image, images: images)
          ],
        ),
      ),
    );
  }
}

