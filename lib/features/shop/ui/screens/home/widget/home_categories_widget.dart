import 'package:ecommerce_lj/features/shop/bloc/categories/categories_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../Common/widgets/image_text/vertical_image_text.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({
    super.key,
  });

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoriesCubit>(context).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BlocConsumer<CategoriesCubit, CategoriesState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          if(state is CategoriesSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: state.categories.length,
              itemBuilder: (context, index) {
                return  VerticalIconText(
                  title: state.categories[index],
                  icon: state.categories[index].toIcon(),
                  textColor: Colors.white,);
              });
          }
          if(state is CategoriesFail){
            return Text(state.error);
          }
          if (state is CategoriesLoad){
            return ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return  const VerticalIconText(title: '',
                    isIcon : false,
                    icon: Icons.cached_rounded,
                    textColor: Colors.white,);
                });
          }
          return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return  const VerticalIconText(title: '',
                  icon: Icons.cached_rounded,
                  textColor: Colors.white,);
              });
        },
      ),
    );
  }

}



extension on String {
  IconData toIcon() {
    switch (this) {
      case "smartphones":
        return Icons.phone_iphone_rounded;
      case "laptops":
        return Icons.laptop_mac_rounded;
      case 'fragrances':
        return Icons.auto_fix_high;
      case 'skincare':
        return Icons.brush;
      case 'groceries':
        return Icons.local_grocery_store_rounded;
      case 'home-decoration':
        return CupertinoIcons.paintbrush_fill;
          //Icons.build;
      case 'furniture':
        return Icons.chair;
      case 'tops':
        return Icons.checkroom;
      case 'tops':
        return Icons.checkroom;
      case 'womens-dresses':
        return Icons.woman;
      case 'womens-shoes':
        return Icons.roller_skating_outlined;
      case 'mens-shirts':
        return Icons.person_outline_rounded;
      case 'mens-shoes':
        return Icons.roller_skating;
      case 'mens-watches':
        return Icons.watch;
      case 'womens-watches':
        return Icons.watch_outlined;
      case 'womens-bags':
        return Icons.shopping_bag_rounded;
      case 'womens-jewellery':
        return Icons.diamond;
      case 'sunglasses':
        return Icons.voicemail;
      case 'tops':
        return Icons.checkroom;
      case 'automotive':
        return Icons.directions_car_filled_rounded;
      case 'motorcycle':
        return Icons.motorcycle;
      case 'lighting':
        return Icons.lightbulb;
      default:
        return Icons.add;
    }
  }
}



