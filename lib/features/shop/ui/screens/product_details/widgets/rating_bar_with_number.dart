
import 'package:ecommerce_lj/features/shop/ui/screens/product_details/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';

class RatingBarWithNo extends StatelessWidget {
  const RatingBarWithNo({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar(rating: rating),
        SizedBox(width: LJSizes.sm,),
        Text(rating.toString(),style: Theme.of(context).textTheme.labelMedium,),
      ],
    );
  }
}
