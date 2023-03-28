import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/providers/flat_provider/flat_scroll_provider.dart';
import 'package:flutterapp/screens/flats_screen/widgets/flat_scroll_background.dart';
import 'package:flutterapp/screens/flats_screen/widgets/flat_scroll_info/flat_scroll_info.dart';
import 'package:flutterapp/screens/flats_screen/widgets/book_mark.dart';

/* Group university_item
    Autogenerated by FlutLab FTF Generator
  */

class FlatScrollItem extends ConsumerWidget {
  FlatScrollItem({Key? key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatScrollState = ref.watch(flatScrollProvider);

    return Container(
      height: 250.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromARGB(255, 255, 255, 255),
          border:
              Border.all(width: 1.0, color: Color.fromARGB(255, 76, 76, 76))),
      child: Column(children: [
        Flexible(
          flex: 9,
          child: Stack(
            children: [
              FlatScrollBackground(
                image: flatScrollState.image,
              ),
              if (!flatScrollState.ownFlat)
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  width: 30.0,
                  height: 30.0,
                  child: BookMark(
                    bookMarkActive: flatScrollState.bookMark,
                  ),
                ),
            ],
          ),
        ),
        Flexible(
          flex: 4,
          child: FlatScrollInfo(
            flatsScrollModel: flatScrollState,
          ),
        ),
      ]),
    );
  }
}
