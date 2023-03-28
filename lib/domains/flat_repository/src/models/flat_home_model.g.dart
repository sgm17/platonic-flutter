// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlatHomeModel _$FlatHomeModelFromJson(Map json) => $checkedCreate(
      'FlatHomeModel',
      json,
      ($checkedConvert) {
        final val = FlatHomeModel(
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
          bedroom: $checkedConvert('bedroom', (v) => v as String),
          bathroom: $checkedConvert('bathroom', (v) => v as String),
          image: $checkedConvert('image', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'rentPricePerMonthInCents': 'rent_price_per_month_in_cents',
        'electricityPriceInCents': 'electricity_price_in_cents'
      },
    );

Map<String, dynamic> _$FlatHomeModelToJson(FlatHomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'properties': instance.properties.toJson(),
      'rent_price_per_month_in_cents': instance.rentPricePerMonthInCents,
      'electricity_price_in_cents': instance.electricityPriceInCents,
      'bedroom': instance.bedroom,
      'bathroom': instance.bathroom,
      'image': instance.image,
    };
