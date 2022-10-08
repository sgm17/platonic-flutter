import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/flat_provider/flat_provider.dart';

class FlatCarousel extends ConsumerWidget {
  const FlatCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCarousel = ref.watch(flatCarouselProvider);
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 310,
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                ref.read(flatImageIndexProvider.notifier).state = index),
        itemCount: flatCarousel.length,
        itemBuilder: (context, index, realIndex) {
          final flatImage = flatCarousel[index];
          return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/flat/${flatImage.image}",
                      ),
                      fit: BoxFit.cover)));
        });
  }
}
