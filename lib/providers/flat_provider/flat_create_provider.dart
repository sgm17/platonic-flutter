import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';

final flatCreateProvider =
    StateProvider<FlatModel>((ref) => FlatModel.emptyFlat);
