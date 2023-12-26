import 'package:ecommerce_lj/features/shop/bloc/categories/categories_cubit.dart';
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
                return  VerticalIconText(title: state.categories![index],
                  icon: Icons.shopify,
                  textColor: Colors.white,);
              });
          }
          if(state is CategoriesFail){
            return Text(state.error);
          }
          return const Text('Loading');
        },
      ),
    );
  }
}



