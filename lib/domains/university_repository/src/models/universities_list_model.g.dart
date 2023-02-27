// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'universities_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UniversitiesList _$UniversitiesListFromJson(Map json) => $checkedCreate(
      'UniversitiesList',
      json,
      ($checkedConvert) {
        final val = UniversitiesList(
          id: $checkedConvert('id', (v) => v as int),
          university: $checkedConvert('university',
              (v) => University.fromJson(Map<String, dynamic>.from(v as Map))),
          faculties: $checkedConvert(
              'faculties',
              (v) => (v as List<dynamic>)
                  .map((e) => FacultiesList.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UniversitiesListToJson(UniversitiesList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'university': instance.university.toJson(),
      'faculties': instance.faculties.map((e) => e.toJson()).toList(),
    };
