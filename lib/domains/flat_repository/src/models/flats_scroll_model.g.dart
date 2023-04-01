// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flats_scroll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlatsScrollModel _$FlatsScrollModelFromJson(Map json) => $checkedCreate(
      'FlatsScrollModel',
      json,
      ($checkedConvert) {
        final val = FlatsScrollModel(
          id: $checkedConvert('id', (v) => v as int),
          title: $checkedConvert('title', (v) => v as String),
          properties: $checkedConvert(
              'properties',
              (v) =>
                  PropertyModel.fromJson(Map<String, dynamic>.from(v as Map))),
          rentPricePerMonthInCents:
              $checkedConvert('rent_price_per_month_in_cents', (v) => v as int),
          electricityPriceInCents:
              $checkedConvert('electricity_price_in_cents', (v) => v as int),
          bookMark: $checkedConvert('book_mark', (v) => v as bool?),
          transport: $checkedConvert(
              'transport',
              (v) =>
                  TransportModel.fromJson(Map<String, dynamic>.from(v as Map))),
          image: $checkedConvert('image', (v) => v as String),
          ownFlat: $checkedConvert('own_flat', (v) => v as bool),
          bedroom: $checkedConvert('bedroom', (v) => v as String),
          bathroom: $checkedConvert('bathroom', (v) => v as String),
          built: $checkedConvert('built', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'rentPricePerMonthInCents': 'rent_price_per_month_in_cents',
        'electricityPriceInCents': 'electricity_price_in_cents',
        'bookMark': 'book_mark',
        'ownFlat': 'own_flat'
      },
    );

Map<String, dynamic> _$FlatsScrollModelToJson(FlatsScrollModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'properties': instance.properties.toJson(),
      'rent_price_per_month_in_cents': instance.rentPricePerMonthInCents,
      'electricity_price_in_cents': instance.electricityPriceInCents,
      'book_mark': instance.bookMark,
      'transport': instance.transport.toJson(),
      'image': instance.image,
      'own_flat': instance.ownFlat,
      'bedroom': instance.bedroom,
      'bathroom': instance.bathroom,
      'built': instance.built,
    };
