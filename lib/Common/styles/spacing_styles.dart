import 'package:ecommerce_lj/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class LJSpacingStyle{
  static const EdgeInsetsGeometry paddingNoAppbar = EdgeInsets.only(
    top: LJSizes.appBarHeight,
    left: LJSizes.defaultSpace,
    right: LJSizes.defaultSpace,
    bottom: LJSizes.defaultSpace
  );
}