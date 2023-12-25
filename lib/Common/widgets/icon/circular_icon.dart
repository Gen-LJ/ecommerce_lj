import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:ecommerce_lj/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon(
      {super.key,
      this.width,
      this.height,
      this.size = LJSizes.lg,
      required this.icon,
      this.color,
      this.backgroundColor,
      required this.onPressed});

  final double? width;
  final double? height;
  final double? size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null ?
        backgroundColor
            : LJDeviceUtils.isDarkMode(context) ?
        Colors.black.withOpacity(0.1)
            : Colors.white.withOpacity(0.9),
      borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon,size: size,color: color,),
      ),
      );
  }
}
