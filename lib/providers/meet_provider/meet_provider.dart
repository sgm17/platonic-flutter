import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/meet_repository/src/models/models.dart';

import '../../domain/meet_repository/meet_repository.dart';

final meetNotifierProvider =
    StateNotifierProvider<MeetNotifier, AsyncValue<List<Meet>>>((ref) {
  return MeetNotifier(ref.read);
});

final meetViewmodelProvider = Provider<MeetViewmodel>((ref) {
  return MeetViewmodel();
});

class MeetNotifier extends StateNotifier<AsyncValue<List<Meet>>> {
  final Reader _read;

  MeetNotifier(this._read) : super(const AsyncValue.loading()) {
    _initializeMeetNotifier();
  }

  void _initializeMeetNotifier() async {
    final meets = await (_read(meetViewmodelProvider).retrieveMeets(1));
    state = AsyncValue.data(meets);
  }
}
