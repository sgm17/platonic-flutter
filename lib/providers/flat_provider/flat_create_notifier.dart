import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlatCreateNotifier extends StateNotifier<FlatModel> {
  final Ref ref;

  FlatCreateNotifier(this.ref) : super(FlatModel.emptyFlat);

  void setEmptyState() => state = FlatModel.emptyFlat
      .copyWith(owner: state.owner, transports: state.transports);

  void setEditState({required FlatModel flat}) => state = flat;

  void setGeometryProperties(
          {required List<double> geometry,
          required PropertyModel properties}) =>
      state = state.copyWith(geometry: geometry, properties: properties);

  void setRentPerMonth({required int rentPricePerMonth}) =>
      state = state.copyWith(rentPricePerMonthInCents: rentPricePerMonth * 100);

  void setCurrency({required Currency currency}) =>
      state = state.copyWith(currency: currency);

  void setAdvance({required int advancePrice}) =>
      state = state.copyWith(advancePriceInCents: advancePrice * 100);

  void setElectricity({required int electricityPrice}) =>
      state = state.copyWith(electricityPriceInCents: electricityPrice * 100);

  void setAvailable({required DateTime availableFrom}) =>
      state = state.copyWith(availableFrom: availableFrom);

  void setMaxMonths({required String maxMonthsStay}) =>
      state = state.copyWith(maxMonthsStay: maxMonthsStay);

  void setMinMonths({required String minMonthsStay}) =>
      state = state.copyWith(minMonthsStay: minMonthsStay);

  void setTenants({required String tenantsNumber}) =>
      state = state.copyWith(tenantsNumber: tenantsNumber);

  void setBedrooms({required String bedroom}) =>
      state = state.copyWith(bedroom: bedroom);

  void setBathrooms({required String bathroom}) =>
      state = state.copyWith(bathroom: bathroom);

  void setFloor({required int floor}) => state = state.copyWith(floor: floor);

  void setBuilt({required int built}) => state = state.copyWith(built: built);

  void setFeature({required FeatureModel featureModel}) {
    if (state.features.contains(featureModel)) {
      state = state.copyWith(
          features: state.features.where((e) => e != featureModel).toList());
    } else {
      state = state.copyWith(features: [featureModel, ...state.features]);
    }
  }

  void setTransport({required TransportModel transport}) {
    if (transport.id == 0) {
      state = state.copyWith(transports: [transport, ...state.transports]);
    } else {
      state = state.copyWith(
          transports: state.transports
              .map((t) => t.id == transport.id ? transport : t)
              .toList());
    }
  }

  void setTitle({required String title}) {
    state = state.copyWith(title: title);
  }

  void setDescription({required String description}) {
    state = state.copyWith(description: description);
  }

  void deleteImage({required String image}) {
    state =
        state.copyWith(images: state.images.where((e) => e != image).toList());
  }

  void setImages({required List<String> images}) {
    final actualImages = state.images.toSet();
    final newImages = images.where((image) => !actualImages.contains(image));
    final allImages = [...actualImages, ...newImages];
    state = state.copyWith(images: allImages);
  }
}
