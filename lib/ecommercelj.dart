
import 'package:ecommerce_lj/features/navigation/bloc/bot_nav_bloc.dart';
import 'package:ecommerce_lj/features/shop/bloc/all_products/all_products_cubit.dart';
import 'package:ecommerce_lj/features/shop/bloc/categories/categories_cubit.dart';
import 'package:ecommerce_lj/features/splash/splash.dart';
import 'package:ecommerce_lj/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/shop/bloc/product_by_category/product_by_category_bloc.dart';
import 'features/shop/ui/screens/home/bloc/carousel_bloc/carousel_bloc.dart';

class EcommerceLJ extends StatelessWidget {
  const EcommerceLJ({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BotNavBloc>(
          create: (context) => BotNavBloc(),
        ),
        BlocProvider<CarouselBloc>(
          create: (context) => CarouselBloc(),
        ),
        BlocProvider<CategoriesCubit>(
          create: (context) => CategoriesCubit(),
        ),
        BlocProvider<AllProductsCubit>(
          create: (context) => AllProductsCubit(),
        ),
        BlocProvider<ProductByCategoryBloc>(
          create: (context) => ProductByCategoryBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: LJAppTheme.lightTheme,
        darkTheme: LJAppTheme.darkTheme,
        home: const SplashScreen()
      ),
    );
  }
}
