import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
     this.iconColor,
    this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.shopping_cart,
            color: iconColor ?? (dark ? Colors.white : Colors.black) ,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(
              color: dark? Colors.white : Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(100)),
          child: Center(
              child: Text(
            '2',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: dark? Colors.black : Colors.white, fontSizeFactor: 1),
          )),
        ),
      )
    ]);
  }
}
