import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:platonic/screens/flats_screen/widgets/widgets.dart';

class FlatScrollItemEmpty extends ConsumerWidget {
  const FlatScrollItemEmpty({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 225.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
              width: 1.0, color: const Color.fromARGB(255, 76, 76, 76))),
      child: const Column(children: [
        Flexible(
          flex: 9,
          child: FlatScrollEmptyImage(),
        ),
        Flexible(
          flex: 4,
          child: FlatScrollEmptyInfo(),
        ),
      ]),
    );
  }
}
