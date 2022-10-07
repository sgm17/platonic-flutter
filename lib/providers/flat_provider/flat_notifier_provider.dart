import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/flat_repository/src/models/models.dart';
import 'flat_provider.dart';

final flatNotifierProvider =
    StateNotifierProvider<FlatNotifier, AsyncValue<List<Flat>>>((ref) {
  return FlatNotifier(ref.read);
});
