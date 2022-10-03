import 'package:platonic/domain/flats_data.dart';
import 'package:platonic/domain/flat_repository/flat_repository.dart';
import 'package:platonic/domain/flat_repository/src/models/flat_model.dart';

class FlatViewmodel implements FlatRepository {
  static const FLATS_PER_REQUEST = 10;

  @override
  Future<List<Flat>> retrieveFlatsPerIndex(int lastIndex) {
    return Future.delayed(
        const Duration(seconds: 1),
        () => flats
            .getRange(lastIndex + 1, lastIndex + 1 + FLATS_PER_REQUEST)
            .toList());
  }

  @override
  Future<List<Flat>> retrieveInitialFlats() {
    return Future.delayed(const Duration(seconds: 1),
        () => flats.getRange(0, FLATS_PER_REQUEST).toList());
  }
}
