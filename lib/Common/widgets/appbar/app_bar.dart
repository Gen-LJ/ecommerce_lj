import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class LJAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LJAppBar(
      {super.key,
      required this.title,
       this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingCallback});

  final Widget title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: LJSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingCallback, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(LJDeviceUtils.getAppBarHeight());
}
