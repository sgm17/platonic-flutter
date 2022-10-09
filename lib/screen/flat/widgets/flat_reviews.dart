import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/domain/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';

class FlatReviews extends ConsumerWidget {
  const FlatReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);

    return SizedBox(
      height: 422,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.star,
                color: AppColors.navyBlueTitle,
                size: 25,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                  "${(flat.reviews.map((e) => e.rating).toList().reduce((a, b) => a + b) / flat.reviews.length).toString()} · ${flat.reviews.length} reviews",
                  style: const TextStyle(
                      fontSize: 20,
                      color: AppColors.navyBlueTitle,
                      fontWeight: FontWeight.bold))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: flat.reviews.length,
              itemBuilder: (context, index) {
                final flatReview = flat.reviews[index];

                return _buildReviewItem(flatReview);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildReviewItem(Review review) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 236,
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.strongWhite),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage('assets/images/defaultprofile.jpg'),
                ),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(review.reviewer.username,
                        style: const TextStyle(
                            color: AppColors.navyBlueTitle,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(review.reviewer.universityName,
                        style: const TextStyle(
                            color: AppColors.navyBlueTitle,
                            fontWeight: FontWeight.w400,
                            fontSize: 13)),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(review.comments,
                style: const TextStyle(
                    color: AppColors.navyBlueTitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }
}
