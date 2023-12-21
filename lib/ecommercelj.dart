
import 'package:ecommerce_lj/features/splash/splash.dart';
import 'package:ecommerce_lj/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class EcommerceLJ extends StatelessWidget {
  const EcommerceLJ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: LJAppTheme.lightTheme,
      darkTheme: LJAppTheme.darkTheme,
      home: const SplashScreen()
    );
  }
}
