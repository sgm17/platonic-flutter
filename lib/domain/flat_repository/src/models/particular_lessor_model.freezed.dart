// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'particular_lessor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParticularLessor _$ParticularLessorFromJson(Map<String, dynamic> json) {
  return _ParticularLessor.fromJson(json);
}

/// @nodoc
mixin _$ParticularLessor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;
  int get flatReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticularLessorCopyWith<ParticularLessor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticularLessorCopyWith<$Res> {
  factory $ParticularLessorCopyWith(
          ParticularLessor value, $Res Function(ParticularLessor) then) =
      _$ParticularLessorCopyWithImpl<$Res>;
  $Res call({int id, String name, String telephone, int flatReference});
}

/// @nodoc
class _$ParticularLessorCopyWithImpl<$Res>
    implements $ParticularLessorCopyWith<$Res> {
  _$ParticularLessorCopyWithImpl(this._value, this._then);

  final ParticularLessor _value;
  // ignore: unused_field
  final $Res Function(ParticularLessor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? telephone = freezed,
    Object? flatReference = freezed,
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
      telephone: telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      flatReference: flatReference == freezed
          ? _value.flatReference
          : flatReference // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ParticularLessorCopyWith<$Res>
    implements $ParticularLessorCopyWith<$Res> {
  factory _$$_ParticularLessorCopyWith(
          _$_ParticularLessor value, $Res Function(_$_ParticularLessor) then) =
      __$$_ParticularLessorCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String telephone, int flatReference});
}

/// @nodoc
class __$$_ParticularLessorCopyWithImpl<$Res>
    extends _$ParticularLessorCopyWithImpl<$Res>
    implements _$$_ParticularLessorCopyWith<$Res> {
  __$$_ParticularLessorCopyWithImpl(
      _$_ParticularLessor _value, $Res Function(_$_ParticularLessor) _then)
      : super(_value, (v) => _then(v as _$_ParticularLessor));

  @override
  _$_ParticularLessor get _value => super._value as _$_ParticularLessor;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? telephone = freezed,
    Object? flatReference = freezed,
  }) {
    return _then(_$_ParticularLessor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      flatReference: flatReference == freezed
          ? _value.flatReference
          : flatReference // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParticularLessor implements _ParticularLessor {
  const _$_ParticularLessor(
      {required this.id,
      required this.name,
      required this.telephone,
      required this.flatReference});

  factory _$_ParticularLessor.fromJson(Map<String, dynamic> json) =>
      _$$_ParticularLessorFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String telephone;
  @override
  final int flatReference;

  @override
  String toString() {
    return 'ParticularLessor(id: $id, name: $name, telephone: $telephone, flatReference: $flatReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParticularLessor &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.telephone, telephone) &&
            const DeepCollectionEquality()
                .equals(other.flatReference, flatReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(telephone),
      const DeepCollectionEquality().hash(flatReference));

  @JsonKey(ignore: true)
  @override
  _$$_ParticularLessorCopyWith<_$_ParticularLessor> get copyWith =>
      __$$_ParticularLessorCopyWithImpl<_$_ParticularLessor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticularLessorToJson(
      this,
    );
  }
}

abstract class _ParticularLessor implements ParticularLessor {
  const factory _ParticularLessor(
      {required final int id,
      required final String name,
      required final String telephone,
      required final int flatReference}) = _$_ParticularLessor;

  factory _ParticularLessor.fromJson(Map<String, dynamic> json) =
      _$_ParticularLessor.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get telephone;
  @override
  int get flatReference;
  @override
  @JsonKey(ignore: true)
  _$$_ParticularLessorCopyWith<_$_ParticularLessor> get copyWith =>
      throw _privateConstructorUsedError;
}
