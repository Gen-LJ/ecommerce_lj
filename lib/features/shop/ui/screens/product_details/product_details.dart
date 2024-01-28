import 'package:ecommerce_lj/Common/widgets/texts/section_header.dart';
import 'package:ecommerce_lj/common/widgets/Chip/lj_choice_chip.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/add_to_cart.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/product_description.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/rating_bar_with_number.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.image,
    required this.images,
    required this.rating,
    required this.discountPercentage,
    required this.price,
    required this.title,
    required this.stock,
    required this.brand,
    required this.category,
    required this.description,
  });

  final String image;
  final List<String> images;
  final double rating;
  final String discountPercentage;
  final String price;
  final String title;
  final String stock;
  final String brand;
  final String category;
  final String description;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageSlider(dark: dark, image: image, images: images),
            Padding(
              padding: const EdgeInsets.only(left: LJSizes.defaultSpace,right: LJSizes.defaultSpace),
              child: Column(
                children: [
                  RatingBarWithNo(rating: rating),
                  const SizedBox(
                    height: LJSizes.sm,
                  ),
                  ProductMetaData(
                    discountPercentage: discountPercentage ,
                    price: price ,
                    title: title ,
                    stock: stock ,
                    brand: brand ,
                    category: category ,
                  ),
                  const SizedBox(
                    height: LJSizes.sm,
                  ),
                  ProductDescription(
                    description: description ,
                  ),
                  const SizedBox(height: LJSizes.md,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SectionHeader(title: 'Colors'),
                      const SizedBox(height: LJSizes.sm,),
                      Wrap(
                        spacing: 8,
                        children: [
                          LJChoiceChip(text: 'Red', selected: false,onSelected: (value){},),
                          LJChoiceChip(text: 'Green', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: 'Blue', selected: true,onSelected: (value){}),
                          LJChoiceChip(text: 'Pink', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: 'Grey', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: 'Black', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: 'Indigo', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: 'Brown', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: 'White', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),

                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: LJSizes.sm,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SectionHeader(title: 'Size'),
                      const SizedBox(height: LJSizes.sm,),
                      Wrap(spacing: 8,
                        children: [
                          LJChoiceChip(text: '128 GB', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: true,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: false,onSelected: (value){}),
                          LJChoiceChip(text: '256 GB', selected: false,onSelected: (value){}),
                        ],
                      )

                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
