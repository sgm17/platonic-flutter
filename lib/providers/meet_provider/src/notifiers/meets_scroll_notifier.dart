import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/meet_repository/src/models/meets_scroll_model.dart';
import '../providers/providers.dart';

class MeetsScrollNotifier extends StateNotifier<AsyncValue<List<MeetsScroll>>> {
  final Ref ref;

  MeetsScrollNotifier(this.ref)
      : super(const AsyncValue<List<MeetsScroll>>.loading()) {
    ref.watch(meetViewmodelProvider).retrieveMeetScroll().then((meets) {
      state = AsyncValue.data(meets);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }
}
