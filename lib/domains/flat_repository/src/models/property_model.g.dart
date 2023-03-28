// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyModel _$PropertyModelFromJson(Map json) => $checkedCreate(
      'PropertyModel',
      json,
      ($checkedConvert) {
        final val = PropertyModel(
          country: $checkedConvert('country', (v) => v as String),
          city: $checkedConvert('city', (v) => v as String),
          countrycode: $checkedConvert('countrycode', (v) => v as String),
          postcode: $checkedConvert('postcode', (v) => v as String),
          county: $checkedConvert('county', (v) => v as String?),
          housenumber: $checkedConvert('housenumber', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          state: $checkedConvert('state', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PropertyModelToJson(PropertyModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'countrycode': instance.countrycode,
      'postcode': instance.postcode,
      'county': instance.county,
      'housenumber': instance.housenumber,
      'name': instance.name,
      'state': instance.state,
    };
