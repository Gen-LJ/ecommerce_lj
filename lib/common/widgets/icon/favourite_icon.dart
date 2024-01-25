import 'package:flutter/material.dart';

import '../../../Common/widgets/container/circular_container.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({
    super.key,
    required this.dark, this.onPressed,
  });

  final bool dark;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularContainer(
          width: 40,
          height: 40,
          backgroundColor: dark? Colors.black.withOpacity(0.1) : Colors.white.withOpacity(0.9),
        ),
        Positioned(
            right: 1,
            left: 1,
            top: 1,
            bottom: 1,
            child: IconButton(onPressed: onPressed, icon: const Icon(Icons.favorite_outline_rounded)))
      ],
    );
  }}