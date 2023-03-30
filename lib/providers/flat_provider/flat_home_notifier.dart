import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/flat_viewmodel_provider.dart';

class FlatHomeNotifier extends StateNotifier<AsyncValue<FlatHomeModel?>> {
  final Ref ref;

  FlatHomeNotifier(this.ref)
      : super(const AsyncValue<FlatHomeModel>.loading()) {
    ref.read(flatViewmodelProvider).getIndexFlatHome().then((flat) {
      state = AsyncValue.data(flat);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }
}
