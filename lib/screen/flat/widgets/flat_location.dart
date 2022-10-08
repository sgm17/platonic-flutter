import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';

class FlatLocation extends ConsumerWidget {
  const FlatLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('what is the address of the flat?',
            style: TextStyle(
                color: AppColors.navyBlueTitle,
                fontSize: 20,
                fontWeight: FontWeight.w400)),
        const SizedBox(
          height: 16,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 218,
            width: double.infinity,
            child: Image.asset(
              'assets/images/flat/flatexample.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text("${flat.city}, ${flat.hood}",
            style: const TextStyle(
                color: AppColors.navyBlueTitle,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 6)
      ],
    );
  }
}
