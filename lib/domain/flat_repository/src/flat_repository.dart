import 'models/flat_model.dart';

abstract class FlatRepository {
  Future<List<Flat>> retrieveInitialFlats();
  Future<List<Flat>> retrieveFlatsPerIndex(int lastIndex);
}
