// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetData _$MeetDataFromJson(Map<String, dynamic> json) {
  return _MeetData.fromJson(json);
}

/// @nodoc
mixin _$MeetData {
  List<Meet> get meets => throw _privateConstructorUsedError;
  bool get searching => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetDataCopyWith<MeetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetDataCopyWith<$Res> {
  factory $MeetDataCopyWith(MeetData value, $Res Function(MeetData) then) =
      _$MeetDataCopyWithImpl<$Res>;
  $Res call({List<Meet> meets, bool searching});
}

/// @nodoc
class _$MeetDataCopyWithImpl<$Res> implements $MeetDataCopyWith<$Res> {
  _$MeetDataCopyWithImpl(this._value, this._then);

  final MeetData _value;
  // ignore: unused_field
  final $Res Function(MeetData) _then;

  @override
  $Res call({
    Object? meets = freezed,
    Object? searching = freezed,
  }) {
    return _then(_value.copyWith(
      meets: meets == freezed
          ? _value.meets
          : meets // ignore: cast_nullable_to_non_nullable
              as List<Meet>,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_MeetDataCopyWith<$Res> implements $MeetDataCopyWith<$Res> {
  factory _$$_MeetDataCopyWith(
          _$_MeetData value, $Res Function(_$_MeetData) then) =
      __$$_MeetDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Meet> meets, bool searching});
}

/// @nodoc
class __$$_MeetDataCopyWithImpl<$Res> extends _$MeetDataCopyWithImpl<$Res>
    implements _$$_MeetDataCopyWith<$Res> {
  __$$_MeetDataCopyWithImpl(
      _$_MeetData _value, $Res Function(_$_MeetData) _then)
      : super(_value, (v) => _then(v as _$_MeetData));

  @override
  _$_MeetData get _value => super._value as _$_MeetData;

  @override
  $Res call({
    Object? meets = freezed,
    Object? searching = freezed,
  }) {
    return _then(_$_MeetData(
      meets: meets == freezed
          ? _value._meets
          : meets // ignore: cast_nullable_to_non_nullable
              as List<Meet>,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetData implements _MeetData {
  const _$_MeetData({required final List<Meet> meets, required this.searching})
      : _meets = meets;

  factory _$_MeetData.fromJson(Map<String, dynamic> json) =>
      _$$_MeetDataFromJson(json);

  final List<Meet> _meets;
  @override
  List<Meet> get meets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meets);
  }

  @override
  final bool searching;

  @override
  String toString() {
    return 'MeetData(meets: $meets, searching: $searching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetData &&
            const DeepCollectionEquality().equals(other._meets, _meets) &&
            const DeepCollectionEquality().equals(other.searching, searching));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_meets),
      const DeepCollectionEquality().hash(searching));

  @JsonKey(ignore: true)
  @override
  _$$_MeetDataCopyWith<_$_MeetData> get copyWith =>
      __$$_MeetDataCopyWithImpl<_$_MeetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetDataToJson(
      this,
    );
  }
}

abstract class _MeetData implements MeetData {
  const factory _MeetData(
      {required final List<Meet> meets,
      required final bool searching}) = _$_MeetData;

  factory _MeetData.fromJson(Map<String, dynamic> json) = _$_MeetData.fromJson;

  @override
  List<Meet> get meets;
  @override
  bool get searching;
  @override
  @JsonKey(ignore: true)
  _$$_MeetDataCopyWith<_$_MeetData> get copyWith =>
      throw _privateConstructorUsedError;
}
