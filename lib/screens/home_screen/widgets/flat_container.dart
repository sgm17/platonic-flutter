import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FlatContainer extends ConsumerWidget {
  const FlatContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatHomeState = ref.watch(flatHomeProvider);

    return SizedBox(
      height: 139.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: 18.0,
                  child: HomeTitle(
                      title: AppLocalizations.of(context)!.homeFlatsTitle)),
              const SizedBox(height: 15.0, child: SeeAll())
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
              height: 110.0,
              child: flatHomeState.when(
                data: (flat) {
                  if (flat == null) {
                    return const FlatItemEmpty();
                  }

                  return SizedBox(
                    height: 110.0,
                    child: ProviderScope(overrides: [
                      flatItemHomeProvider.overrideWithValue(flat)
                    ], child: const FlatItem()),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                error: (error, stackTrace) {
                  return Text(error.toString());
                },
              ))
        ],
      ),
    );
  }
}
