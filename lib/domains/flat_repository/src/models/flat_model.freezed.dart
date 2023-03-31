// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlatModel {
  int get id => throw _privateConstructorUsedError;
  AppUser get owner => throw _privateConstructorUsedError;
  List<AppUser> get tenants => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PropertyModel get properties => throw _privateConstructorUsedError;
  List<double> get geometry => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  int get rentPricePerMonthInCents => throw _privateConstructorUsedError;
  int get advancePriceInCents => throw _privateConstructorUsedError;
  int get electricityPriceInCents => throw _privateConstructorUsedError;
  DateTime get availableFrom => throw _privateConstructorUsedError;
  String get maxMonthsStay => throw _privateConstructorUsedError;
  String get minMonthsStay => throw _privateConstructorUsedError;
  String get tenantsNumber => throw _privateConstructorUsedError;
  String get bedroom => throw _privateConstructorUsedError;
  String get bathroom => throw _privateConstructorUsedError;
  int get built => throw _privateConstructorUsedError;
  int get floor => throw _privateConstructorUsedError;
  List<FeatureModel> get features => throw _privateConstructorUsedError;
  List<TransportModel> get transports => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;
  bool get bookMark => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlatModelCopyWith<FlatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlatModelCopyWith<$Res> {
  factory $FlatModelCopyWith(FlatModel value, $Res Function(FlatModel) then) =
      _$FlatModelCopyWithImpl<$Res, FlatModel>;
  @useResult
  $Res call(
      {int id,
      AppUser owner,
      List<AppUser> tenants,
      String title,
      String description,
      PropertyModel properties,
      List<double> geometry,
      Currency currency,
      int rentPricePerMonthInCents,
      int advancePriceInCents,
      int electricityPriceInCents,
      DateTime availableFrom,
      String maxMonthsStay,
      String minMonthsStay,
      String tenantsNumber,
      String bedroom,
      String bathroom,
      int built,
      int floor,
      List<FeatureModel> features,
      List<TransportModel> transports,
      List<dynamic> images,
      bool bookMark});

  $AppUserCopyWith<$Res> get owner;
  $PropertyModelCopyWith<$Res> get properties;
}

