
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class LJTabBar extends StatelessWidget implements PreferredSizeWidget {
  const LJTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    ///Material is used to give the background color to the tabbar which is a preferredsizedwidget.
    return Material(
      color: dark ? Colors.black : Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: Colors.amber,
        labelColor: dark ? Colors.white : Colors.amber,
        unselectedLabelColor: dark ? Colors.grey : Colors.black,

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
