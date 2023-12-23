
import 'package:flutter/material.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key, required this.iconColor, this.onPressed,
  });
  final Color iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          IconButton(onPressed: onPressed, icon:  Icon(Icons.shopping_cart,color: iconColor,)),
          Positioned(
            right: 0,
            child: Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Center(child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white,fontSizeFactor: 1),)),
            ),
          )]
    );
  }
}

