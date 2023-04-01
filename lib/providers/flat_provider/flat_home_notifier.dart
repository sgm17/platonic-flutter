import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/flat_provider/flat_viewmodel_provider.dart';

class FlatHomeNotifier extends StateNotifier<AsyncValue<FlatHomeModel?>> {
  final Ref ref;

  FlatHomeNotifier(this.ref)
      : super(const AsyncValue<FlatHomeModel>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final flat = await ref.read(flatViewmodelProvider).getIndexFlatHome();
      state = AsyncValue.data(flat);
    } on ErrorApp catch (e) {
      ref.read(homeErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  void createHomeFlat({required FlatHomeModel flatHomeModel}) {
    state = state.when(
        data: (data) {
          if (data == null) {
            return const AsyncValue.data(null);
          } else {
            return AsyncValue.data(flatHomeModel);
          }
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: () => const AsyncValue.loading());
  }

  void deleteHomeFlat({required int flatId}) {
    state = state.when(
        data: (data) {
          if (data?.id == flatId) {
            return const AsyncValue.data(null);
          } else {
            return AsyncValue.data(data);
          }
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: () => const AsyncValue.loading());
  }
}
