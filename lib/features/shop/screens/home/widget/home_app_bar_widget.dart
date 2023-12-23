
import 'package:flutter/material.dart';

import '../../../../../Common/widgets/appbar/app_bar.dart';
import '../../../../../Common/widgets/products_cart/cart_counter_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LJAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Good Day For Shopping Ain\'t It.',style: Theme.of(context).textTheme.labelMedium,),
        Text('Genichiro',style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),)
      ],
    ),
      actions: const [
        CartCounterIcon(iconColor: Colors.white,)
      ],
    );
  }
}