/// @nodoc
class _$FlatModelCopyWithImpl<$Res, $Val extends FlatModel>
    implements $FlatModelCopyWith<$Res> {
  _$FlatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? tenants = null,
    Object? title = null,
    Object? description = null,
    Object? properties = null,
    Object? geometry = null,
    Object? currency = null,
    Object? rentPricePerMonthInCents = null,
    Object? advancePriceInCents = null,
    Object? electricityPriceInCents = null,
    Object? availableFrom = null,
    Object? maxMonthsStay = null,
    Object? minMonthsStay = null,
    Object? tenantsNumber = null,
    Object? bedroom = null,
    Object? bathroom = null,
    Object? built = null,
    Object? floor = null,
    Object? features = null,
    Object? transports = null,
    Object? images = null,
    Object? bookMark = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as AppUser,
      tenants: null == tenants
          ? _value.tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PropertyModel,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as List<double>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      rentPricePerMonthInCents: null == rentPricePerMonthInCents
          ? _value.rentPricePerMonthInCents
          : rentPricePerMonthInCents // ignore: cast_nullable_to_non_nullable
              as int,
      advancePriceInCents: null == advancePriceInCents
          ? _value.advancePriceInCents
          : advancePriceInCents // ignore: cast_nullable_to_non_nullable
              as int,
      electricityPriceInCents: null == electricityPriceInCents
          ? _value.electricityPriceInCents
          : electricityPriceInCents // ignore: cast_nullable_to_non_nullable
              as int,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxMonthsStay: null == maxMonthsStay
          ? _value.maxMonthsStay
          : maxMonthsStay // ignore: cast_nullable_to_non_nullable
              as String,
      minMonthsStay: null == minMonthsStay
          ? _value.minMonthsStay
          : minMonthsStay // ignore: cast_nullable_to_non_nullable
              as String,
      tenantsNumber: null == tenantsNumber
          ? _value.tenantsNumber
          : tenantsNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bedroom: null == bedroom
          ? _value.bedroom
          : bedroom // ignore: cast_nullable_to_non_nullable
              as String,
      bathroom: null == bathroom
          ? _value.bathroom
          : bathroom // ignore: cast_nullable_to_non_nullable
              as String,
      built: null == built
          ? _value.built
          : built // ignore: cast_nullable_to_non_nullable
              as int,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel>,
      transports: null == transports
          ? _value.transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<TransportModel>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      bookMark: null == bookMark
          ? _value.bookMark
          : bookMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get owner {
    return $AppUserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyModelCopyWith<$Res> get properties {
    return $PropertyModelCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FlatModelCopyWith<$Res> implements $FlatModelCopyWith<$Res> {
  factory _$$_FlatModelCopyWith(
          _$_FlatModel value, $Res Function(_$_FlatModel) then) =
      __$$_FlatModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      AppUser owner,
      List<AppUser> tenants,
      String title,
      String description,
      PropertyModel properties,
      List<double> geometry,
      Currency currency,
      int rentPricePerMonthInCents,
      int advancePriceInCents,
      int electricityPriceInCents,
      DateTime availableFrom,
      String maxMonthsStay,
      String minMonthsStay,
      String tenantsNumber,
      String bedroom,
      String bathroom,
      int built,
      int floor,
      List<FeatureModel> features,
      List<TransportModel> transports,
      List<dynamic> images,
      bool bookMark});

  @override
  $AppUserCopyWith<$Res> get owner;
  @override
  $PropertyModelCopyWith<$Res> get properties;
}

/// @nodoc
class __$$_FlatModelCopyWithImpl<$Res>
    extends _$FlatModelCopyWithImpl<$Res, _$_FlatModel>
    implements _$$_FlatModelCopyWith<$Res> {
  __$$_FlatModelCopyWithImpl(
      _$_FlatModel _value, $Res Function(_$_FlatModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? owner = null,
    Object? tenants = null,
    Object? title = null,
    Object? description = null,
    Object? properties = null,
    Object? geometry = null,
    Object? currency = null,
    Object? rentPricePerMonthInCents = null,
    Object? advancePriceInCents = null,
    Object? electricityPriceInCents = null,
    Object? availableFrom = null,
    Object? maxMonthsStay = null,
    Object? minMonthsStay = null,
    Object? tenantsNumber = null,
    Object? bedroom = null,
    Object? bathroom = null,
    Object? built = null,
    Object? floor = null,
    Object? features = null,
    Object? transports = null,
    Object? images = null,
    Object? bookMark = null,
  }) {
    return _then(_$_FlatModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as AppUser,
      tenants: null == tenants
          ? _value._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as PropertyModel,
      geometry: null == geometry
          ? _value._geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as List<double>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      rentPricePerMonthInCents: null == rentPricePerMonthInCents
          ? _value.rentPricePerMonthInCents
          : rentPricePerMonthInCents // ignore: cast_nullable_to_non_nullable
              as int,
      advancePriceInCents: null == advancePriceInCents
          ? _value.advancePriceInCents
          : advancePriceInCents // ignore: cast_nullable_to_non_nullable
              as int,
      electricityPriceInCents: null == electricityPriceInCents
          ? _value.electricityPriceInCents
          : electricityPriceInCents // ignore: cast_nullable_to_non_nullable
              as int,
      availableFrom: null == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxMonthsStay: null == maxMonthsStay
          ? _value.maxMonthsStay
          : maxMonthsStay // ignore: cast_nullable_to_non_nullable
              as String,
      minMonthsStay: null == minMonthsStay
          ? _value.minMonthsStay
          : minMonthsStay // ignore: cast_nullable_to_non_nullable
              as String,
      tenantsNumber: null == tenantsNumber
          ? _value.tenantsNumber
          : tenantsNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bedroom: null == bedroom
          ? _value.bedroom
          : bedroom // ignore: cast_nullable_to_non_nullable
              as String,
      bathroom: null == bathroom
          ? _value.bathroom
          : bathroom // ignore: cast_nullable_to_non_nullable
              as String,
      built: null == built
          ? _value.built
          : built // ignore: cast_nullable_to_non_nullable
              as int,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel>,
      transports: null == transports
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<TransportModel>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      bookMark: null == bookMark
          ? _value.bookMark
          : bookMark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FlatModel extends _FlatModel {
  _$_FlatModel(
      {required this.id,
      required this.owner,
      required final List<AppUser> tenants,
      required this.title,
      required this.description,
      required this.properties,
      required final List<double> geometry,
      required this.currency,
      required this.rentPricePerMonthInCents,
      required this.advancePriceInCents,
      required this.electricityPriceInCents,
      required this.availableFrom,
      required this.maxMonthsStay,
      required this.minMonthsStay,
      required this.tenantsNumber,
      required this.bedroom,
      required this.bathroom,
      required this.built,
      required this.floor,
      required final List<FeatureModel> features,
      required final List<TransportModel> transports,
      required final List<dynamic> images,
      required this.bookMark})
      : _tenants = tenants,
        _geometry = geometry,
        _features = features,
        _transports = transports,
        _images = images,
        super._();

  @override
  final int id;
  @override
  final AppUser owner;
  final List<AppUser> _tenants;
  @override
  List<AppUser> get tenants {
    if (_tenants is EqualUnmodifiableListView) return _tenants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenants);
  }

  @override
  final String title;
  @override
  final String description;
  @override
  final PropertyModel properties;
  final List<double> _geometry;
  @override
  List<double> get geometry {
    if (_geometry is EqualUnmodifiableListView) return _geometry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_geometry);
  }

  @override
  final Currency currency;
  @override
  final int rentPricePerMonthInCents;
  @override
  final int advancePriceInCents;
  @override
  final int electricityPriceInCents;
  @override
  final DateTime availableFrom;
  @override
  final String maxMonthsStay;
  @override
  final String minMonthsStay;
  @override
  final String tenantsNumber;
  @override
  final String bedroom;
  @override
  final String bathroom;
  @override
  final int built;
  @override
  final int floor;
  final List<FeatureModel> _features;
  @override
  List<FeatureModel> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final List<TransportModel> _transports;
  @override
  List<TransportModel> get transports {
    if (_transports is EqualUnmodifiableListView) return _transports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  final List<dynamic> _images;
  @override
  List<dynamic> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final bool bookMark;

  @override
  String toString() {
    return 'FlatModel(id: $id, owner: $owner, tenants: $tenants, title: $title, description: $description, properties: $properties, geometry: $geometry, currency: $currency, rentPricePerMonthInCents: $rentPricePerMonthInCents, advancePriceInCents: $advancePriceInCents, electricityPriceInCents: $electricityPriceInCents, availableFrom: $availableFrom, maxMonthsStay: $maxMonthsStay, minMonthsStay: $minMonthsStay, tenantsNumber: $tenantsNumber, bedroom: $bedroom, bathroom: $bathroom, built: $built, floor: $floor, features: $features, transports: $transports, images: $images, bookMark: $bookMark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlatModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._tenants, _tenants) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.properties, properties) ||
                other.properties == properties) &&
            const DeepCollectionEquality().equals(other._geometry, _geometry) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(
                    other.rentPricePerMonthInCents, rentPricePerMonthInCents) ||
                other.rentPricePerMonthInCents == rentPricePerMonthInCents) &&
            (identical(other.advancePriceInCents, advancePriceInCents) ||
                other.advancePriceInCents == advancePriceInCents) &&
            (identical(
                    other.electricityPriceInCents, electricityPriceInCents) ||
                other.electricityPriceInCents == electricityPriceInCents) &&
            (identical(other.availableFrom, availableFrom) ||
                other.availableFrom == availableFrom) &&
            (identical(other.maxMonthsStay, maxMonthsStay) ||
                other.maxMonthsStay == maxMonthsStay) &&
            (identical(other.minMonthsStay, minMonthsStay) ||
                other.minMonthsStay == minMonthsStay) &&
            (identical(other.tenantsNumber, tenantsNumber) ||
                other.tenantsNumber == tenantsNumber) &&
            (identical(other.bedroom, bedroom) || other.bedroom == bedroom) &&
            (identical(other.bathroom, bathroom) ||
                other.bathroom == bathroom) &&
            (identical(other.built, built) || other.built == built) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.bookMark, bookMark) ||
                other.bookMark == bookMark));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        owner,
        const DeepCollectionEquality().hash(_tenants),
        title,
        description,
        properties,
        const DeepCollectionEquality().hash(_geometry),
        currency,
        rentPricePerMonthInCents,
        advancePriceInCents,
        electricityPriceInCents,
        availableFrom,
        maxMonthsStay,
        minMonthsStay,
        tenantsNumber,
        bedroom,
        bathroom,
        built,
        floor,
        const DeepCollectionEquality().hash(_features),
        const DeepCollectionEquality().hash(_transports),
        const DeepCollectionEquality().hash(_images),
        bookMark
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlatModelCopyWith<_$_FlatModel> get copyWith =>
      __$$_FlatModelCopyWithImpl<_$_FlatModel>(this, _$identity);
}

