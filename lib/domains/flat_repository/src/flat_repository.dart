import 'package:platonic/domains/flat_repository/src/models/models.dart';

abstract class FlatRepository {
  Future<FlatHomeModel> getIndexFlatHome();
  Future<List<FlatsScrollModel>> getIndexFlatsScroll();
  Future<FlatModel> getShowFlatDetail({required int flatId});
}
