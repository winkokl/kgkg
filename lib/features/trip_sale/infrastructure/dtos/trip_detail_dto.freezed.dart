// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripDetailDTO _$TripDetailDTOFromJson(Map<String, dynamic> json) {
  return _TripDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$TripDetailDTO {
  @JsonKey(name: "way_name")
  String get wayName => throw _privateConstructorUsedError;
  @JsonKey(name: "region_name")
  String get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name")
  String get cityName => throw _privateConstructorUsedError;
  @JsonKey(name: "state_name")
  String get stateName => throw _privateConstructorUsedError;
  @JsonKey(name: "township_name")
  String get townshipName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripDetailDTOCopyWith<TripDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDetailDTOCopyWith<$Res> {
  factory $TripDetailDTOCopyWith(
          TripDetailDTO value, $Res Function(TripDetailDTO) then) =
      _$TripDetailDTOCopyWithImpl<$Res, TripDetailDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "way_name") String wayName,
      @JsonKey(name: "region_name") String regionName,
      @JsonKey(name: "city_name") String cityName,
      @JsonKey(name: "state_name") String stateName,
      @JsonKey(name: "township_name") String townshipName});
}

/// @nodoc
class _$TripDetailDTOCopyWithImpl<$Res, $Val extends TripDetailDTO>
    implements $TripDetailDTOCopyWith<$Res> {
  _$TripDetailDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$TripDetailDTOImplCopyWith<$Res>
    implements $TripDetailDTOCopyWith<$Res> {
  factory _$$TripDetailDTOImplCopyWith(
          _$TripDetailDTOImpl value, $Res Function(_$TripDetailDTOImpl) then) =
      __$$TripDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "way_name") String wayName,
      @JsonKey(name: "region_name") String regionName,
      @JsonKey(name: "city_name") String cityName,
      @JsonKey(name: "state_name") String stateName,
      @JsonKey(name: "township_name") String townshipName});
}

/// @nodoc
class __$$TripDetailDTOImplCopyWithImpl<$Res>
    extends _$TripDetailDTOCopyWithImpl<$Res, _$TripDetailDTOImpl>
    implements _$$TripDetailDTOImplCopyWith<$Res> {
  __$$TripDetailDTOImplCopyWithImpl(
      _$TripDetailDTOImpl _value, $Res Function(_$TripDetailDTOImpl) _then)
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
    return _then(_$TripDetailDTOImpl(
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
@JsonSerializable()
class _$TripDetailDTOImpl extends _TripDetailDTO {
  _$TripDetailDTOImpl(
      {@JsonKey(name: "way_name") this.wayName = "",
      @JsonKey(name: "region_name") this.regionName = "",
      @JsonKey(name: "city_name") this.cityName = "",
      @JsonKey(name: "state_name") this.stateName = "",
      @JsonKey(name: "township_name") this.townshipName = ""})
      : super._();

  factory _$TripDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripDetailDTOImplFromJson(json);

  @override
  @JsonKey(name: "way_name")
  final String wayName;
  @override
  @JsonKey(name: "region_name")
  final String regionName;
  @override
  @JsonKey(name: "city_name")
  final String cityName;
  @override
  @JsonKey(name: "state_name")
  final String stateName;
  @override
  @JsonKey(name: "township_name")
  final String townshipName;

  @override
  String toString() {
    return 'TripDetailDTO(wayName: $wayName, regionName: $regionName, cityName: $cityName, stateName: $stateName, townshipName: $townshipName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDetailDTOImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, wayName, regionName, cityName, stateName, townshipName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDetailDTOImplCopyWith<_$TripDetailDTOImpl> get copyWith =>
      __$$TripDetailDTOImplCopyWithImpl<_$TripDetailDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _TripDetailDTO extends TripDetailDTO {
  factory _TripDetailDTO(
          {@JsonKey(name: "way_name") final String wayName,
          @JsonKey(name: "region_name") final String regionName,
          @JsonKey(name: "city_name") final String cityName,
          @JsonKey(name: "state_name") final String stateName,
          @JsonKey(name: "township_name") final String townshipName}) =
      _$TripDetailDTOImpl;
  _TripDetailDTO._() : super._();

  factory _TripDetailDTO.fromJson(Map<String, dynamic> json) =
      _$TripDetailDTOImpl.fromJson;

  @override
  @JsonKey(name: "way_name")
  String get wayName;
  @override
  @JsonKey(name: "region_name")
  String get regionName;
  @override
  @JsonKey(name: "city_name")
  String get cityName;
  @override
  @JsonKey(name: "state_name")
  String get stateName;
  @override
  @JsonKey(name: "township_name")
  String get townshipName;
  @override
  @JsonKey(ignore: true)
  _$$TripDetailDTOImplCopyWith<_$TripDetailDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
