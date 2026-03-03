// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegionDTO _$RegionDTOFromJson(Map<String, dynamic> json) {
  return _RegionDTO.fromJson(json);
}

/// @nodoc
mixin _$RegionDTO {
  @JsonKey(name: "region_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "region_name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "state_name")
  String get stateName => throw _privateConstructorUsedError;
  @JsonKey(name: "township_name")
  String get townshipName => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name")
  String get cityName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionDTOCopyWith<RegionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionDTOCopyWith<$Res> {
  factory $RegionDTOCopyWith(RegionDTO value, $Res Function(RegionDTO) then) =
      _$RegionDTOCopyWithImpl<$Res, RegionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "region_id") int id,
      @JsonKey(name: "region_name") String name,
      @JsonKey(name: "state_name") String stateName,
      @JsonKey(name: "township_name") String townshipName,
      @JsonKey(name: "city_name") String cityName});
}

/// @nodoc
class _$RegionDTOCopyWithImpl<$Res, $Val extends RegionDTO>
    implements $RegionDTOCopyWith<$Res> {
  _$RegionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? stateName = null,
    Object? townshipName = null,
    Object? cityName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionDTOImplCopyWith<$Res>
    implements $RegionDTOCopyWith<$Res> {
  factory _$$RegionDTOImplCopyWith(
          _$RegionDTOImpl value, $Res Function(_$RegionDTOImpl) then) =
      __$$RegionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "region_id") int id,
      @JsonKey(name: "region_name") String name,
      @JsonKey(name: "state_name") String stateName,
      @JsonKey(name: "township_name") String townshipName,
      @JsonKey(name: "city_name") String cityName});
}

/// @nodoc
class __$$RegionDTOImplCopyWithImpl<$Res>
    extends _$RegionDTOCopyWithImpl<$Res, _$RegionDTOImpl>
    implements _$$RegionDTOImplCopyWith<$Res> {
  __$$RegionDTOImplCopyWithImpl(
      _$RegionDTOImpl _value, $Res Function(_$RegionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? stateName = null,
    Object? townshipName = null,
    Object? cityName = null,
  }) {
    return _then(_$RegionDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stateName: null == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionDTOImpl extends _RegionDTO {
  const _$RegionDTOImpl(
      {@JsonKey(name: "region_id") this.id = -1,
      @JsonKey(name: "region_name") this.name = "",
      @JsonKey(name: "state_name") this.stateName = "",
      @JsonKey(name: "township_name") this.townshipName = "",
      @JsonKey(name: "city_name") this.cityName = ""})
      : super._();

  factory _$RegionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionDTOImplFromJson(json);

  @override
  @JsonKey(name: "region_id")
  final int id;
  @override
  @JsonKey(name: "region_name")
  final String name;
  @override
  @JsonKey(name: "state_name")
  final String stateName;
  @override
  @JsonKey(name: "township_name")
  final String townshipName;
  @override
  @JsonKey(name: "city_name")
  final String cityName;

  @override
  String toString() {
    return 'RegionDTO(id: $id, name: $name, stateName: $stateName, townshipName: $townshipName, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.townshipName, townshipName) ||
                other.townshipName == townshipName) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, stateName, townshipName, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionDTOImplCopyWith<_$RegionDTOImpl> get copyWith =>
      __$$RegionDTOImplCopyWithImpl<_$RegionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionDTOImplToJson(
      this,
    );
  }
}

abstract class _RegionDTO extends RegionDTO {
  const factory _RegionDTO(
      {@JsonKey(name: "region_id") final int id,
      @JsonKey(name: "region_name") final String name,
      @JsonKey(name: "state_name") final String stateName,
      @JsonKey(name: "township_name") final String townshipName,
      @JsonKey(name: "city_name") final String cityName}) = _$RegionDTOImpl;
  const _RegionDTO._() : super._();

  factory _RegionDTO.fromJson(Map<String, dynamic> json) =
      _$RegionDTOImpl.fromJson;

  @override
  @JsonKey(name: "region_id")
  int get id;
  @override
  @JsonKey(name: "region_name")
  String get name;
  @override
  @JsonKey(name: "state_name")
  String get stateName;
  @override
  @JsonKey(name: "township_name")
  String get townshipName;
  @override
  @JsonKey(name: "city_name")
  String get cityName;
  @override
  @JsonKey(ignore: true)
  _$$RegionDTOImplCopyWith<_$RegionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
