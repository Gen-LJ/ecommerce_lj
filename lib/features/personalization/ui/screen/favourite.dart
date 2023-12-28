import 'package:flutter/material.dart';

import '../../../../utils/device/device_utility.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Favourite'),
          centerTitle: true,
      ),
    ));
  }
}