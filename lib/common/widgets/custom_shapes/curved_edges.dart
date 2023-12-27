
import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    double width = size.width;
    double height = size.height;
    path.lineTo(0, height);

    path.quadraticBezierTo(0, height-20, 20, height-20);
    path.quadraticBezierTo(0, height-20, width-20, height-20);
    path.quadraticBezierTo(width, height-20, width, height);

    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
