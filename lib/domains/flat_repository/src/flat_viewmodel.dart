import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/flat_repository.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';

class FlatViewmodel implements FlatRepository {
  final Ref ref;

  FlatViewmodel(this.ref);

  @override
  Future<FlatHomeModel> getIndexFlatHome() {
    return Future.delayed(Duration(seconds: 1), () => flatHome);
  }

  @override
  Future<List<FlatsScrollModel>> getIndexFlatsScroll() {
    return Future.delayed(Duration(seconds: 1), () => flatsScroll);
  }

  @override
  Future<FlatModel> getShowFlatDetail({required int id}) {
    return Future.delayed(Duration(seconds: 1), () => flatDetail);
  }
}
