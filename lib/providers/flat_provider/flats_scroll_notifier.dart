import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/flat_error_provider.dart';
import 'package:platonic/providers/error_provider/flats_scroll_error_provider.dart';
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
      ref.read(flatsScrollErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> createFlat({required FlatModel flat}) async {
    try {
      final newFlat =
          await ref.read(httpViewmodelProvider).postCreateFlat(flat: flat);

      final flatHomeModel = FlatHomeModel(
          id: newFlat.id,
          title: newFlat.title,
          properties: newFlat.properties,
          rentPricePerMonthInCents: newFlat.rentPricePerMonthInCents,
          electricityPriceInCents: newFlat.electricityPriceInCents,
          bedroom: newFlat.bedroom,
          bathroom: newFlat.bathroom,
          image: newFlat.image);

      ref
          .read(flatHomeProvider.notifier)
          .createHomeFlat(flatHomeModel: flatHomeModel);

      state = state.when(
          data: (data) {
            final newState = [newFlat, ...data];
            return AsyncValue.data(newState);
          },
          error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
          loading: () => const AsyncValue.loading());
    } on ErrorApp catch (e) {
      ref.read(flatErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  void deleteFlat({required int flatId}) {
    state = state.when(
        data: (data) {
          final newState = data.where((flat) => flat.id != flatId).toList();
          return AsyncValue.data(newState);
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: () => const AsyncValue.loading());
  }

  Future<void> addOrRemoveBookmarkScroll(
      {required int flatId, required bool isFlatsScroll}) async {
    try {
      final bookmark = await ref
          .read(httpViewmodelProvider)
          .postBookmarkFlat(flatId: flatId);

      if (isFlatsScroll) {
        state = state.when(
            data: (data) {
              final newState = data
                  .map((e) =>
                      e.id == flatId ? e.copyWith(bookMark: bookmark) : e)
                  .toList();
              return AsyncValue.data(newState);
            },
            error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
            loading: () => const AsyncValue.loading());
      } else {
        ref
            .read(flatProvider.notifier)
            .addOrRemoveBookmarkDetail(bookmark: bookmark);
      }
    } on ErrorApp catch (e) {
      if (isFlatsScroll) {
        ref.read(flatsScrollErrorProvider.notifier).state = e;
      } else {
        ref.read(flatErrorProvider.notifier).state = e;
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
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
    } on ErrorApp catch (e) {
      ref.read(flatsScrollErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
