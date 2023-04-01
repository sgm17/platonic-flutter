// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlatModel _$FlatModelFromJson(Map json) => $checkedCreate(
      'FlatModel',
      json,
      ($checkedConvert) {
        final val = FlatModel(
          id: $checkedConvert('id', (v) => v as int),
          owner: $checkedConvert('owner',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
          tenants: $checkedConvert(
              'tenants',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      AppUser.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          properties: $checkedConvert(
              'properties',
              (v) =>
                  PropertyModel.fromJson(Map<String, dynamic>.from(v as Map))),
          geometry: $checkedConvert(
              'geometry',
              (v) => (v as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
          currency: $checkedConvert(
              'currency', (v) => $enumDecode(_$CurrencyEnumMap, v)),
          rentPricePerMonthInCents:
              $checkedConvert('rent_price_per_month_in_cents', (v) => v as int),
          advancePriceInCents:
              $checkedConvert('advance_price_in_cents', (v) => v as int),
          electricityPriceInCents:
              $checkedConvert('electricity_price_in_cents', (v) => v as int),
          availableFrom: $checkedConvert(
              'available_from', (v) => DateTime.parse(v as String)),
          maxMonthsStay: $checkedConvert('max_months_stay', (v) => v as String),
          minMonthsStay: $checkedConvert('min_months_stay', (v) => v as String),
          tenantsNumber: $checkedConvert('tenants_number', (v) => v as String),
          bedroom: $checkedConvert('bedroom', (v) => v as String),
          bathroom: $checkedConvert('bathroom', (v) => v as String),
          built: $checkedConvert('built', (v) => v as int),
          floor: $checkedConvert('floor', (v) => v as int),
          features: $checkedConvert(
              'features',
              (v) => (v as List<dynamic>)
                  .map((e) => FeatureModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          transports: $checkedConvert(
              'transports',
              (v) => (v as List<dynamic>)
                  .map((e) => TransportModel.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          images: $checkedConvert('images', (v) => v as List<dynamic>),
          bookMark: $checkedConvert('book_mark', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'rentPricePerMonthInCents': 'rent_price_per_month_in_cents',
        'advancePriceInCents': 'advance_price_in_cents',
        'electricityPriceInCents': 'electricity_price_in_cents',
        'availableFrom': 'available_from',
        'maxMonthsStay': 'max_months_stay',
        'minMonthsStay': 'min_months_stay',
        'tenantsNumber': 'tenants_number',
        'bookMark': 'book_mark'
      },
    );

Map<String, dynamic> _$FlatModelToJson(FlatModel instance) => <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner.toJson(),
      'tenants': instance.tenants.map((e) => e.toJson()).toList(),
      'title': instance.title,
      'description': instance.description,
      'properties': instance.properties.toJson(),
      'geometry': instance.geometry,
      'currency': _$CurrencyEnumMap[instance.currency]!,
      'rent_price_per_month_in_cents': instance.rentPricePerMonthInCents,
      'advance_price_in_cents': instance.advancePriceInCents,
      'electricity_price_in_cents': instance.electricityPriceInCents,
      'available_from': instance.availableFrom.toIso8601String(),
      'max_months_stay': instance.maxMonthsStay,
      'min_months_stay': instance.minMonthsStay,
      'tenants_number': instance.tenantsNumber,
      'bedroom': instance.bedroom,
      'bathroom': instance.bathroom,
      'built': instance.built,
      'floor': instance.floor,
      'features': instance.features.map((e) => e.toJson()).toList(),
      'transports': instance.transports.map((e) => e.toJson()).toList(),
      'images': instance.images,
      'book_mark': instance.bookMark,
    };

const _$CurrencyEnumMap = {
  Currency.eur: 0,
  Currency.mxn: 1,
  Currency.cop: 2,
};
