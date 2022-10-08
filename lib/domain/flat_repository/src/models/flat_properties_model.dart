import 'package:freezed_annotation/freezed_annotation.dart';
part 'flat_properties_model.freezed.dart';
part 'flat_properties_model.g.dart';

@freezed
abstract class FlatProperties with _$FlatProperties {
  const factory FlatProperties({
    required int builtMeters,
    int? utilMeters,
    int? rooms,
    required int bathrooms,
    required bool balcony,
    required bool fittedWardrobes,
    required List<FlatOrientation> flatOrientation,
    required Disposition disposition,
    required bool furnished,
    required bool equippedKitchen,
    required bool heating,
    HeatingType? heatingType,
    required FloorLocation floorLocation,
    int? floor,
    required bool elevator,
    required bool airConditioning,
    required bool terrace,
    required bool swimmingPool,
    required bool storageRoom,
    required bool garage,
    required bool greenZones,
    int? builtYear,
    required EnergyCertificate consumption,
    required EnergyCertificate emissions,
    int? consumptionPerYear,
    int? emissionsPerYear,
  }) = _FlatProperties;

  factory FlatProperties.fromJson(Map<String, Object?> json) =>
      _$FlatPropertiesFromJson(json);
}

enum HeatingType { naturalGas, gasoil, none }

enum FlatOrientation { north, est, west, south }

enum FloorLocation { low, attic, floor }

enum EnergyCertificate { a, b, c, d, e, f, g, inProcess, notIndicated }

enum Disposition { inside, exterior }
