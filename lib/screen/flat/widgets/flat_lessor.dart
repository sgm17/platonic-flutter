import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';
import '../../../domain/flat_repository/src/models/models.dart';

class FlatLessor extends ConsumerWidget {
  const FlatLessor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    final lessor = flat.lessor;

    if (lessor is ParticularLessor) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('particular lessor',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.navyBlueTitle,
                  fontWeight: FontWeight.w400)),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('particular',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(lessor.name,
                        style: const TextStyle(
                            color: AppColors.navyBlueTitle,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('ad reference',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(lessor.flatReference.toString(),
                        style: const TextStyle(
                            color: AppColors.navyBlueTitle,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('professional lessor',
            style: TextStyle(
                fontSize: 20,
                color: AppColors.navyBlueTitle,
                fontWeight: FontWeight.w400)),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('professional',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(lessor.name,
                      style: const TextStyle(
                          color: AppColors.navyBlueTitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('ad reference',
                      style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(lessor.flatReference.toString(),
                      style: const TextStyle(
                          color: AppColors.navyBlueTitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lessor.realEstateName,
                      style: const TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(lessor.realEstateCity,
                      style: const TextStyle(
                          color: AppColors.navyBlueTitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.network(
                lessor.realEstateLogo,
                fit: BoxFit.cover,
              ),
            ),
          ],
        )
      ],
    );
  }
}
