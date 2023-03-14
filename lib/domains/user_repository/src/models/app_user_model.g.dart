// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map json) => $checkedCreate(
      'AppUser',
      json,
      ($checkedConvert) {
        final val = AppUser(
          id: $checkedConvert('id', (v) => v as int),
          uid: $checkedConvert('uid', (v) => v as String),
          cloudToken: $checkedConvert('cloud_token', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          sex: $checkedConvert('sex', (v) => $enumDecode(_$SexEnumMap, v)),
          age: $checkedConvert('age', (v) => v as int),
          profileImage: $checkedConvert('profile_image', (v) => v as String?),
          meetPicture: $checkedConvert('meet_picture', (v) => v as String?),
          universityId: $checkedConvert('university_id', (v) => v as int),
          facultyId: $checkedConvert('faculty_id', (v) => v as int),
          studyId: $checkedConvert('study_id', (v) => v as int),
          university: $checkedConvert(
              'university',
              (v) => v == null
                  ? null
                  : University.fromJson(Map<String, dynamic>.from(v as Map))),
          faculty: $checkedConvert(
              'faculty',
              (v) => v == null
                  ? null
                  : Faculty.fromJson(Map<String, dynamic>.from(v as Map))),
          study: $checkedConvert(
              'study',
              (v) => v == null
                  ? null
                  : Study.fromJson(Map<String, dynamic>.from(v as Map))),
          meetStatus: $checkedConvert('meet_status', (v) => v as bool?),
          sexToMeet: $checkedConvert(
              'sex_to_meet', (v) => $enumDecodeNullable(_$SexEnumMap, v)),
          universityToMeet: $checkedConvert(
              'university_to_meet',
              (v) => v == null
                  ? null
                  : University.fromJson(Map<String, dynamic>.from(v as Map))),
          universityToMeetId:
              $checkedConvert('university_to_meet_id', (v) => v as int?),
          facultiesToMeet: $checkedConvert(
              'faculties_to_meet',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Faculty.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'cloudToken': 'cloud_token',
        'profileImage': 'profile_image',
        'meetPicture': 'meet_picture',
        'universityId': 'university_id',
        'facultyId': 'faculty_id',
        'studyId': 'study_id',
        'meetStatus': 'meet_status',
        'sexToMeet': 'sex_to_meet',
        'universityToMeet': 'university_to_meet',
        'universityToMeetId': 'university_to_meet_id',
        'facultiesToMeet': 'faculties_to_meet'
      },
    );

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'cloud_token': instance.cloudToken,
      'name': instance.name,
      'email': instance.email,
      'sex': _$SexEnumMap[instance.sex]!,
      'age': instance.age,
      'profile_image': instance.profileImage,
      'meet_picture': instance.meetPicture,
      'university_id': instance.universityId,
      'faculty_id': instance.facultyId,
      'study_id': instance.studyId,
      'university': instance.university?.toJson(),
      'faculty': instance.faculty?.toJson(),
      'study': instance.study?.toJson(),
      'meet_status': instance.meetStatus,
      'sex_to_meet': _$SexEnumMap[instance.sexToMeet],
      'university_to_meet': instance.universityToMeet?.toJson(),
      'university_to_meet_id': instance.universityToMeetId,
      'faculties_to_meet':
          instance.facultiesToMeet?.map((e) => e.toJson()).toList(),
    };

const _$SexEnumMap = {
  Sex.male: 0,
  Sex.female: 1,
};
