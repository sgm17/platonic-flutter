// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'universities_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UniversitiesList {
  University get university => throw _privateConstructorUsedError;
  List<FacultiesList> get faculties => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversitiesListCopyWith<UniversitiesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversitiesListCopyWith<$Res> {
  factory $UniversitiesListCopyWith(
          UniversitiesList value, $Res Function(UniversitiesList) then) =
      _$UniversitiesListCopyWithImpl<$Res, UniversitiesList>;
  @useResult
  $Res call({University university, List<FacultiesList> faculties});

  $UniversityCopyWith<$Res> get university;
}

/// @nodoc
class _$UniversitiesListCopyWithImpl<$Res, $Val extends UniversitiesList>
    implements $UniversitiesListCopyWith<$Res> {
  _$UniversitiesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? university = null,
    Object? faculties = null,
  }) {
    return _then(_value.copyWith(
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      faculties: null == faculties
          ? _value.faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<FacultiesList>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UniversityCopyWith<$Res> get university {
    return $UniversityCopyWith<$Res>(_value.university, (value) {
      return _then(_value.copyWith(university: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UniversitiesListCopyWith<$Res>
    implements $UniversitiesListCopyWith<$Res> {
  factory _$$_UniversitiesListCopyWith(
          _$_UniversitiesList value, $Res Function(_$_UniversitiesList) then) =
      __$$_UniversitiesListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({University university, List<FacultiesList> faculties});

  @override
  $UniversityCopyWith<$Res> get university;
}

/// @nodoc
class __$$_UniversitiesListCopyWithImpl<$Res>
    extends _$UniversitiesListCopyWithImpl<$Res, _$_UniversitiesList>
    implements _$$_UniversitiesListCopyWith<$Res> {
  __$$_UniversitiesListCopyWithImpl(
      _$_UniversitiesList _value, $Res Function(_$_UniversitiesList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? university = null,
    Object? faculties = null,
  }) {
    return _then(_$_UniversitiesList(
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      faculties: null == faculties
          ? _value._faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<FacultiesList>,
    ));
  }
}

/// @nodoc

class _$_UniversitiesList implements _UniversitiesList {
  const _$_UniversitiesList(
      {required this.university, required final List<FacultiesList> faculties})
      : _faculties = faculties;

  @override
  final University university;
  final List<FacultiesList> _faculties;
  @override
  List<FacultiesList> get faculties {
    if (_faculties is EqualUnmodifiableListView) return _faculties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculties);
  }

  @override
  String toString() {
    return 'UniversitiesList(university: $university, faculties: $faculties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversitiesList &&
            (identical(other.university, university) ||
                other.university == university) &&
            const DeepCollectionEquality()
                .equals(other._faculties, _faculties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, university, const DeepCollectionEquality().hash(_faculties));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversitiesListCopyWith<_$_UniversitiesList> get copyWith =>
      __$$_UniversitiesListCopyWithImpl<_$_UniversitiesList>(this, _$identity);
}

abstract class _UniversitiesList implements UniversitiesList {
  const factory _UniversitiesList(
      {required final University university,
      required final List<FacultiesList> faculties}) = _$_UniversitiesList;

  @override
  University get university;
  @override
  List<FacultiesList> get faculties;
  @override
  @JsonKey(ignore: true)
  _$$_UniversitiesListCopyWith<_$_UniversitiesList> get copyWith =>
      throw _privateConstructorUsedError;
}
