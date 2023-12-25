import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShadowStyle {
  static final verticalProductShadow =  BoxShadow(
    color: Colors.grey,
    blurRadius: 0,
    spreadRadius: 0,
    offset:  const Offset(0, 2)
  );
  static final horizontalProductShadow =  BoxShadow(
      color: Colors.grey,
      blurRadius: 0,
      spreadRadius: 0,
      offset: Offset(0, 2)
  );
}