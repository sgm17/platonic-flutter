import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

import 'widgets.dart';

class CreateFlatImagesList extends ConsumerWidget {
  const CreateFlatImagesList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCreateState = ref.watch(flatCreateProvider);
    final images = flatCreateState.images;

    return _buildImageList(images);
  }

  Widget _buildImageList(List<dynamic> images) {
    final imageWidgets = List<Widget>.generate(
      images.length,
      (index) => SizedBox(
        width: 170.0,
        height: 95.0,
        child: CreateFlatDetailImage(
          image: images[index],
        ),
      ),
    );

    final rows = <Widget>[];
    for (var i = 0; i < imageWidgets.length; i += 2) {
      if (i == imageWidgets.length - 1) {
        rows.add(Row(
          children: [
            Expanded(child: imageWidgets[i]),
            const SizedBox(width: 16.0),
            const Expanded(child: SizedBox.shrink()),
          ],
        ));
      } else {
        rows.add(Row(
          children: [
            Expanded(child: imageWidgets[i]),
            const SizedBox(width: 16.0),
            Expanded(child: imageWidgets[i + 1]),
          ],
        ));
      }
    }

    if (rows.isEmpty) {
      return const Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SizedBox(
            width: 170.0,
            height: 95.0,
            child: CreateFlatDetailImageEmpty(),
          ),
          SizedBox(width: 16.0),
          SizedBox(
            width: 170.0,
            height: 95.0,
            child: SizedBox.shrink(),
          ),
        ],
      );
    }

    return Column(
      children: [
        for (var i = 0; i < rows.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: rows[i],
          ),
        if (images.length < 20)
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 170.0,
                    height: 95.0,
                    child: CreateFlatDetailImageEmpty(),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: SizedBox(
                    width: 170.0,
                    height: 95.0,
                    child: SizedBox.shrink(),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
