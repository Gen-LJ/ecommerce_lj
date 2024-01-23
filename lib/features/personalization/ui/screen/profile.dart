import 'package:ecommerce_lj/Common/widgets/container/header_container.dart';
import 'package:ecommerce_lj/Common/widgets/texts/section_header.dart';
import 'package:ecommerce_lj/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../Common/widgets/appbar/app_bar.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
                child: Column(
              children: [
                LJAppBar(title: Text('Profile',style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),),
                const UserProfileTile(),
                const SizedBox(height: LJSizes.spaceBtwSections,)
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(top: LJSizes.xs,
                  left: LJSizes.defaultSpace,
                  right: LJSizes.defaultSpace,
                  bottom: LJSizes.xs),
              child: Column(
                children: [
                  SectionHeader(title: 'Account Settings'),
                  SizedBox(height: LJSizes.xs,),
                  SettingsMenuTile(icon: Icons.home_work_outlined,
                    title: 'Mandalay',
                    subtitle: '56th Street,Mandalay,0954545434',
                    onTap: (){},),
                  SettingsMenuTile(icon: Icons.shopping_bag_rounded, title: 'My Orders', subtitle: 'In-progress and Completed Orders'),
                  SettingsMenuTile(icon: Icons.account_balance, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account'),
                  SettingsMenuTile(icon: Icons.aod, title: 'My Coupon', subtitle: 'List of all the discounted coupons'),
                  SettingsMenuTile(icon: Icons.notifications, title: 'Notification', subtitle: 'Set any kind of notification messages'),
                  SettingsMenuTile(icon: Icons.account_box, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
