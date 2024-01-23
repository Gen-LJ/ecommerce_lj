import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_lj/Common/widgets/layout/grid_layout.dart';
import 'package:ecommerce_lj/Common/widgets/products/products_cart/products_cart_vertical.dart';
import 'package:ecommerce_lj/utils/constants/images_string.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LJAppBar(title: Text('Favourite')),
      body: SingleChildScrollView(
        child: GridLayout(itemCount: 1, itemBuilder: (context,index) {
            return const ProductCardVertical(
                title: 'Running Shoe',
                brandName: 'Nike',
                imageUrl: LJImages.shoe2,
                price: '399.9',
                discountPercentage: '20');
        }),
      ),
    );
  }
}
