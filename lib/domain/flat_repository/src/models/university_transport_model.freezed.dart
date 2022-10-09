// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'university_transport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniversityTransport _$UniversityTransportFromJson(Map<String, dynamic> json) {
  return _UniversityTransport.fromJson(json);
}

/// @nodoc
mixin _$UniversityTransport {
  int get universityId => throw _privateConstructorUsedError;
  String get universityName => throw _privateConstructorUsedError;
  List<Transport> get transports => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityTransportCopyWith<UniversityTransport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityTransportCopyWith<$Res> {
  factory $UniversityTransportCopyWith(
          UniversityTransport value, $Res Function(UniversityTransport) then) =
      _$UniversityTransportCopyWithImpl<$Res>;
  $Res call(
      {int universityId, String universityName, List<Transport> transports});
}

/// @nodoc
class _$UniversityTransportCopyWithImpl<$Res>
    implements $UniversityTransportCopyWith<$Res> {
  _$UniversityTransportCopyWithImpl(this._value, this._then);

  final UniversityTransport _value;
  // ignore: unused_field
  final $Res Function(UniversityTransport) _then;

  @override
  $Res call({
    Object? universityId = freezed,
    Object? universityName = freezed,
    Object? transports = freezed,
  }) {
    return _then(_value.copyWith(
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as String,
      transports: transports == freezed
          ? _value.transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<Transport>,
    ));
  }
}

/// @nodoc
abstract class _$$_UniversityTransportCopyWith<$Res>
    implements $UniversityTransportCopyWith<$Res> {
  factory _$$_UniversityTransportCopyWith(_$_UniversityTransport value,
          $Res Function(_$_UniversityTransport) then) =
      __$$_UniversityTransportCopyWithImpl<$Res>;
  @override
  $Res call(
      {int universityId, String universityName, List<Transport> transports});
}

/// @nodoc
class __$$_UniversityTransportCopyWithImpl<$Res>
    extends _$UniversityTransportCopyWithImpl<$Res>
    implements _$$_UniversityTransportCopyWith<$Res> {
  __$$_UniversityTransportCopyWithImpl(_$_UniversityTransport _value,
      $Res Function(_$_UniversityTransport) _then)
      : super(_value, (v) => _then(v as _$_UniversityTransport));

  @override
  _$_UniversityTransport get _value => super._value as _$_UniversityTransport;

  @override
  $Res call({
    Object? universityId = freezed,
    Object? universityName = freezed,
    Object? transports = freezed,
  }) {
    return _then(_$_UniversityTransport(
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int,
      universityName: universityName == freezed
          ? _value.universityName
          : universityName // ignore: cast_nullable_to_non_nullable
              as String,
      transports: transports == freezed
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<Transport>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniversityTransport implements _UniversityTransport {
  const _$_UniversityTransport(
      {required this.universityId,
      required this.universityName,
      required final List<Transport> transports})
      : _transports = transports;

  factory _$_UniversityTransport.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityTransportFromJson(json);

  @override
  final int universityId;
  @override
  final String universityName;
  final List<Transport> _transports;
  @override
  List<Transport> get transports {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  @override
  String toString() {
    return 'UniversityTransport(universityId: $universityId, universityName: $universityName, transports: $transports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityTransport &&
            const DeepCollectionEquality()
                .equals(other.universityId, universityId) &&
            const DeepCollectionEquality()
                .equals(other.universityName, universityName) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(universityId),
      const DeepCollectionEquality().hash(universityName),
      const DeepCollectionEquality().hash(_transports));

  @JsonKey(ignore: true)
  @override
  _$$_UniversityTransportCopyWith<_$_UniversityTransport> get copyWith =>
      __$$_UniversityTransportCopyWithImpl<_$_UniversityTransport>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityTransportToJson(
      this,
    );
  }
}

abstract class _UniversityTransport implements UniversityTransport {
  const factory _UniversityTransport(
      {required final int universityId,
      required final String universityName,
      required final List<Transport> transports}) = _$_UniversityTransport;

  factory _UniversityTransport.fromJson(Map<String, dynamic> json) =
      _$_UniversityTransport.fromJson;

  @override
  int get universityId;
  @override
  String get universityName;
  @override
  List<Transport> get transports;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityTransportCopyWith<_$_UniversityTransport> get copyWith =>
      throw _privateConstructorUsedError;
}
