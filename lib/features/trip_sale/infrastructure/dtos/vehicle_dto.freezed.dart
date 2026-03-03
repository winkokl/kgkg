// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleDTO _$VehicleDTOFromJson(Map<String, dynamic> json) {
  return _VehicleDTO.fromJson(json);
}

/// @nodoc
mixin _$VehicleDTO {
  @JsonKey(name: "vehicle_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "vehicle_name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleDTOCopyWith<VehicleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDTOCopyWith<$Res> {
  factory $VehicleDTOCopyWith(
          VehicleDTO value, $Res Function(VehicleDTO) then) =
      _$VehicleDTOCopyWithImpl<$Res, VehicleDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "vehicle_id") int id,
      @JsonKey(name: "vehicle_name") String name});
}

/// @nodoc
class _$VehicleDTOCopyWithImpl<$Res, $Val extends VehicleDTO>
    implements $VehicleDTOCopyWith<$Res> {
  _$VehicleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleDTOImplCopyWith<$Res>
    implements $VehicleDTOCopyWith<$Res> {
  factory _$$VehicleDTOImplCopyWith(
          _$VehicleDTOImpl value, $Res Function(_$VehicleDTOImpl) then) =
      __$$VehicleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "vehicle_id") int id,
      @JsonKey(name: "vehicle_name") String name});
}

/// @nodoc
class __$$VehicleDTOImplCopyWithImpl<$Res>
    extends _$VehicleDTOCopyWithImpl<$Res, _$VehicleDTOImpl>
    implements _$$VehicleDTOImplCopyWith<$Res> {
  __$$VehicleDTOImplCopyWithImpl(
      _$VehicleDTOImpl _value, $Res Function(_$VehicleDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$VehicleDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleDTOImpl extends _VehicleDTO {
  _$VehicleDTOImpl(
      {@JsonKey(name: "vehicle_id") this.id = -1,
      @JsonKey(name: "vehicle_name") this.name = ""})
      : super._();

  factory _$VehicleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleDTOImplFromJson(json);

  @override
  @JsonKey(name: "vehicle_id")
  final int id;
  @override
  @JsonKey(name: "vehicle_name")
  final String name;

  @override
  String toString() {
    return 'VehicleDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDTOImplCopyWith<_$VehicleDTOImpl> get copyWith =>
      __$$VehicleDTOImplCopyWithImpl<_$VehicleDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleDTOImplToJson(
      this,
    );
  }
}

abstract class _VehicleDTO extends VehicleDTO {
  factory _VehicleDTO(
      {@JsonKey(name: "vehicle_id") final int id,
      @JsonKey(name: "vehicle_name") final String name}) = _$VehicleDTOImpl;
  _VehicleDTO._() : super._();

  factory _VehicleDTO.fromJson(Map<String, dynamic> json) =
      _$VehicleDTOImpl.fromJson;

  @override
  @JsonKey(name: "vehicle_id")
  int get id;
  @override
  @JsonKey(name: "vehicle_name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VehicleDTOImplCopyWith<_$VehicleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
