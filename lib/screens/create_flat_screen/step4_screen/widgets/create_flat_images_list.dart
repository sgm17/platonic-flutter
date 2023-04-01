import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

class CreateFlatImagesList extends ConsumerWidget {
  const CreateFlatImagesList({Key? key, required this.toggleFlatImage})
      : super(key: key);

  final Future<void> Function() toggleFlatImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCreateState = ref.watch(flatCreateProvider);
    final images = flatCreateState.images;

    return _buildImageList(images, ref);
  }

  void toggleDeleteImage({required dynamic image, required WidgetRef ref}) {
    ref.read(flatCreateProvider.notifier).deleteImage(image: image);
  }

  Widget _buildImageList(List<dynamic> images, WidgetRef ref) {
    final imageWidgets = List<Widget>.generate(
      images.length,
      (index) => GestureDetector(
        onLongPress: () => toggleDeleteImage(image: images[index], ref: ref),
        child: SizedBox(
          width: 170.0,
          height: 95.0,
          child: CreateFlatDetailImage(
            image: images[index],
          ),
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
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          GestureDetector(
            onTap: toggleFlatImage,
            child: const SizedBox(
              width: 170.0,
              height: 95.0,
              child: CreateFlatDetailImageEmpty(),
            ),
          ),
          const SizedBox(width: 16.0),
          const SizedBox(
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
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: toggleFlatImage,
                    child: const SizedBox(
                      width: 170.0,
                      height: 95.0,
                      child: CreateFlatDetailImageEmpty(),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                const Expanded(
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
