import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';
import '../../../providers/flat_provider/flat_provider.dart';
import '../../flat/flat.dart';
import 'widgets.dart';

class FlatScroll extends ConsumerWidget {
  const FlatScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatProvider = ref.watch(flatNotifierProvider);

    return flatProvider.when(
        data: (List<Flat> flats) {
          return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: const BouncingScrollPhysics(),
              itemCount: flats.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProviderScope(overrides: [
                            flatItemProvider.overrideWithValue(flats[index])
                          ], child: const FlatScreen()))),
                  child: ProviderScope(overrides: [
                    flatItemProvider.overrideWithValue(flats[index])
                  ], child: const FlatItem()),
                );
              });
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
