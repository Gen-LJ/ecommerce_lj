
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.shop,color: Colors.amber,size: 100),
        Text('Welcome to the Shop',
          style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: LJSizes.sm,),
        Text('Discover Limitless Products and Unmatched Convenience',
          style: Theme.of(context).textTheme.bodyMedium,)
      ],
    );
  }
}