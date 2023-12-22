
import 'package:flutter/material.dart';

import '../custom_shapes/curved_edges_widget.dart';
import 'circular_container.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(child: Container(
      color: Colors.amber.withOpacity(0.8),
      child:  SizedBox(height: 350,
        child: Stack(
          children: [
            const Positioned(
                top : -150,
                right: -180,
                child: CircularContainer()),
            const Positioned(
                top: 100,
                right: -250,
                child: CircularContainer()),
            child
          ],
        ),
      ),
    ),
    );
  }
}
