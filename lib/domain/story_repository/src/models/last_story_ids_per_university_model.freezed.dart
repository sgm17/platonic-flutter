// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_story_ids_per_university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastStoryIdsPerUniversity _$LastStoryIdsPerUniversityFromJson(
    Map<String, dynamic> json) {
  return _LastStoryIdsPerUniversity.fromJson(json);
}

/// @nodoc
mixin _$LastStoryIdsPerUniversity {
  int get universityId => throw _privateConstructorUsedError;
  int get lastStoryIdPerUniversity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastStoryIdsPerUniversityCopyWith<LastStoryIdsPerUniversity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastStoryIdsPerUniversityCopyWith<$Res> {
  factory $LastStoryIdsPerUniversityCopyWith(LastStoryIdsPerUniversity value,
          $Res Function(LastStoryIdsPerUniversity) then) =
      _$LastStoryIdsPerUniversityCopyWithImpl<$Res>;
  $Res call({int universityId, int lastStoryIdPerUniversity});
}

/// @nodoc
class _$LastStoryIdsPerUniversityCopyWithImpl<$Res>
    implements $LastStoryIdsPerUniversityCopyWith<$Res> {
  _$LastStoryIdsPerUniversityCopyWithImpl(this._value, this._then);

  final LastStoryIdsPerUniversity _value;
  // ignore: unused_field
  final $Res Function(LastStoryIdsPerUniversity) _then;

  @override
  $Res call({
    Object? universityId = freezed,
    Object? lastStoryIdPerUniversity = freezed,
  }) {
    return _then(_value.copyWith(
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      lastStoryIdPerUniversity: lastStoryIdPerUniversity == freezed
          ? _value.lastStoryIdPerUniversity
          : lastStoryIdPerUniversity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LastStoryIdsPerUniversityCopyWith<$Res>
    implements $LastStoryIdsPerUniversityCopyWith<$Res> {
  factory _$$_LastStoryIdsPerUniversityCopyWith(
          _$_LastStoryIdsPerUniversity value,
          $Res Function(_$_LastStoryIdsPerUniversity) then) =
      __$$_LastStoryIdsPerUniversityCopyWithImpl<$Res>;
  @override
  $Res call({int universityId, int lastStoryIdPerUniversity});
}

/// @nodoc
class __$$_LastStoryIdsPerUniversityCopyWithImpl<$Res>
    extends _$LastStoryIdsPerUniversityCopyWithImpl<$Res>
    implements _$$_LastStoryIdsPerUniversityCopyWith<$Res> {
  __$$_LastStoryIdsPerUniversityCopyWithImpl(
      _$_LastStoryIdsPerUniversity _value,
      $Res Function(_$_LastStoryIdsPerUniversity) _then)
      : super(_value, (v) => _then(v as _$_LastStoryIdsPerUniversity));

  @override
  _$_LastStoryIdsPerUniversity get _value =>
      super._value as _$_LastStoryIdsPerUniversity;

  @override
  $Res call({
    Object? universityId = freezed,
    Object? lastStoryIdPerUniversity = freezed,
  }) {
    return _then(_$_LastStoryIdsPerUniversity(
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      lastStoryIdPerUniversity: lastStoryIdPerUniversity == freezed
          ? _value.lastStoryIdPerUniversity
          : lastStoryIdPerUniversity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastStoryIdsPerUniversity implements _LastStoryIdsPerUniversity {
  const _$_LastStoryIdsPerUniversity(
      {required this.universityId, required this.lastStoryIdPerUniversity});

  factory _$_LastStoryIdsPerUniversity.fromJson(Map<String, dynamic> json) =>
      _$$_LastStoryIdsPerUniversityFromJson(json);

  @override
  final int universityId;
  @override
  final int lastStoryIdPerUniversity;

  @override
  String toString() {
    return 'LastStoryIdsPerUniversity(universityId: $universityId, lastStoryIdPerUniversity: $lastStoryIdPerUniversity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastStoryIdsPerUniversity &&
            const DeepCollectionEquality()
                .equals(other.universityId, universityId) &&
            const DeepCollectionEquality().equals(
                other.lastStoryIdPerUniversity, lastStoryIdPerUniversity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(universityId),
      const DeepCollectionEquality().hash(lastStoryIdPerUniversity));

  @JsonKey(ignore: true)
  @override
  _$$_LastStoryIdsPerUniversityCopyWith<_$_LastStoryIdsPerUniversity>
      get copyWith => __$$_LastStoryIdsPerUniversityCopyWithImpl<
          _$_LastStoryIdsPerUniversity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastStoryIdsPerUniversityToJson(
      this,
    );
  }
}

abstract class _LastStoryIdsPerUniversity implements LastStoryIdsPerUniversity {
  const factory _LastStoryIdsPerUniversity(
          {required final int universityId,
          required final int lastStoryIdPerUniversity}) =
      _$_LastStoryIdsPerUniversity;

  factory _LastStoryIdsPerUniversity.fromJson(Map<String, dynamic> json) =
      _$_LastStoryIdsPerUniversity.fromJson;

  @override
  int get universityId;
  @override
  int get lastStoryIdPerUniversity;
  @override
  @JsonKey(ignore: true)
  _$$_LastStoryIdsPerUniversityCopyWith<_$_LastStoryIdsPerUniversity>
      get copyWith => throw _privateConstructorUsedError;
}
