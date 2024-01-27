import 'dart:math';

import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_lj/Common/widgets/appbar/tab_bar.dart';
import 'package:ecommerce_lj/Common/widgets/layout/grid_layout.dart';
import 'package:ecommerce_lj/Common/widgets/products/carts/cart_counter_icon.dart';
import 'package:ecommerce_lj/Common/widgets/texts/section_header.dart';
import 'package:ecommerce_lj/features/shop/bloc/categories/categories_cubit.dart';
import 'package:ecommerce_lj/features/shop/ui/screens/store/widget/category_tab.dart';
import 'package:ecommerce_lj/utils/constants/images_string.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Common/widgets/products/products_cart/products_cart_vertical.dart';
import '../../../../../common/widgets/brand/brand_card.dart';
import '../../../bloc/product_by_category/product_by_category_bloc.dart';
import '../../../data/model/product_model.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<CategoriesCubit>(context).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoriesCubit, CategoriesState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is CategoriesSuccess) {
          List<String> category = state.categories;
          BlocProvider.of<ProductByCategoryBloc>(context)
              .add(GetProductByCategory(state.categories[0]));
          return DefaultTabController(
            length: state.categories.length,
            child: Scaffold(
              appBar: LJAppBar(
                title: Text(
                  'Store',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                actions: const [CartCounterIcon()],
              ),
              body: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                          pinned: true,
                          floating: true,
                          expandedHeight: 290,
                          //backgroundColor: Colors.blue,
                          flexibleSpace: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: LJSizes.defaultSpace),
                            child: ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                const SizedBox(
                                  height: LJSizes.sm,
                                ),
                                SearchAnchor(builder: (context, controller) {
                                  return SearchBar(
                                    elevation: MaterialStateProperty.all(1),
                                    padding: const MaterialStatePropertyAll<
                                            EdgeInsets>(
                                        EdgeInsets.symmetric(horizontal: 15)),
                                    leading: const Icon(Icons.search),
                                    hintText: 'Search in Shop',
                                  );
                                }, suggestionsBuilder: (context, controller) {
                                  return List.generate(5, (index) {
                                    return ListTile(
                                      title: Text('Item $index'),
                                    );
                                  });
                                }),
                                const SizedBox(
                                  height: LJSizes.sm,
                                ),
                                const SectionHeader(
                                  title: 'Featured Brands',
                                  showActionButton: true,
                                ),
                                GridLayout(
                                    mainAxisExtent: 50,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return const BrandCard(
                                        thumbnail: LJImages.adidasLogo,
                                        title: 'Adidas',
                                        isNetworkImage: false,
                                      );
                                    })
                              ],
                            ),
                          ),
                          bottom: LJTabBar(
                              onTap: (index) {
                                BlocProvider.of<ProductByCategoryBloc>(context)
                                    .add(GetProductByCategory(
                                        state.categories[index]));
                              },
                              tabs: List.generate(state.categories.length,
                                  (index) {
                                return Tab(
                                  child: Text(
                                    state.categories[index],
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                );
                              }
                              )
                          )
                      )
                    ];
                  },
                  body: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(state.categories.length, (index) {
                        return BlocConsumer<ProductByCategoryBloc,
                            ProductByCategoryState>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            if (state is ProductByCategorySuccess) {
                              List<Products> products =
                                  state.productsByCategory;
                              var intValue = Random().nextInt(5);
                              return CategoryTab(
                                  brandTitle: products[intValue].brand ?? '',
                                  brandThumbnail: products[intValue].thumbnail ?? '',
                                  imageList: products[intValue].images ?? [],
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return ProductCardVertical(
                                        isNetworkImage: true,
                                        title: products[index].title ?? '',
                                        brandName: products[index].brand ?? '',
                                        imageUrl:
                                            products[index].thumbnail ?? '',
                                        price:
                                            products[index].price.toString(),
                                        discountPercentage: products[index]
                                                .discountPercentage
                                                .toString() ??
                                            '',
                                    rating : products[index].rating!.toDouble(),
                                    stock : products[index].stock.toString(),
                                      category : products[index].category ?? '',
                                      images: products[index].images,
                                      description : products[index].description ?? ''
                                    );
                                  });
                            } else if (state is ProductByCategoryLoad) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return const Center(
                              child: Text('Loading'),
                            );
                          },
                        );
                      }))),
            ),
          );
        }
        if (state is CategoriesLoad) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.amber,
            ),
          );
        }
        if (state is CategoriesFail) {
          return Text(state.error);
        }
        return const Center(
          child: Text('Loading'),
        );
      },
    );
  }
}
