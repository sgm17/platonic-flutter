import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/meet_repository/src/models/models.dart';
import 'meet_provider.dart';

class MeetNotifier extends StateNotifier<AsyncValue<MeetData>> {
  final Reader _read;

  MeetNotifier(this._read) : super(const AsyncValue.loading()) {
    _initializeMeetNotifier();
  }

  void _initializeMeetNotifier() async {
    final meets = await (_read(meetViewmodelProvider).retrieveMeets(1));
    state = AsyncValue.data(meets);
  }
}
