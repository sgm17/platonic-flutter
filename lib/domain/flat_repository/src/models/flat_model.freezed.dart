// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Flat _$FlatFromJson(Map<String, dynamic> json) {
  return _Flat.fromJson(json);
}

/// @nodoc
mixin _$Flat {
  dynamic get lessor => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get ubication => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;
  FlatProperties get flatProperties => throw _privateConstructorUsedError;
  String get hood => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get monthlyPrice => throw _privateConstructorUsedError;
  int? get dipositAmount => throw _privateConstructorUsedError;
  int? get dipositMinimumMonths => throw _privateConstructorUsedError;
  bool? get garagePriceIncluded => throw _privateConstructorUsedError;
  int? get garagePrice => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  int? get maxTenants => throw _privateConstructorUsedError;
  List<User> get tenants => throw _privateConstructorUsedError;
  List<University> get nearUniversities => throw _privateConstructorUsedError;
  List<UniversityTransport> get universityTransports =>
      throw _privateConstructorUsedError;
  List<Review> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlatCopyWith<Flat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlatCopyWith<$Res> {
  factory $FlatCopyWith(Flat value, $Res Function(Flat) then) =
      _$FlatCopyWithImpl<$Res>;
  $Res call(
      {dynamic lessor,
      String title,
      List<String> ubication,
      List<double> coordinates,
      FlatProperties flatProperties,
      String hood,
      String city,
      int monthlyPrice,
      int? dipositAmount,
      int? dipositMinimumMonths,
      bool? garagePriceIncluded,
      int? garagePrice,
      List<String> images,
      int? maxTenants,
      List<User> tenants,
      List<University> nearUniversities,
      List<UniversityTransport> universityTransports,
      List<Review> reviews});

  $FlatPropertiesCopyWith<$Res> get flatProperties;
}

/// @nodoc
class _$FlatCopyWithImpl<$Res> implements $FlatCopyWith<$Res> {
  _$FlatCopyWithImpl(this._value, this._then);

  final Flat _value;
  // ignore: unused_field
  final $Res Function(Flat) _then;

  @override
  $Res call({
    Object? lessor = freezed,
    Object? title = freezed,
    Object? ubication = freezed,
    Object? coordinates = freezed,
    Object? flatProperties = freezed,
    Object? hood = freezed,
    Object? city = freezed,
    Object? monthlyPrice = freezed,
    Object? dipositAmount = freezed,
    Object? dipositMinimumMonths = freezed,
    Object? garagePriceIncluded = freezed,
    Object? garagePrice = freezed,
    Object? images = freezed,
    Object? maxTenants = freezed,
    Object? tenants = freezed,
    Object? nearUniversities = freezed,
    Object? universityTransports = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      lessor: lessor == freezed
          ? _value.lessor
          : lessor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ubication: ubication == freezed
          ? _value.ubication
          : ubication // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      flatProperties: flatProperties == freezed
          ? _value.flatProperties
          : flatProperties // ignore: cast_nullable_to_non_nullable
              as FlatProperties,
      hood: hood == freezed
          ? _value.hood
          : hood // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyPrice: monthlyPrice == freezed
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      dipositAmount: dipositAmount == freezed
          ? _value.dipositAmount
          : dipositAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dipositMinimumMonths: dipositMinimumMonths == freezed
          ? _value.dipositMinimumMonths
          : dipositMinimumMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      garagePriceIncluded: garagePriceIncluded == freezed
          ? _value.garagePriceIncluded
          : garagePriceIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      garagePrice: garagePrice == freezed
          ? _value.garagePrice
          : garagePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxTenants: maxTenants == freezed
          ? _value.maxTenants
          : maxTenants // ignore: cast_nullable_to_non_nullable
              as int?,
      tenants: tenants == freezed
          ? _value.tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<User>,
      nearUniversities: nearUniversities == freezed
          ? _value.nearUniversities
          : nearUniversities // ignore: cast_nullable_to_non_nullable
              as List<University>,
      universityTransports: universityTransports == freezed
          ? _value.universityTransports
          : universityTransports // ignore: cast_nullable_to_non_nullable
              as List<UniversityTransport>,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }

  @override
  $FlatPropertiesCopyWith<$Res> get flatProperties {
    return $FlatPropertiesCopyWith<$Res>(_value.flatProperties, (value) {
      return _then(_value.copyWith(flatProperties: value));
    });
  }
}

/// @nodoc
abstract class _$$_FlatCopyWith<$Res> implements $FlatCopyWith<$Res> {
  factory _$$_FlatCopyWith(_$_Flat value, $Res Function(_$_Flat) then) =
      __$$_FlatCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic lessor,
      String title,
      List<String> ubication,
      List<double> coordinates,
      FlatProperties flatProperties,
      String hood,
      String city,
      int monthlyPrice,
      int? dipositAmount,
      int? dipositMinimumMonths,
      bool? garagePriceIncluded,
      int? garagePrice,
      List<String> images,
      int? maxTenants,
      List<User> tenants,
      List<University> nearUniversities,
      List<UniversityTransport> universityTransports,
      List<Review> reviews});

  @override
  $FlatPropertiesCopyWith<$Res> get flatProperties;
}

