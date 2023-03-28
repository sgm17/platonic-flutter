import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class FlatNotifier extends StateNotifier<AsyncValue<FlatModel>> {
  final Ref ref;

  FlatNotifier(this.ref) : super(const AsyncValue.loading()) {
    ref
        .read(flatViewmodelProvider)
        .getShowFlatDetail(id: ref.read(activeFlatIdProvider))
        .then((flat) {
      state = AsyncValue.data(flat);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
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
          loading: () => AsyncValue.loading());

      return true;
    } catch (e) {
      print(e);
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
        loading: () => AsyncValue.loading());
  }
}
