
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = 350,
    this.height =350,
    this.radius =350 ,
    this.padding = 0,
    this.child
    , this.backgroundColor = Colors.white,
  });
  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(350),
          color: backgroundColor.withOpacity(0.3)
      ),
    );
  }
}