/// @nodoc
class __$$_FlatCopyWithImpl<$Res> extends _$FlatCopyWithImpl<$Res>
    implements _$$_FlatCopyWith<$Res> {
  __$$_FlatCopyWithImpl(_$_Flat _value, $Res Function(_$_Flat) _then)
      : super(_value, (v) => _then(v as _$_Flat));

  @override
  _$_Flat get _value => super._value as _$_Flat;

  @override
  $Res call({
    Object? lessor = freezed,
    Object? title = freezed,
    Object? ubication = freezed,
    Object? coordinates = freezed,
    Object? flatProperties = freezed,
    Object? hood = freezed,
    Object? city = freezed,
    Object? monthlyPrice = freezed,
    Object? dipositAmount = freezed,
    Object? dipositMinimumMonths = freezed,
    Object? garagePriceIncluded = freezed,
    Object? garagePrice = freezed,
    Object? images = freezed,
    Object? maxTenants = freezed,
    Object? tenants = freezed,
    Object? nearUniversities = freezed,
    Object? universityTransports = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_Flat(
      lessor: lessor == freezed
          ? _value.lessor
          : lessor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ubication: ubication == freezed
          ? _value._ubication
          : ubication // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coordinates: coordinates == freezed
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      flatProperties: flatProperties == freezed
          ? _value.flatProperties
          : flatProperties // ignore: cast_nullable_to_non_nullable
              as FlatProperties,
      hood: hood == freezed
          ? _value.hood
          : hood // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyPrice: monthlyPrice == freezed
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      dipositAmount: dipositAmount == freezed
          ? _value.dipositAmount
          : dipositAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dipositMinimumMonths: dipositMinimumMonths == freezed
          ? _value.dipositMinimumMonths
          : dipositMinimumMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      garagePriceIncluded: garagePriceIncluded == freezed
          ? _value.garagePriceIncluded
          : garagePriceIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
      garagePrice: garagePrice == freezed
          ? _value.garagePrice
          : garagePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxTenants: maxTenants == freezed
          ? _value.maxTenants
          : maxTenants // ignore: cast_nullable_to_non_nullable
              as int?,
      tenants: tenants == freezed
          ? _value._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<User>,
      nearUniversities: nearUniversities == freezed
          ? _value._nearUniversities
          : nearUniversities // ignore: cast_nullable_to_non_nullable
              as List<University>,
      universityTransports: universityTransports == freezed
          ? _value._universityTransports
          : universityTransports // ignore: cast_nullable_to_non_nullable
              as List<UniversityTransport>,
      reviews: reviews == freezed
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flat implements _Flat {
  const _$_Flat(
      {required this.lessor,
      required this.title,
      required final List<String> ubication,
      required final List<double> coordinates,
      required this.flatProperties,
      required this.hood,
      required this.city,
      required this.monthlyPrice,
      this.dipositAmount,
      this.dipositMinimumMonths,
      this.garagePriceIncluded,
      this.garagePrice,
      required final List<String> images,
      this.maxTenants,
      required final List<User> tenants,
      required final List<University> nearUniversities,
      required final List<UniversityTransport> universityTransports,
      required final List<Review> reviews})
      : _ubication = ubication,
        _coordinates = coordinates,
        _images = images,
        _tenants = tenants,
        _nearUniversities = nearUniversities,
        _universityTransports = universityTransports,
        _reviews = reviews;

  factory _$_Flat.fromJson(Map<String, dynamic> json) => _$$_FlatFromJson(json);

  @override
  final dynamic lessor;
  @override
  final String title;
  final List<String> _ubication;
  @override
  List<String> get ubication {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ubication);
  }

  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  final FlatProperties flatProperties;
  @override
  final String hood;
  @override
  final String city;
  @override
  final int monthlyPrice;
  @override
  final int? dipositAmount;
  @override
  final int? dipositMinimumMonths;
  @override
  final bool? garagePriceIncluded;
  @override
  final int? garagePrice;
  final List<String> _images;
  @override
  List<String> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int? maxTenants;
  final List<User> _tenants;
  @override
  List<User> get tenants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenants);
  }

  final List<University> _nearUniversities;
  @override
  List<University> get nearUniversities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearUniversities);
  }

  final List<UniversityTransport> _universityTransports;
  @override
  List<UniversityTransport> get universityTransports {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_universityTransports);
  }

  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'Flat(lessor: $lessor, title: $title, ubication: $ubication, coordinates: $coordinates, flatProperties: $flatProperties, hood: $hood, city: $city, monthlyPrice: $monthlyPrice, dipositAmount: $dipositAmount, dipositMinimumMonths: $dipositMinimumMonths, garagePriceIncluded: $garagePriceIncluded, garagePrice: $garagePrice, images: $images, maxTenants: $maxTenants, tenants: $tenants, nearUniversities: $nearUniversities, universityTransports: $universityTransports, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flat &&
            const DeepCollectionEquality().equals(other.lessor, lessor) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other._ubication, _ubication) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            const DeepCollectionEquality()
                .equals(other.flatProperties, flatProperties) &&
            const DeepCollectionEquality().equals(other.hood, hood) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.monthlyPrice, monthlyPrice) &&
            const DeepCollectionEquality()
                .equals(other.dipositAmount, dipositAmount) &&
            const DeepCollectionEquality()
                .equals(other.dipositMinimumMonths, dipositMinimumMonths) &&
            const DeepCollectionEquality()
                .equals(other.garagePriceIncluded, garagePriceIncluded) &&
            const DeepCollectionEquality()
                .equals(other.garagePrice, garagePrice) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other.maxTenants, maxTenants) &&
            const DeepCollectionEquality().equals(other._tenants, _tenants) &&
            const DeepCollectionEquality()
                .equals(other._nearUniversities, _nearUniversities) &&
            const DeepCollectionEquality()
                .equals(other._universityTransports, _universityTransports) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lessor),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_ubication),
      const DeepCollectionEquality().hash(_coordinates),
      const DeepCollectionEquality().hash(flatProperties),
      const DeepCollectionEquality().hash(hood),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(monthlyPrice),
      const DeepCollectionEquality().hash(dipositAmount),
      const DeepCollectionEquality().hash(dipositMinimumMonths),
      const DeepCollectionEquality().hash(garagePriceIncluded),
      const DeepCollectionEquality().hash(garagePrice),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(maxTenants),
      const DeepCollectionEquality().hash(_tenants),
      const DeepCollectionEquality().hash(_nearUniversities),
      const DeepCollectionEquality().hash(_universityTransports),
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  _$$_FlatCopyWith<_$_Flat> get copyWith =>
      __$$_FlatCopyWithImpl<_$_Flat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlatToJson(
      this,
    );
  }
}

