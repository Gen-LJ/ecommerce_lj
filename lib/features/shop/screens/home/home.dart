import 'package:ecommerce_lj/features/shop/screens/home/widget/home_app_bar_widget.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../Common/widgets/container/header_container.dart';
import '../../../../Common/widgets/texts/section_header.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _value = 0;


  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeAppBar(),
                    SizedBox(height: LJSizes.xs,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace,
                      ),
                      child: SearchAnchor(
                          builder: (context,controller){
                            return const SearchBar(
                              padding: MaterialStatePropertyAll<EdgeInsets>(
                                EdgeInsets.symmetric(horizontal: 15)
                              ),
                              leading: Icon(Icons.search),
                              hintText: 'Search in Shop',
                            );
                          },
                          suggestionsBuilder: (context,controller){
                            return List.generate(5, (index) {
                              return ListTile(
                                title: Text('Item $index'),
                              );
                            });
                          }),
                    ),
                    SizedBox(height: LJSizes.md,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: LJSizes.defaultSpace),
                      child: Column(
                        children: [
                          SectionHeader(title: 'Categories',showActionButton: false,),
                          const SizedBox(height: LJSizes.spaceBtwItems,),

                        ],
                      ),
                    ),



              ],
            ))
          ],
        ),
      ),
    );
  }
}



