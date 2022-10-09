// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Flat _$$_FlatFromJson(Map<String, dynamic> json) => _$_Flat(
      lessor: json['lessor'],
      title: json['title'] as String,
      ubication:
          (json['ubication'] as List<dynamic>).map((e) => e as String).toList(),
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      flatProperties: FlatProperties.fromJson(
          json['flatProperties'] as Map<String, dynamic>),
      hood: json['hood'] as String,
      city: json['city'] as String,
      monthlyPrice: json['monthlyPrice'] as int,
      dipositAmount: json['dipositAmount'] as int?,
      dipositMinimumMonths: json['dipositMinimumMonths'] as int?,
      garagePriceIncluded: json['garagePriceIncluded'] as bool?,
      garagePrice: json['garagePrice'] as int?,
      images: (json['images'] as List<dynamic>)
          .map((e) => FlatImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxTenants: json['maxTenants'] as int?,
      tenants: (json['tenants'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      nearUniversities: (json['nearUniversities'] as List<dynamic>)
          .map((e) => University.fromJson(e as Map<String, dynamic>))
          .toList(),
      universityTransports: (json['universityTransports'] as List<dynamic>)
          .map((e) => UniversityTransport.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FlatToJson(_$_Flat instance) => <String, dynamic>{
      'lessor': instance.lessor,
      'title': instance.title,
      'ubication': instance.ubication,
      'coordinates': instance.coordinates,
      'flatProperties': instance.flatProperties,
      'hood': instance.hood,
      'city': instance.city,
      'monthlyPrice': instance.monthlyPrice,
      'dipositAmount': instance.dipositAmount,
      'dipositMinimumMonths': instance.dipositMinimumMonths,
      'garagePriceIncluded': instance.garagePriceIncluded,
      'garagePrice': instance.garagePrice,
      'images': instance.images,
      'maxTenants': instance.maxTenants,
      'tenants': instance.tenants,
      'nearUniversities': instance.nearUniversities,
      'universityTransports': instance.universityTransports,
      'reviews': instance.reviews,
    };