abstract class _Flat implements Flat {
  const factory _Flat(
      {required final dynamic lessor,
      required final String title,
      required final List<String> ubication,
      required final List<double> coordinates,
      required final FlatProperties flatProperties,
      required final String hood,
      required final String city,
      required final int monthlyPrice,
      final int? dipositAmount,
      final int? dipositMinimumMonths,
      final bool? garagePriceIncluded,
      final int? garagePrice,
      required final List<String> images,
      final int? maxTenants,
      required final List<User> tenants,
      required final List<University> nearUniversities,
      required final List<UniversityTransport> universityTransports,
      required final List<Review> reviews}) = _$_Flat;

  factory _Flat.fromJson(Map<String, dynamic> json) = _$_Flat.fromJson;

  @override
  dynamic get lessor;
  @override
  String get title;
  @override
  List<String> get ubication;
  @override
  List<double> get coordinates;
  @override
  FlatProperties get flatProperties;
  @override
  String get hood;
  @override
  String get city;
  @override
  int get monthlyPrice;
  @override
  int? get dipositAmount;
  @override
  int? get dipositMinimumMonths;
  @override
  bool? get garagePriceIncluded;
  @override
  int? get garagePrice;
  @override
  List<String> get images;
  @override
  int? get maxTenants;
  @override
  List<User> get tenants;
  @override
  List<University> get nearUniversities;
  @override
  List<UniversityTransport> get universityTransports;
  @override
  List<Review> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_FlatCopyWith<_$_Flat> get copyWith => throw _privateConstructorUsedError;
}
