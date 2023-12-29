import 'package:flutter/material.dart';

import '../../../Common/widgets/container/rounded_container.dart';
import '../../../Common/widgets/image/rounded_image.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import 'brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
    required this.isNetworkImage,
    required this.thumbnail, required this.title,
  });

  final List<String> images;
  final bool isNetworkImage;
  final String thumbnail;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor:
          LJDeviceUtils.isDarkMode(context) ? Colors.white : Colors.grey,
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(LJSizes.xs),
        child: Column(
          children: [
            BrandCard(
              showBorder: false,
              thumbnail: thumbnail,
              title: title,
              isNetworkImage: isNetworkImage,
            ),
            Padding(
              padding: EdgeInsets.all(LJSizes.xs),
              child: Row(
                  children: List.generate(images.length, (index) {
                return Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: RoundedContainer(
                          showBorder: true,
                          borderColor: LJDeviceUtils.isDarkMode(context)
                              ? Colors.white
                              : Colors.grey,
                          child: RoundedImage(
                              isNetworkImage: isNetworkImage,
                              fit: BoxFit.fill,
                              height: 90,
                              imageUrl: images[index]),
                        ),
                      ),
                      SizedBox(
                        width: LJSizes.xs,
                      )
                    ],
                  ),
                );
              })),
            )
          ],
        ),
      ),
    );
  }
}
