import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/error_provider/flats_scroll_error_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'widgets/widgets.dart';

/* Frame flats
    Autogenerated by FlutLab FTF Generator
  */

class FlatsScreen extends ConsumerWidget {
  const FlatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatsScrollState = ref.watch(flatsScrollProvider);
    final flatsScrollErrorState = ref.watch(flatsScrollErrorProvider);
    final flatSearchBarState = ref.watch(flatSearchBarProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (flatsScrollErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  errorApp: flatsScrollErrorState,
                ));

        ref.read(flatsScrollErrorProvider.notifier).state = null;
      }
    });

    List<FlatsScrollModel> filterFlats(
        {required List<FlatsScrollModel> flats,
        required String searchBarState}) {
      return searchBarState.trim().isEmpty
          ? flats
          : flats
              .where((flat) => flat.properties.city
                  .toLowerCase()
                  .contains(searchBarState.toLowerCase()))
              .toList();
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: Column(
          children: [
            const FlatsScrollHeader(),
            Expanded(
              child: flatsScrollState.when(
                data: (data) {
                  final flats = filterFlats(
                      flats: data, searchBarState: flatSearchBarState);

                  if (data.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 22.0, horizontal: 22.0),
                      child: Column(
                        children: [
                          FlatScrollItemEmpty(),
                        ],
                      ),
                    );
                  }
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        vertical: 22.0, horizontal: 22.0),
                    itemCount: flats.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 22.0,
                    ),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 225.0,
                        child: ProviderScope(overrides: [
                          flatScrollProvider.overrideWithValue(flats[index])
                        ], child: const FlatScrollItem()),
                      );
                    },
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
              ),
            )
          ],
        ));
  }
}
