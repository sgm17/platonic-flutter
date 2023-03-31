import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

class CreateFlatAddressSuggestion extends ConsumerWidget {
  const CreateFlatAddressSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestionsState = ref.watch(suggestionsProvider);

    void toggleSuggestion(PlaceModel place) {
      ref.read(flatCreateProvider.notifier).setGeometryProperties(
          geometry: place.geometry, properties: place.properties);

      ref
          .read(mapControllerProvider)
          .move(LatLng(place.geometry[1], place.geometry[0]), 16.0);

      print(place.properties.name);

      ref.read(flatAddressInputFocusProvider).unfocus();
    }

    if (suggestionsState.isEmpty) return const SizedBox.shrink();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: suggestionsState.map((suggestion) {
            final index = suggestionsState.indexOf(suggestion);
            return GestureDetector(
              onTap: () => toggleSuggestion(suggestionsState[index]),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: BorderRadius.vertical(
                      top: index == 0
                          ? const Radius.circular(10.0)
                          : Radius.zero,
                      bottom: index == suggestionsState.length - 1
                          ? const Radius.circular(10.0)
                          : Radius.zero),
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '${suggestionsState[index].properties.name}, ${suggestionsState[index].properties.city}, ${suggestionsState[index].properties.state}',
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 130, 130, 132),
                    )),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
