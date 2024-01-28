import 'package:ecommerce_lj/features/shop/bloc/all_products/all_products_cubit.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/home/widget/home_app_bar_widget.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/home/widget/home_categories_widget.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/home/widget/promo_slider.dart';
import 'package:ecommerce_lj/utils/constants/images_string.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Common/widgets/container/header_container.dart';
import '../../../../../Common/widgets/layout/grid_layout.dart';
import '../../../../../Common/widgets/products/products_cart/products_cart_vertical.dart';
import '../../../../../Common/widgets/texts/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AllProductsCubit>(context).getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(
                  height: LJSizes.xs,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: LJSizes.defaultSpace,
                  ),
                  child: SearchAnchor(builder: (context, controller) {
                    return const SearchBar(
                      padding: MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 15)),
                      leading: Icon(Icons.search),
                      hintText: 'Search in Shop',
                    );
                  }, suggestionsBuilder: (context, controller) {
                    return List.generate(5, (index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    });
                  }),
                ),
                const SizedBox(
                  height: LJSizes.md,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: LJSizes.defaultSpace),
                  child: Column(
                    children: [
                      SectionHeader(
                        title: 'Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: LJSizes.spaceBtwItems,
                      ),
                      HomeCategories(),
                      SizedBox(height : LJSizes.sm)
                    ],
                  ),
                ),
              ],
            )),
            const PromoSlider(
              banners: [
                LJImages.banner1,
                LJImages.banner2,
                LJImages.banner3,
                LJImages.banner2,
                LJImages.banner3
              ],
            ),
            const SizedBox(
              height: LJSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace),
              child: SectionHeader(
                title: 'Popular Products',
                showActionButton: true,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace),
              child: BlocBuilder<AllProductsCubit, AllProductsState>(
                builder: (context, state) {
                  if (state is AllProductsSuccess) {
                    return GridLayout(
                        itemCount: state.allProducts.length,
                        itemBuilder: (context, index) {
                          return ProductCardVertical(
                            isNetworkImage : true,

                              title: state.allProducts[index].title ?? '',
                              brandName: state.allProducts[index].brand ?? '',
                              imageUrl: state.allProducts[index].thumbnail ?? '',
                              price: (state.allProducts[index].price).toString() ,
                              discountPercentage : state.allProducts[index].discountPercentage.toString() ,
                              images : state.allProducts[index].images ?? [],
                            rating : state.allProducts[index].rating?.toDouble() ?? 0,
                            stock : state.allProducts[index].stock.toString(),
                            category : state.allProducts[index].category ?? '',
                            description : state.allProducts[index].description ?? ''

                          );
                        });
                  } else if (state is AllProductsLoad) {
                    return const Center(
                      child: LinearProgressIndicator(),
                    );
                  } else if (state is AllProductsFail) {
                    return Center(
                      child: Text(state.error),
                    );
                  }
                  return const Center(
                    child: Text('Loading'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
