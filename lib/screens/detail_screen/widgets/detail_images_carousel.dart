import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

/* Rectangle Rectangle 21
    Autogenerated by FlutLab FTF Generator
  */
class DetailImagesCarousel extends ConsumerWidget {
  final List<dynamic> image;

  const DetailImagesCarousel({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeCarouselIndexState = ref.watch(activeCarouselIndexProvider);

    return Container(
      height: 201.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, reason) => ref
                    .read(activeCarouselIndexProvider.notifier)
                    .state = index,
              ),
              items: image
                  .map((item) => Container(
                      width: double.infinity,
                      child: FittedBox(
                          fit: BoxFit.fill, child: Image.network(item))))
                  .toList(),
            ),
            Positioned(
              bottom: 0.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: image.asMap().entries.map((entry) {
                    int index = entry.key;
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: activeCarouselIndexState == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                    );
                  }).toList()),
            )
          ],
        ),
      ),
    );
  }
}
