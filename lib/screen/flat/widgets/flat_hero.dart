import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/flat_provider.dart';

class FlatHero extends ConsumerWidget {
  const FlatHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    final flatCarousel = flat.images;

    return CarouselSlider.builder(
      options: CarouselOptions(
          height: 250,
          viewportFraction: 1,
          onPageChanged: (index, reason) =>
              ref.read(flatItemImageIndexProvider.notifier).state = index),
      itemCount: flatCarousel.length,
      itemBuilder: (context, index, realIndex) {
        final flatImage = flatCarousel[index];

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/flat/$flatImage"),
                  fit: BoxFit.cover)),
        );
      },
    );
  }
}
