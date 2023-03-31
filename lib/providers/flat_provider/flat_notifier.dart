import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/flat_error_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class FlatNotifier extends StateNotifier<AsyncValue<FlatModel>> {
  final Ref ref;
  final int activeFlatIdProvider;

  FlatNotifier(this.ref, this.activeFlatIdProvider)
      : super(const AsyncValue.loading()) {
    initialize(activeFlatIdProvider);
  }

  Future<void> initialize(int activeFlatIdProvider) async {
    try {
      final flat = await ref
          .read(flatViewmodelProvider)
          .getShowFlatDetail(flatId: activeFlatIdProvider);

      state = AsyncValue.data(flat);
    } on ErrorApp catch (e) {
      ref.read(flatErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<bool?> addOrRemoveTenantFromFlat(
      {required String email, required int flatId}) async {
    try {
      final newTenants = await ref
          .read(httpViewmodelProvider)
          .postAddRemoveTenant(tenantEmail: email, flatId: flatId);

      state = state.when(
          data: (data) {
            final newState = data.copyWith(tenants: newTenants);
            return AsyncValue.data(newState);
          },
          error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
          loading: () => const AsyncValue.loading());

      return true;
    } on ErrorApp catch (e) {
      ref.read(flatErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
    return false;
  }

  void addOrRemoveBookmarkDetail({required bool bookmark}) {
    state = state.when(
        data: (data) {
          final newState = data.copyWith(bookMark: bookmark);
          return AsyncValue.data(newState);
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: () => const AsyncValue.loading());
  }

  Future<void> deleteFlat({required int flatId}) async {
    try {
      await ref.read(httpViewmodelProvider).deleteDestroyFlat(flatId: flatId);

      ref.read(flatsScrollProvider.notifier).deleteFlat(flatId: flatId);
      ref.read(flatHomeProvider.notifier).deleteHomeFlat(flatId: flatId);
    } on ErrorApp catch (e) {
      ref.read(flatErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