abstract class _FlatModel extends FlatModel {
  factory _FlatModel(
      {required final int id,
      required final AppUser owner,
      required final List<AppUser> tenants,
      required final String title,
      required final String description,
      required final PropertyModel properties,
      required final List<double> geometry,
      required final Currency currency,
      required final int rentPricePerMonthInCents,
      required final int advancePriceInCents,
      required final int electricityPriceInCents,
      required final DateTime availableFrom,
      required final String maxMonthsStay,
      required final String minMonthsStay,
      required final String tenantsNumber,
      required final String bedroom,
      required final String bathroom,
      required final int built,
      required final int floor,
      required final List<FeatureModel> features,
      required final List<TransportModel> transports,
      required final List<dynamic> images,
      required final bool bookMark}) = _$_FlatModel;
  _FlatModel._() : super._();

  @override
  int get id;
  @override
  AppUser get owner;
  @override
  List<AppUser> get tenants;
  @override
  String get title;
  @override
  String get description;
  @override
  PropertyModel get properties;
  @override
  List<double> get geometry;
  @override
  Currency get currency;
  @override
  int get rentPricePerMonthInCents;
  @override
  int get advancePriceInCents;
  @override
  int get electricityPriceInCents;
  @override
  DateTime get availableFrom;
  @override
  String get maxMonthsStay;
  @override
  String get minMonthsStay;
  @override
  String get tenantsNumber;
  @override
  String get bedroom;
  @override
  String get bathroom;
  @override
  int get built;
  @override
  int get floor;
  @override
  List<FeatureModel> get features;
  @override
  List<TransportModel> get transports;
  @override
  List<dynamic> get images;
  @override
  bool get bookMark;
  @override
  @JsonKey(ignore: true)
  _$$_FlatModelCopyWith<_$_FlatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
