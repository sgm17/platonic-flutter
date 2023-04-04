import 'package:flutter/material.dart';
import 'dart:ui';

class FlatScrollEmptyImage extends StatelessWidget {
  const FlatScrollEmptyImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/flat_scroll_empty_image.png",
            fit: BoxFit.cover,
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
