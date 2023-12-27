import 'package:ecommerce_lj/Common/widgets/container/rounded_container.dart';
import 'package:ecommerce_lj/Common/widgets/icon/circular_icon.dart';
import 'package:ecommerce_lj/Common/widgets/image/rounded_image.dart';
import 'package:ecommerce_lj/utils/constants/images_string.dart';
import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import '../../texts/ProductPriceText.dart';
import '../../texts/brand_title_with_verified.dart';
import '../../texts/product_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = LJDeviceUtils.isDarkMode(context);
    return InkWell(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            // boxShadow: [
            //   ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(LJSizes.productImageRadius),
            color: LJDeviceUtils.isDarkMode(context)
                ? Colors.grey.withOpacity(0.3)
                : Colors.grey.withOpacity(0.1)),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(LJSizes.xs),
              backgroundColor:
                  dark ? Colors.black.withOpacity(0.3) : Colors.white,
              child: Stack(children: [
                Center(
                  child: RoundedImage(
                    imageUrl: LJImages.shoe1,
                    applyImageRadius: true,
                    backgroundColor:
                        dark ? Colors.black.withOpacity(0.001) : Colors.white,
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 5,
                  child: RoundedContainer(
                    backgroundColor: Colors.blue.withOpacity(0.5),
                    radius: LJSizes.sm,
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      '50%',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: CircularIcon(
                    icon: Icons.favorite,
                    onPressed: () {},
                    color: Colors.red,
                    size: LJSizes.iconMd,
                    width: 40,
                    height: 40,
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: LJSizes.spaceBtwItems / 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: LJSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: 'Nike Green Sneaker',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: LJSizes.spaceBtwItems / 5,
                  ),
                  BrandTitleWithVerified(title: 'Nike',),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: LJSizes.sm),
                  child: ProductPriceText(price: '400.99'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: dark ? Colors.white : Colors.black,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(LJSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(LJSizes.productImageRadius))),
                    child: SizedBox(
                      width: LJSizes.iconLg * 1.3,
                      height: LJSizes.iconLg * 1.3,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: dark ? Colors.black : Colors.white,
                          )),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

