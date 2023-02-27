import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/university_repository/src/models/universities_list_model.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class UniversitiesListNotifier
    extends StateNotifier<AsyncValue<List<UniversitiesList>>> {
  final Ref ref;

  UniversitiesListNotifier(this.ref)
      : super(const AsyncValue<List<UniversitiesList>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    ref.read(httpViewmodelProvider).getIndexUniversitiesList().then((stories) {
      state = AsyncValue.data(stories);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }
}
