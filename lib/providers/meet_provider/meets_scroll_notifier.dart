import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/meet_repository/src/models/meets_scroll_model.dart';
import 'package:platonic/providers/error_provider/home_error_provider.dart';
import 'package:platonic/providers/meet_provider/providers.dart';

class MeetsScrollNotifier extends StateNotifier<AsyncValue<List<MeetsScroll>>> {
  final Ref ref;

  MeetsScrollNotifier(this.ref)
      : super(const AsyncValue<List<MeetsScroll>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final meets = await ref.read(meetViewmodelProvider).getMeetsScroll();
      state = AsyncValue.data(meets);
    } on ErrorApp catch (e) {
      ref.read(homeErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
