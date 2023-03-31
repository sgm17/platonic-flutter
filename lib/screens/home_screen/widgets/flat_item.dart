import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/active_flat_id_provider.dart';
import 'package:platonic/providers/flat_provider/flat_item_home_provider.dart';
import 'widgets.dart';

class FlatItem extends ConsumerWidget {
  const FlatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatItemHomeState = ref.watch(flatItemHomeProvider);

    void toggleFlatItemHome() {
      ref.read(activeFlatIdProvider.notifier).state = flatItemHomeState.id;
      Navigator.pushNamed(context, '/DetailScreen');
    }

    return GestureDetector(
      onTap: toggleFlatItemHome,
      child: SizedBox(
        height: 110.0,
        child: Row(
          children: [
            SizedBox(
              height: 110.0,
              width: 110.0,
              child: FlatItemImage(
                image: flatItemHomeState.image,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Expanded(
                child: FlatItemContent(
              bathroom: flatItemHomeState.bathroom,
              bedroom: flatItemHomeState.bedroom,
              electricityPriceInCents:
                  flatItemHomeState.electricityPriceInCents,
              rentPricePerMonthInCents:
                  flatItemHomeState.rentPricePerMonthInCents,
              title: flatItemHomeState.title,
              properties: flatItemHomeState.properties,
            ))
          ],
        ),
      ),
    );
  }
}
