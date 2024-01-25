import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class LJAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LJAppBar(
      {super.key,
       this.title,
       this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingCallback});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: LJSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new,color: Colors.amber,))
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
  Size get preferredSize => Size.fromHeight(LJDeviceUtils.getAppBarHeight());
}
