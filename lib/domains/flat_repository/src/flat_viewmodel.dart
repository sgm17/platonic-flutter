import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/flat_repository.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class FlatViewmodel implements FlatRepository {
  final Ref ref;

  FlatViewmodel(this.ref);

  @override
  Future<FlatHomeModel> getIndexFlatHome() {
    return ref.read(httpViewmodelProvider).getIndexHomeFlat();
  }

  @override
  Future<List<FlatsScrollModel>> getIndexFlatsScroll() {
    return ref.read(httpViewmodelProvider).getIndexFlats();
  }

  @override
  Future<FlatModel> getShowFlatDetail({required int flatId}) {
    return ref.read(httpViewmodelProvider).getShowFlat(flatId: flatId);
  }
}
