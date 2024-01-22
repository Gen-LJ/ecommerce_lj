import 'package:ecommerce_lj/Common/widgets/products/products_cart/products_cart_vertical.dart';
import 'package:ecommerce_lj/features/shop/bloc/product_by_category/product_by_category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/product_model.dart';
import '../store/widget/category_tab.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}


class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
        centerTitle: true,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(onPressed: () async{
              BlocProvider.of<ProductByCategoryBloc>(context).add(GetProductByCategory('laptops'));
            }, child: const Icon(Icons.add)),
            BlocConsumer<ProductByCategoryBloc, ProductByCategoryState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                if(state is ProductByCategorySuccess) {
                  List<Products> products = state.productsByCategory;
                  return CategoryTab(
                    brandTitle: products[0].brand ?? '',
                      brandThumbnail: products[0].thumbnail ?? '',
                      imageList: products[0].images,
                      itemCount: state.productsByCategory.length,
                  itemBuilder: (context, index) {
                    return ProductCardVertical(
                        isNetworkImage: true,
                        title: products[index].title ?? '',
                        brandName: products[index].brand ?? '',
                        imageUrl: products[index].thumbnail ?? '',
                        price: '100',
                        discountPercentage: '50');
                  },
                  );
                }
                else if(state is ProductByCategoryLoad){
                  return const Center(child: CircularProgressIndicator(),);
                }
                else if(state is ProductByCategoryFail){
                  return Text(state.error);
                }
                return const Center(child: Text('Loading loading'),);
              },
            )
          ],
        ),
      ),
        );
  }
}