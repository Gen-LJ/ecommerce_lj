import 'package:ecommerce_lj/features/navigation/bloc/bot_nav_bloc.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../personalization/ui/screen/favourite.dart';
import '../personalization/ui/screen/profile.dart';
import '../shop/ui/screens/home/home.dart';
import '../shop/ui/screens/store/store.dart';

class BotNavigationScreen extends StatefulWidget {
  const BotNavigationScreen({super.key});


  @override
  State<BotNavigationScreen> createState() => _BotNavigationScreenState();
}

class _BotNavigationScreenState extends State<BotNavigationScreen> {
  @override
  Widget build(BuildContext context) {

    final dark = LJDeviceUtils.isDarkMode(context);

    final List<Widget> _bodyList = [
      const HomeScreen(),
      const StoreScreen(),
      const FavouriteScreen(),
      const ProfileScreen(),
    ];

    return BlocConsumer<BotNavBloc, BotNavState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          body: _bodyList[state.currentIndex],
          bottomNavigationBar: NavigationBar(
            elevation: 0,
            backgroundColor: dark? Colors.black : Colors.white,
            indicatorColor: dark? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.store), label: 'Store'),
              NavigationDestination(icon: Icon(Icons.favorite_border), label: 'Favourite'),
              NavigationDestination(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            selectedIndex: state.currentIndex,
            onDestinationSelected: (index){
              BlocProvider.of<BotNavBloc>(context).add(BotNavigate(index));
            },
          ),
        );
      },
    );
  }
}
