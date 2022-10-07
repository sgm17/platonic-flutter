import '../../domain/flat_repository/src/models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'flat_provider.dart';

class FlatNotifier extends StateNotifier<AsyncValue<List<Flat>>> {
  final Reader _read;

  FlatNotifier(this._read) : super(const AsyncValue.loading()) {
    _initializeFlatNotifier();
  }

  void _initializeFlatNotifier() async {
    final flats = await _read(flatViewmodelProvider).retrieveInitialFlats();
    state = AsyncValue.data(flats);
  }

  void retrieveFlatsPerIndex(int lastIndex) async {
    final actualState = state.asData?.value;
    if (actualState == null) return;

    final flats =
        await _read(flatViewmodelProvider).retrieveFlatsPerIndex(lastIndex);

    state = AsyncValue.data([...actualState, ...flats]);
  }
}
