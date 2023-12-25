
import 'package:ecommerce_lj/features/navigation/bloc/bot_nav_bloc.dart';
import 'package:ecommerce_lj/features/shop/screens/home/bloc/carousel_bloc/carousel_bloc.dart';
import 'package:ecommerce_lj/features/splash/splash.dart';
import 'package:ecommerce_lj/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EcommerceLJ extends StatelessWidget {
  const EcommerceLJ({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BotNavBloc>(
          create: (context) => BotNavBloc(),
        ),BlocProvider<CarouselBloc>(
          create: (context) => CarouselBloc(),
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
