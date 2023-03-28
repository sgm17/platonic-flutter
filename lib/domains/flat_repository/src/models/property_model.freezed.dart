// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PropertyModel {
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get countrycode => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String? get housenumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyModelCopyWith<PropertyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyModelCopyWith<$Res> {
  factory $PropertyModelCopyWith(
          PropertyModel value, $Res Function(PropertyModel) then) =
      _$PropertyModelCopyWithImpl<$Res, PropertyModel>;
  @useResult
  $Res call(
      {String country,
      String city,
      String countrycode,
      String postcode,
      String? county,
      String? housenumber,
      String name,
      String state});
}

/// @nodoc
class _$PropertyModelCopyWithImpl<$Res, $Val extends PropertyModel>
    implements $PropertyModelCopyWith<$Res> {
  _$PropertyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? countrycode = null,
    Object? postcode = null,
    Object? county = freezed,
    Object? housenumber = freezed,
    Object? name = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      countrycode: null == countrycode
          ? _value.countrycode
          : countrycode // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      housenumber: freezed == housenumber
          ? _value.housenumber
          : housenumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PropertyModelCopyWith<$Res>
    implements $PropertyModelCopyWith<$Res> {
  factory _$$_PropertyModelCopyWith(
          _$_PropertyModel value, $Res Function(_$_PropertyModel) then) =
      __$$_PropertyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String city,
      String countrycode,
      String postcode,
      String? county,
      String? housenumber,
      String name,
      String state});
}

/// @nodoc
class __$$_PropertyModelCopyWithImpl<$Res>
    extends _$PropertyModelCopyWithImpl<$Res, _$_PropertyModel>
    implements _$$_PropertyModelCopyWith<$Res> {
  __$$_PropertyModelCopyWithImpl(
      _$_PropertyModel _value, $Res Function(_$_PropertyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? city = null,
    Object? countrycode = null,
    Object? postcode = null,
    Object? county = freezed,
    Object? housenumber = freezed,
    Object? name = null,
    Object? state = null,
  }) {
    return _then(_$_PropertyModel(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      countrycode: null == countrycode
          ? _value.countrycode
          : countrycode // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      housenumber: freezed == housenumber
          ? _value.housenumber
          : housenumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PropertyModel extends _PropertyModel {
  _$_PropertyModel(
      {required this.country,
      required this.city,
      required this.countrycode,
      required this.postcode,
      required this.county,
      required this.housenumber,
      required this.name,
      required this.state})
      : super._();

  @override
  final String country;
  @override
  final String city;
  @override
  final String countrycode;
  @override
  final String postcode;
  @override
  final String? county;
  @override
  final String? housenumber;
  @override
  final String name;
  @override
  final String state;

  @override
  String toString() {
    return 'PropertyModel(country: $country, city: $city, countrycode: $countrycode, postcode: $postcode, county: $county, housenumber: $housenumber, name: $name, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PropertyModel &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.countrycode, countrycode) ||
                other.countrycode == countrycode) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.housenumber, housenumber) ||
                other.housenumber == housenumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, city, countrycode,
      postcode, county, housenumber, name, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertyModelCopyWith<_$_PropertyModel> get copyWith =>
      __$$_PropertyModelCopyWithImpl<_$_PropertyModel>(this, _$identity);
}

abstract class _PropertyModel extends PropertyModel {
  factory _PropertyModel(
      {required final String country,
      required final String city,
      required final String countrycode,
      required final String postcode,
      required final String? county,
      required final String? housenumber,
      required final String name,
      required final String state}) = _$_PropertyModel;
  _PropertyModel._() : super._();

  @override
  String get country;
  @override
  String get city;
  @override
  String get countrycode;
  @override
  String get postcode;
  @override
  String? get county;
  @override
  String? get housenumber;
  @override
  String get name;
  @override
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$_PropertyModelCopyWith<_$_PropertyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
