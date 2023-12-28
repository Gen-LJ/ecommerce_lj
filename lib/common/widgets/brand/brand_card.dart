
import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/images_string.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../container/rounded_container.dart';
import '../image/circular_image.dart';
import '../texts/brand_title_with_verified.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,  this.showBorder = true,
  });
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: RoundedContainer(
        padding: const EdgeInsets.all(LJSizes.xs),
        showBorder: showBorder,
        borderColor: LJDeviceUtils.isDarkMode(context) ? Colors.white : Colors.grey,
        backgroundColor: LJDeviceUtils.isDarkMode(context) ? Colors.black : Colors.white,
        child: Row(
          children: [
            const CircularImage(
                imageUrl: LJImages.adidasLogo),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerified(title: 'Adidas',brandTextSizes: TextSizes.large,),
                  Text('256 products with promotion',overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
