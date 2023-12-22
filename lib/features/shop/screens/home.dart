import 'package:ecommerce_lj/Common/widgets/appbar/app_bar.dart';
import 'package:flutter/material.dart';
import '../../../Common/widgets/container/header_container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(child: Column(
              children: [
                LJAppBar(title: Text('Hi'),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}


