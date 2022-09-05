// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Preferences _$PreferencesFromJson(Map<String, dynamic> json) {
  return _Preferences.fromJson(json);
}

/// @nodoc
mixin _$Preferences {
  University get university => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesCopyWith<Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesCopyWith<$Res> {
  factory $PreferencesCopyWith(
          Preferences value, $Res Function(Preferences) then) =
      _$PreferencesCopyWithImpl<$Res>;
  $Res call({University university, Sex sex});

  $UniversityCopyWith<$Res> get university;
}

/// @nodoc
class _$PreferencesCopyWithImpl<$Res> implements $PreferencesCopyWith<$Res> {
  _$PreferencesCopyWithImpl(this._value, this._then);

  final Preferences _value;
  // ignore: unused_field
  final $Res Function(Preferences) _then;

  @override
  $Res call({
    Object? university = freezed,
    Object? sex = freezed,
  }) {
    return _then(_value.copyWith(
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
    ));
  }

  @override
  $UniversityCopyWith<$Res> get university {
    return $UniversityCopyWith<$Res>(_value.university, (value) {
      return _then(_value.copyWith(university: value));
    });
  }
}

/// @nodoc
abstract class _$$_PreferencesCopyWith<$Res>
    implements $PreferencesCopyWith<$Res> {
  factory _$$_PreferencesCopyWith(
          _$_Preferences value, $Res Function(_$_Preferences) then) =
      __$$_PreferencesCopyWithImpl<$Res>;
  @override
  $Res call({University university, Sex sex});

  @override
  $UniversityCopyWith<$Res> get university;
}

/// @nodoc
class __$$_PreferencesCopyWithImpl<$Res> extends _$PreferencesCopyWithImpl<$Res>
    implements _$$_PreferencesCopyWith<$Res> {
  __$$_PreferencesCopyWithImpl(
      _$_Preferences _value, $Res Function(_$_Preferences) _then)
      : super(_value, (v) => _then(v as _$_Preferences));

  @override
  _$_Preferences get _value => super._value as _$_Preferences;

  @override
  $Res call({
    Object? university = freezed,
    Object? sex = freezed,
  }) {
    return _then(_$_Preferences(
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Preferences implements _Preferences {
  const _$_Preferences({required this.university, required this.sex});

  factory _$_Preferences.fromJson(Map<String, dynamic> json) =>
      _$$_PreferencesFromJson(json);

  @override
  final University university;
  @override
  final Sex sex;

  @override
  String toString() {
    return 'Preferences(university: $university, sex: $sex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Preferences &&
            const DeepCollectionEquality()
                .equals(other.university, university) &&
            const DeepCollectionEquality().equals(other.sex, sex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(university),
      const DeepCollectionEquality().hash(sex));

  @JsonKey(ignore: true)
  @override
  _$$_PreferencesCopyWith<_$_Preferences> get copyWith =>
      __$$_PreferencesCopyWithImpl<_$_Preferences>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreferencesToJson(
      this,
    );
  }
}

abstract class _Preferences implements Preferences {
  const factory _Preferences(
      {required final University university,
      required final Sex sex}) = _$_Preferences;

  factory _Preferences.fromJson(Map<String, dynamic> json) =
      _$_Preferences.fromJson;

  @override
  University get university;
  @override
  Sex get sex;
  @override
  @JsonKey(ignore: true)
  _$$_PreferencesCopyWith<_$_Preferences> get copyWith =>
      throw _privateConstructorUsedError;
}
