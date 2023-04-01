import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

final suggestionsProvider = StateProvider<List<PlaceModel>>((ref) {
  final flatCreateState = ref.watch(flatCreateProvider);

  return flatCreateState.properties != PropertyModel.emptyProperties &&
          flatCreateState.geometry != emptyGeometry
      ? [
          PlaceModel(
              geometry: flatCreateState.geometry,
              properties: flatCreateState.properties)
        ]
      : [];
});
