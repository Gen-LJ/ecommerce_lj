import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_lj/Common/widgets/appbar/tab_bar.dart';
import 'package:ecommerce_lj/Common/widgets/layout/grid_layout.dart';
import 'package:ecommerce_lj/Common/widgets/products/carts/cart_counter_icon.dart';
import 'package:ecommerce_lj/Common/widgets/texts/section_header.dart';
import 'package:ecommerce_lj/features/shop/bloc/categories/categories_cubit.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Common/widgets/products/brand_cart/brand_card.dart';

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
        if(state is CategoriesSuccess) {
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
                        expandedHeight: 350,
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
                                  mainAxisExtent: 70,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return const BrandCard();
                                  })
                            ],
                          ),
                        ),
                        bottom:  LJTabBar(
                            tabs: List.generate(state.categories.length, (index) {
                              return Tab(child: Text(state.categories[index],style: const TextStyle(
                                fontSize: 14
                              ),),);
                            }).toList()
                        ))
                  ];
                },
                body: Container()),
          ),
        );
        }
        if(state is CategoriesLoad){
          return const Center(child: CircularProgressIndicator(color: Colors.amber,),);
        }
        if(state is CategoriesFail){
          return Text(state.error);
        }
        return const Center(child: Text('Loading'),);
      },
    );
  }
}
