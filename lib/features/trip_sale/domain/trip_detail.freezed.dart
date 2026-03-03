// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripDetail {
  String get wayName => throw _privateConstructorUsedError;
  String get regionName => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get stateName => throw _privateConstructorUsedError;
  String get townshipName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripDetailCopyWith<TripDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDetailCopyWith<$Res> {
  factory $TripDetailCopyWith(
          TripDetail value, $Res Function(TripDetail) then) =
      _$TripDetailCopyWithImpl<$Res, TripDetail>;
  @useResult
  $Res call(
      {String wayName,
      String regionName,
      String cityName,
      String stateName,
      String townshipName});
}

/// @nodoc
class _$TripDetailCopyWithImpl<$Res, $Val extends TripDetail>
    implements $TripDetailCopyWith<$Res> {
  _$TripDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wayName = null,
    Object? regionName = null,
    Object? cityName = null,
    Object? stateName = null,
    Object? townshipName = null,
  }) {
    return _then(_value.copyWith(
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripDetailImplCopyWith<$Res>
    implements $TripDetailCopyWith<$Res> {
  factory _$$TripDetailImplCopyWith(
          _$TripDetailImpl value, $Res Function(_$TripDetailImpl) then) =
      __$$TripDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String wayName,
      String regionName,
      String cityName,
      String stateName,
      String townshipName});
}

/// @nodoc
class __$$TripDetailImplCopyWithImpl<$Res>
    extends _$TripDetailCopyWithImpl<$Res, _$TripDetailImpl>
    implements _$$TripDetailImplCopyWith<$Res> {
  __$$TripDetailImplCopyWithImpl(
      _$TripDetailImpl _value, $Res Function(_$TripDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wayName = null,
    Object? regionName = null,
    Object? cityName = null,
    Object? stateName = null,
    Object? townshipName = null,
  }) {
    return _then(_$TripDetailImpl(
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TripDetailImpl implements _TripDetail {
  const _$TripDetailImpl(
      {this.wayName = "",
      this.regionName = "",
      this.cityName = "",
      this.stateName = "",
      this.townshipName = ""});

  @override
  @JsonKey()
  final String wayName;
  @override
  @JsonKey()
  final String regionName;
  @override
  @JsonKey()
  final String cityName;
  @override
  @JsonKey()
  final String stateName;
  @override
  @JsonKey()
  final String townshipName;

  @override
  String toString() {
    return 'TripDetail(wayName: $wayName, regionName: $regionName, cityName: $cityName, stateName: $stateName, townshipName: $townshipName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDetailImpl &&
            (identical(other.wayName, wayName) || other.wayName == wayName) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.townshipName, townshipName) ||
                other.townshipName == townshipName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, wayName, regionName, cityName, stateName, townshipName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDetailImplCopyWith<_$TripDetailImpl> get copyWith =>
      __$$TripDetailImplCopyWithImpl<_$TripDetailImpl>(this, _$identity);
}

abstract class _TripDetail implements TripDetail {
  const factory _TripDetail(
      {final String wayName,
      final String regionName,
      final String cityName,
      final String stateName,
      final String townshipName}) = _$TripDetailImpl;

  @override
  String get wayName;
  @override
  String get regionName;
  @override
  String get cityName;
  @override
  String get stateName;
  @override
  String get townshipName;
  @override
  @JsonKey(ignore: true)
  _$$TripDetailImplCopyWith<_$TripDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
