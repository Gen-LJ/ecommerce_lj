import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_lj/Common/widgets/container/circular_container.dart';
import 'package:ecommerce_lj/features/shop/screens/home/widget/home_app_bar_widget.dart';
import 'package:ecommerce_lj/features/shop/screens/home/widget/home_categories_widget.dart';
import 'package:ecommerce_lj/features/shop/screens/home/widget/promo_slider.dart';
import 'package:ecommerce_lj/utils/constants/images_string.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../Common/widgets/container/header_container.dart';
import '../../../../Common/widgets/image/rounded_image.dart';
import '../../../../Common/widgets/texts/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      HomeCategories()
                    ],
                  ),
                ),
              ],
            )),
             PromoSlider(banners: [LJImages.banner1,LJImages.banner2,LJImages.banner3,LJImages.banner1],)
          ],
        ),
      ),
    );
  }
}
