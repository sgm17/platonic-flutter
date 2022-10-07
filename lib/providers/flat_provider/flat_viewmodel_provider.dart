import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/flat_repository/flat_repository.dart';

final flatViewmodelProvider = Provider<FlatViewmodel>((ref) {
  return FlatViewmodel();
});
