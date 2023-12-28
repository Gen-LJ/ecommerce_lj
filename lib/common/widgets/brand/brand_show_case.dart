
import 'package:flutter/material.dart';

import '../../../Common/widgets/container/rounded_container.dart';
import '../../../Common/widgets/image/rounded_image.dart';
import '../../../Common/widgets/products/brand_cart/brand_card.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: LJDeviceUtils.isDarkMode(context) ? Colors.white : Colors.grey,
      backgroundColor: Colors.transparent,
      child:  Padding(
        padding: EdgeInsets.all(LJSizes.xs),
        child: Column(
          children: [
            BrandCard(showBorder : false),
            Padding(
              padding: EdgeInsets.all(LJSizes.xs),
              child: Row(
                  children:
                  List.generate(images.length, (index) {
                    return Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundedContainer(
                              showBorder: true,
                              borderColor: LJDeviceUtils.isDarkMode(context) ? Colors.white : Colors.grey,
                              child: RoundedImage(
                                  fit: BoxFit.fill,
                                  height: 90,
                                  imageUrl: images[index]),
                            ),
                          ),
                          SizedBox(width: LJSizes.xs,)
                        ],
                      ),
                    );
                  })

              ),
            )
          ],
        ),
      ),
    );
  }
}
