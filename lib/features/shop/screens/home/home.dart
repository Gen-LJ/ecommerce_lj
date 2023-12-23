import 'package:ecommerce_lj/features/shop/screens/home/widget/home_app_bar_widget.dart';
import 'package:flutter/material.dart';
import '../../../../Common/widgets/container/header_container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(child: Column(
              children: [
                HomeAppBar()
              ],
            ))
          ],
        ),
      ),
    );
  }
}


