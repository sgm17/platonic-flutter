import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';
import 'package:platonic/providers/flat_provider/flat_provider.dart';
import 'package:platonic/screen/flat/widgets/flat_properties_screen.dart';
import 'package:platonic/screen/flat/widgets/widgets.dart';
import '../../domain/flat_repository/src/models/models.dart';

class FlatScreen extends ConsumerWidget {
  const FlatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    final flatPageCurrentImage = ref.watch(flatImageIndexProvider);

    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Flexible(
        flex: 9,
        child: SingleChildScrollView(
            child: Column(children: [
          Stack(
            children: [
              ProviderScope(overrides: [
                flatCarouselProvider.overrideWithValue(flat.images)
              ], child: const FlatHero()),
              Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.white),
                      child: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: AppColors.navyBlueTitle,
                        size: 30,
                      ),
                    ),
                  )),
              Positioned(
                top: 16,
                right: 16,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.white),
                      child: const Icon(
                        Icons.share_outlined,
                        color: AppColors.navyBlueTitle,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.white),
                      child: const Icon(
                        Icons.favorite_outline_rounded,
                        color: AppColors.navyBlueTitle,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 16,
                  right: 16,
                  child: Container(
                    width: 65,
                    height: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.black.withOpacity(.6),
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      "${flatPageCurrentImage + 1} / ${flat.images.length}",
                      style: const TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  flat.title,
                  style: const TextStyle(
                      color: AppColors.navyBlueTitle,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.star,
                        size: 16, color: AppColors.navyBlueTitle),
                    Text(
                        (flat.reviews
                                    .map((e) => e.rating)
                                    .reduce((a, b) => a + b) /
                                flat.reviews.length)
                            .toStringAsFixed(1),
                        style: const TextStyle(
                            color: AppColors.navyBlueTitle, fontSize: 14)),
                    const SizedBox(
                      width: 6,
                    ),
                    const Text(
                      '·',
                      style: TextStyle(
                          color: AppColors.navyBlueTitle, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "${flat.reviews.length} evaluations",
                      style: const TextStyle(
                          color: AppColors.navyBlueTitle,
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Text("${flat.hood}, ${flat.city}",
                    style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.navyBlueTitle,
                        fontSize: 14)),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  thickness: 1,
                  color: AppColors.strongWhite,
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 8,
                          child: Text(
                            'Private room in: flat\nHost: ${flat.lessor is ParticularLessor ? flat.lessor.name : flat.lessor.realEstateName}',
                            style: const TextStyle(
                                fontSize: 20, color: AppColors.navyBlueTitle),
                          ),
                        ),
                        const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://miro.medium.com/max/1100/0*Ggt-XwliwAO6QURi.jpg',
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                        '${flat.maxTenants} max tentants · ${flat.tenants.length} actual tenants · ${flat.flatProperties.rooms} rooms ·\n${flat.flatProperties.bathrooms} bathrooms',
                        style: const TextStyle(
                            color: AppColors.navyBlueTitle, fontSize: 14)),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColors.strongWhite,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FlatAccommodation(
                      flat: flat,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FlatPropertiesScreen(
                                flat: flat,
                              ))),
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.navyBlueTitle),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Text('show all services',
                            style: TextStyle(
                                color: AppColors.navyBlueTitle,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColors.strongWhite,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const FlatTenants(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColors.strongWhite,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const FlatLocation(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColors.strongWhite,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const FlatReviews(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColors.strongWhite,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const FlatLessor(),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
          )
        ])),
      ),
      Flexible(
        flex: 1,
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColors.white,
              border: Border(
                  top: BorderSide(color: AppColors.strongWhite, width: 1))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                        children: [
                      TextSpan(
                          text: '${flat.monthlyPrice} €',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const TextSpan(text: ' month'),
                    ])),
                Material(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.mainColor,
                  child: InkWell(
                    onTap: () => print('object'),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 150,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: const Text('Contact',
                          style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ])));
  }
}
