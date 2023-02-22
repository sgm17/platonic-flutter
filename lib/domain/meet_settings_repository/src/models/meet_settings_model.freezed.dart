// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetSettings _$MeetSettingsFromJson(Map<String, dynamic> json) {
  return _MeetSettings.fromJson(json);
}

/// @nodoc
mixin _$MeetSettings {
  bool get meetStatus => throw _privateConstructorUsedError;
  Sex get sexToMeet => throw _privateConstructorUsedError;
  University? get universityToMeet => throw _privateConstructorUsedError;
  List<Faculty> get facultiesToMeet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetSettingsCopyWith<MeetSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetSettingsCopyWith<$Res> {
  factory $MeetSettingsCopyWith(
          MeetSettings value, $Res Function(MeetSettings) then) =
      _$MeetSettingsCopyWithImpl<$Res, MeetSettings>;
  @useResult
  $Res call(
      {bool meetStatus,
      Sex sexToMeet,
      University? universityToMeet,
      List<Faculty> facultiesToMeet});

  $UniversityCopyWith<$Res>? get universityToMeet;
}

/// @nodoc
class _$MeetSettingsCopyWithImpl<$Res, $Val extends MeetSettings>
    implements $MeetSettingsCopyWith<$Res> {
  _$MeetSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetStatus = null,
    Object? sexToMeet = null,
    Object? universityToMeet = freezed,
    Object? facultiesToMeet = null,
  }) {
    return _then(_value.copyWith(
      meetStatus: null == meetStatus
          ? _value.meetStatus
          : meetStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      sexToMeet: null == sexToMeet
          ? _value.sexToMeet
          : sexToMeet // ignore: cast_nullable_to_non_nullable
              as Sex,
      universityToMeet: freezed == universityToMeet
          ? _value.universityToMeet
          : universityToMeet // ignore: cast_nullable_to_non_nullable
              as University?,
      facultiesToMeet: null == facultiesToMeet
          ? _value.facultiesToMeet
          : facultiesToMeet // ignore: cast_nullable_to_non_nullable
              as List<Faculty>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UniversityCopyWith<$Res>? get universityToMeet {
    if (_value.universityToMeet == null) {
      return null;
    }

    return $UniversityCopyWith<$Res>(_value.universityToMeet!, (value) {
      return _then(_value.copyWith(universityToMeet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeetSettingsCopyWith<$Res>
    implements $MeetSettingsCopyWith<$Res> {
  factory _$$_MeetSettingsCopyWith(
          _$_MeetSettings value, $Res Function(_$_MeetSettings) then) =
      __$$_MeetSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool meetStatus,
      Sex sexToMeet,
      University? universityToMeet,
      List<Faculty> facultiesToMeet});

  @override
  $UniversityCopyWith<$Res>? get universityToMeet;
}

/// @nodoc
class __$$_MeetSettingsCopyWithImpl<$Res>
    extends _$MeetSettingsCopyWithImpl<$Res, _$_MeetSettings>
    implements _$$_MeetSettingsCopyWith<$Res> {
  __$$_MeetSettingsCopyWithImpl(
      _$_MeetSettings _value, $Res Function(_$_MeetSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetStatus = null,
    Object? sexToMeet = null,
    Object? universityToMeet = freezed,
    Object? facultiesToMeet = null,
  }) {
    return _then(_$_MeetSettings(
      meetStatus: null == meetStatus
          ? _value.meetStatus
          : meetStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      sexToMeet: null == sexToMeet
          ? _value.sexToMeet
          : sexToMeet // ignore: cast_nullable_to_non_nullable
              as Sex,
      universityToMeet: freezed == universityToMeet
          ? _value.universityToMeet
          : universityToMeet // ignore: cast_nullable_to_non_nullable
              as University?,
      facultiesToMeet: null == facultiesToMeet
          ? _value._facultiesToMeet
          : facultiesToMeet // ignore: cast_nullable_to_non_nullable
              as List<Faculty>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetSettings implements _MeetSettings {
  const _$_MeetSettings(
      {required this.meetStatus,
      required this.sexToMeet,
      this.universityToMeet,
      required final List<Faculty> facultiesToMeet})
      : _facultiesToMeet = facultiesToMeet;

  factory _$_MeetSettings.fromJson(Map<String, dynamic> json) =>
      _$$_MeetSettingsFromJson(json);

  @override
  final bool meetStatus;
  @override
  final Sex sexToMeet;
  @override
  final University? universityToMeet;
  final List<Faculty> _facultiesToMeet;
  @override
  List<Faculty> get facultiesToMeet {
    if (_facultiesToMeet is EqualUnmodifiableListView) return _facultiesToMeet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facultiesToMeet);
  }

  @override
  String toString() {
    return 'MeetSettings(meetStatus: $meetStatus, sexToMeet: $sexToMeet, universityToMeet: $universityToMeet, facultiesToMeet: $facultiesToMeet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetSettings &&
            (identical(other.meetStatus, meetStatus) ||
                other.meetStatus == meetStatus) &&
            (identical(other.sexToMeet, sexToMeet) ||
                other.sexToMeet == sexToMeet) &&
            (identical(other.universityToMeet, universityToMeet) ||
                other.universityToMeet == universityToMeet) &&
            const DeepCollectionEquality()
                .equals(other._facultiesToMeet, _facultiesToMeet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meetStatus, sexToMeet,
      universityToMeet, const DeepCollectionEquality().hash(_facultiesToMeet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetSettingsCopyWith<_$_MeetSettings> get copyWith =>
      __$$_MeetSettingsCopyWithImpl<_$_MeetSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetSettingsToJson(
      this,
    );
  }
}

abstract class _MeetSettings implements MeetSettings {
  const factory _MeetSettings(
      {required final bool meetStatus,
      required final Sex sexToMeet,
      final University? universityToMeet,
      required final List<Faculty> facultiesToMeet}) = _$_MeetSettings;

  factory _MeetSettings.fromJson(Map<String, dynamic> json) =
      _$_MeetSettings.fromJson;

  @override
  bool get meetStatus;
  @override
  Sex get sexToMeet;
  @override
  University? get universityToMeet;
  @override
  List<Faculty> get facultiesToMeet;
  @override
  @JsonKey(ignore: true)
  _$$_MeetSettingsCopyWith<_$_MeetSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
