import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_lj/Common/widgets/products/carts/cart_counter_icon.dart';
import 'package:ecommerce_lj/Common/widgets/texts/section_header.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LJAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [CartCounterIcon()],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440,
                backgroundColor: Colors.blue,
                flexibleSpace: Padding(padding: EdgeInsets.symmetric(horizontal : LJSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: LJSizes.xs,),
                      SearchAnchor(builder: (context, controller) {
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
                      }
                      ),
                      SizedBox(height: LJSizes.sm,),
                      SectionHeader(title: 'Featured Brands',showActionButton: true,)
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
