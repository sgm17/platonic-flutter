// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'include_university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncludeUniversity {
  String? get associateName => throw _privateConstructorUsedError;
  String? get parentName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get acronym => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncludeUniversityCopyWith<IncludeUniversity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncludeUniversityCopyWith<$Res> {
  factory $IncludeUniversityCopyWith(
          IncludeUniversity value, $Res Function(IncludeUniversity) then) =
      _$IncludeUniversityCopyWithImpl<$Res>;
  $Res call(
      {String? associateName,
      String? parentName,
      String name,
      String? acronym,
      String type,
      String address});
}

/// @nodoc
class _$IncludeUniversityCopyWithImpl<$Res>
    implements $IncludeUniversityCopyWith<$Res> {
  _$IncludeUniversityCopyWithImpl(this._value, this._then);

  final IncludeUniversity _value;
  // ignore: unused_field
  final $Res Function(IncludeUniversity) _then;

  @override
  $Res call({
    Object? associateName = freezed,
    Object? parentName = freezed,
    Object? name = freezed,
    Object? acronym = freezed,
    Object? type = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      associateName: associateName == freezed
          ? _value.associateName
          : associateName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      acronym: acronym == freezed
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IncludeUniversityCopyWith<$Res>
    implements $IncludeUniversityCopyWith<$Res> {
  factory _$$_IncludeUniversityCopyWith(_$_IncludeUniversity value,
          $Res Function(_$_IncludeUniversity) then) =
      __$$_IncludeUniversityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? associateName,
      String? parentName,
      String name,
      String? acronym,
      String type,
      String address});
}

/// @nodoc
class __$$_IncludeUniversityCopyWithImpl<$Res>
    extends _$IncludeUniversityCopyWithImpl<$Res>
    implements _$$_IncludeUniversityCopyWith<$Res> {
  __$$_IncludeUniversityCopyWithImpl(
      _$_IncludeUniversity _value, $Res Function(_$_IncludeUniversity) _then)
      : super(_value, (v) => _then(v as _$_IncludeUniversity));

  @override
  _$_IncludeUniversity get _value => super._value as _$_IncludeUniversity;

  @override
  $Res call({
    Object? associateName = freezed,
    Object? parentName = freezed,
    Object? name = freezed,
    Object? acronym = freezed,
    Object? type = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_IncludeUniversity(
      associateName: associateName == freezed
          ? _value.associateName
          : associateName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      acronym: acronym == freezed
          ? _value.acronym
          : acronym // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IncludeUniversity implements _IncludeUniversity {
  const _$_IncludeUniversity(
      {this.associateName,
      this.parentName,
      required this.name,
      this.acronym,
      required this.type,
      required this.address});

  @override
  final String? associateName;
  @override
  final String? parentName;
  @override
  final String name;
  @override
  final String? acronym;
  @override
  final String type;
  @override
  final String address;

  @override
  String toString() {
    return 'IncludeUniversity(associateName: $associateName, parentName: $parentName, name: $name, acronym: $acronym, type: $type, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncludeUniversity &&
            const DeepCollectionEquality()
                .equals(other.associateName, associateName) &&
            const DeepCollectionEquality()
                .equals(other.parentName, parentName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.acronym, acronym) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(associateName),
      const DeepCollectionEquality().hash(parentName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(acronym),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$$_IncludeUniversityCopyWith<_$_IncludeUniversity> get copyWith =>
      __$$_IncludeUniversityCopyWithImpl<_$_IncludeUniversity>(
          this, _$identity);
}

abstract class _IncludeUniversity implements IncludeUniversity {
  const factory _IncludeUniversity(
      {final String? associateName,
      final String? parentName,
      required final String name,
      final String? acronym,
      required final String type,
      required final String address}) = _$_IncludeUniversity;

  @override
  String? get associateName;
  @override
  String? get parentName;
  @override
  String get name;
  @override
  String? get acronym;
  @override
  String get type;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_IncludeUniversityCopyWith<_$_IncludeUniversity> get copyWith =>
      throw _privateConstructorUsedError;
}
