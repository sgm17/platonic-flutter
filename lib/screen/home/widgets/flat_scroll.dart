import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/api_data.dart';
import 'package:platonic/domain/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/flat_notifier.dart';

import 'widgets.dart';

class FlatScroll extends ConsumerWidget {
  const FlatScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatProvider = ref.watch(flatNotifierProvider);

    return flatProvider.when(
        data: (List<Flat> flats) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: flats.length,
              itemBuilder: (context, index) {
                final flat = flats[index];
                final first = index == 0;
                final last = index == flats.length - 1;

                final flatItemProperties =
                    FlatItemProperties(flat, first, last);

                return FlatItem(flatItemProperties: flatItemProperties);
              });
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
