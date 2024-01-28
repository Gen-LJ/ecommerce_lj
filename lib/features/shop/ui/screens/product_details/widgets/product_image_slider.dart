
import 'package:flutter/material.dart';

import '../../../../../../Common/widgets/appbar/app_bar.dart';
import '../../../../../../Common/widgets/custom_shapes/curved_edges_widget.dart';
import '../../../../../../Common/widgets/icon/circular_icon.dart';
import '../../../../../../Common/widgets/image/rounded_image.dart';
import '../../../../../../utils/constants/sizes.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.dark,
    required this.image,
    required this.images,
  });

  final bool dark;
  final String image;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
        child: Container(
          //color: Colors.pink,
          color: dark ? Colors.black : Colors.white,
          child: Stack(
            children: [
              SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: Image.network(image, fit: BoxFit.fill)),
              Positioned(
                left: LJSizes.defaultSpace,
                right: 0,
                bottom: 30,
                child: SizedBox(
                  height: 70,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: images.length,
                      separatorBuilder: (_, __) {
                        return const SizedBox(
                          width: LJSizes.spaceBtwItems,
                        );
                      },
                      itemBuilder: (context,index){
                        return RoundedImage(
                          fit: BoxFit.fill,
                          isNetworkImage: true,
                          imageUrl: images[index],
                          width: 70,
                          backgroundColor: dark? Colors.black : Colors.white,
                          border: Border.all(color: Colors.amber),);
                      }
                  ),
                ),
              ),
              LJAppBar(
                showBackArrow: true,
                actions: [
                  CircularIcon(icon: Icons.favorite_outline_rounded, onPressed: () {})
                ],
              ),
            ],
          ),
        ));
  }
}