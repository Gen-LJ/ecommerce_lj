import 'package:flutter/material.dart';

import '../../../Common/widgets/custom_shapes/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              child: Container(
                color: Colors.amber.withOpacity(0.8),
                child: const SizedBox(height: 350,
                  child: Stack(
                    children: [
                      Positioned(
                        top : -150,
                          right: -180,
                          child: CircularContainer()),
                      Positioned(
                          top: 100,
                          right: -250,
                          child: CircularContainer()),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
