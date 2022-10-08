import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';
import 'package:platonic/providers/flat_provider/flat_provider.dart';
import 'package:platonic/screen/home/widgets/flat_carousel.dart';
import '../../../domain/flat_repository/src/models/models.dart';
import 'package:flutter/material.dart';

class FlatItem extends ConsumerWidget {
  const FlatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    final flatCurrentImage = ref.watch(flatImageIndexProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProviderScope(
                overrides: [
                  flatCarouselProvider.overrideWithValue(flat.images)
                ],
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    const FlatCarousel(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: Iterable.generate(flat.images.length)
                            .toList()
                            .map((e) {
                          return Container(
                            width: 5,
                            height: 5,
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2.75),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.white.withOpacity(
                                    flatCurrentImage == e ? .9 : .4)),
                          );
                        }).toList()),
                    const Positioned(
                      top: 16,
                      right: 16,
                      child: Icon(
                        Icons.favorite,
                        size: 25,
                        color: AppColors.mainColor,
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${flat.hood}, ${flat.city}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Row(children: [
                  const Icon(
                    Icons.star,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                      (flat.reviews
                                  .map((e) => e.rating)
                                  .reduce((a, b) => a + b) /
                              flat.reviews.length)
                          .toStringAsFixed(1),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400))
                ])
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
                flat.nearUniversities.length > 1
                    ? "${flat.nearUniversities.first.name}, +${flat.nearUniversities.length - 1} more"
                    : flat.nearUniversities.first.name,
                style: const TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 4,
            ),
            Text(
                flat.lessor is ParticularLessor
                    ? 'Particular lessor'
                    : 'Profesional lessor',
                style: const TextStyle(
                    color: AppColors.grey, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 4,
            ),
            RichText(
                text: TextSpan(
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black),
                    children: [
                  TextSpan(
                      text: "${flat.monthlyPrice.toString()} €",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' '),
                  const TextSpan(
                    text: 'month',
                  )
                ])),
          ],
        ),
      ),
    );
  }
}

class FlatItemProperties {
  final Flat flat;
  final bool first;
  final bool last;

  FlatItemProperties(this.flat, this.first, this.last);
}
