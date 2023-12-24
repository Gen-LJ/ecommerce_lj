
import 'package:flutter/material.dart';
import '../../../../../Common/widgets/image_text/vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context,index){
            return const VerticalIconText(title: 'Shoe Sneakers',icon: Icons.shopify,textColor: Colors.white,);
          }),
    );
  }
}



