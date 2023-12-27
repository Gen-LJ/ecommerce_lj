
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.contain,
    this.padding = LJSizes.xs,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = 100,
    required this.imageUrl,
  });

  final double? width;
  final double? height;
  final String imageUrl;
  final Color? backgroundColor;
  final Color? overlayColor;
  final BoxFit? fit;
  final double padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: backgroundColor ?? (LJDeviceUtils.isDarkMode(context) ? Colors.black : Colors.white),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(
          child: Image(
            color: overlayColor,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
