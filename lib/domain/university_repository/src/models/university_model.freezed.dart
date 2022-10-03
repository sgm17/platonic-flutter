// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

University _$UniversityFromJson(Map<String, dynamic> json) {
  return _University.fromJson(json);
}

/// @nodoc
mixin _$University {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get simpleName => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;
  List<UniversityFaculties> get faculties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityCopyWith<University> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String simpleName,
      String image,
      List<double> coordinates,
      List<UniversityFaculties> faculties});
}

/// @nodoc
class _$UniversityCopyWithImpl<$Res> implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(this._value, this._then);

  final University _value;
  // ignore: unused_field
  final $Res Function(University) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? simpleName = freezed,
    Object? image = freezed,
    Object? coordinates = freezed,
    Object? faculties = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      simpleName: simpleName == freezed
          ? _value.simpleName
          : simpleName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      faculties: faculties == freezed
          ? _value.faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<UniversityFaculties>,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversityCopyWith<$Res>
    implements $UniversityCopyWith<$Res> {
  factory _$$_UniversityCopyWith(
          _$_University value, $Res Function(_$_University) then) =
      __$$_UniversityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String simpleName,
      String image,
      List<double> coordinates,
      List<UniversityFaculties> faculties});
}

/// @nodoc
class __$$_UniversityCopyWithImpl<$Res> extends _$UniversityCopyWithImpl<$Res>
    implements _$$_UniversityCopyWith<$Res> {
  __$$_UniversityCopyWithImpl(
      _$_University _value, $Res Function(_$_University) _then)
      : super(_value, (v) => _then(v as _$_University));

  @override
  _$_University get _value => super._value as _$_University;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? simpleName = freezed,
    Object? image = freezed,
    Object? coordinates = freezed,
    Object? faculties = freezed,
  }) {
    return _then(_$_University(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      simpleName: simpleName == freezed
          ? _value.simpleName
          : simpleName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: coordinates == freezed
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      faculties: faculties == freezed
          ? _value._faculties
          : faculties // ignore: cast_nullable_to_non_nullable
              as List<UniversityFaculties>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_University implements _University {
  const _$_University(
      {required this.id,
      required this.name,
      required this.simpleName,
      required this.image,
      required final List<double> coordinates,
      required final List<UniversityFaculties> faculties})
      : _coordinates = coordinates,
        _faculties = faculties;

  factory _$_University.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String simpleName;
  @override
  final String image;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  final List<UniversityFaculties> _faculties;
  @override
  List<UniversityFaculties> get faculties {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faculties);
  }

  @override
  String toString() {
    return 'University(id: $id, name: $name, simpleName: $simpleName, image: $image, coordinates: $coordinates, faculties: $faculties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_University &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.simpleName, simpleName) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            const DeepCollectionEquality()
                .equals(other._faculties, _faculties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(simpleName),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_coordinates),
      const DeepCollectionEquality().hash(_faculties));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      __$$_UniversityCopyWithImpl<_$_University>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityToJson(
      this,
    );
  }
}

abstract class _University implements University {
  const factory _University(
      {required final int id,
      required final String name,
      required final String simpleName,
      required final String image,
      required final List<double> coordinates,
      required final List<UniversityFaculties> faculties}) = _$_University;

  factory _University.fromJson(Map<String, dynamic> json) =
      _$_University.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get simpleName;
  @override
  String get image;
  @override
  List<double> get coordinates;
  @override
  List<UniversityFaculties> get faculties;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      throw _privateConstructorUsedError;
}
