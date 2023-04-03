import 'dart:ui';

import 'package:flutter/material.dart';

class FlatItemEmptyImage extends StatelessWidget {
  const FlatItemEmptyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/flat_item_empty_image.png",
              fit: BoxFit.cover,
              width: 110.0,
              height: 110.0,
              colorBlendMode: BlendMode.dstATop,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(
                color: Colors.white.withOpacity(0.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
