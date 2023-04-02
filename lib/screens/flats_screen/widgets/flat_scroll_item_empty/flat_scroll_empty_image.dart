import 'dart:ui';

import 'package:flutter/material.dart';

class FlatScrollEmptyImage extends StatelessWidget {
  const FlatScrollEmptyImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/flat_item_empty_image.jpg",
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
    );
  }
}
