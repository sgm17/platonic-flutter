import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/flat_viewmodel.dart';

final flatViewmodelProvider =
    Provider<FlatViewmodel>((ref) => FlatViewmodel(ref));
