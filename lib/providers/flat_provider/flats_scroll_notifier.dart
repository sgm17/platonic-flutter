import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class FlatsScrollNotifier
    extends StateNotifier<AsyncValue<List<FlatsScrollModel>>> {
  final Ref ref;

  FlatsScrollNotifier(this.ref) : super(const AsyncValue.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final flatsScroll =
          await ref.read(flatViewmodelProvider).getIndexFlatsScroll();
      state = AsyncValue.data(flatsScroll);
    } on ErrorApp catch (e) {
      
    } catch (e) {
            state = AsyncValue.error(e, StackTrace.current);

    }
  }

  Future<void> deleteFlat({required int flatId}) async {
    try {
      await ref.read(httpViewmodelProvider).deleteDestroyFlat(flatId: flatId);

      state = state.when(
          data: (data) {
            final newState = data.where((flat) => flat.id != flatId).toList();
            return AsyncValue.data(newState);
          },
          error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
          loading: () => const AsyncValue.loading());
    } onErrorApp catch (e) {
      print(e);
    }
  }

  Future<void> createFlat({required FlatModel flat}) async {
    try {
      final newFlat =
          await ref.read(httpViewmodelProvider).postCreateFlat(flat: flat);

      state = state.when(
          data: (data) {
            final newState = [newFlat, ...data];
            return AsyncValue.data(newState);
          },
          error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
          loading: () => const AsyncValue.loading());
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateFlat({required FlatModel flat}) async {
    try {
      final newFlat =
          await ref.read(httpViewmodelProvider).putUpdateFlat(flat: flat);

      state = state.when(
          data: (data) {
            final newState = [newFlat, ...data];
            return AsyncValue.data(newState);
          },
          error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
          loading: () => const AsyncValue.loading());
    } catch (e) {
      print(e);
    }
  }

  void addOrRemoveBookmarkScroll(
      {required bool bookmark, required int flatId}) {
    state = state.when(
        data: (data) {
          final newState = data
              .map((e) => e.id == flatId ? e.copyWith(bookMark: bookmark) : e)
              .toList();
          return AsyncValue.data(newState);
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: () => const AsyncValue.loading());
  }
}
