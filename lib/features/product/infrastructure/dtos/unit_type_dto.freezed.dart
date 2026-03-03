// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitTypeDTO _$UnitTypeDTOFromJson(Map<String, dynamic> json) {
  return _UnitTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$UnitTypeDTO {
  @JsonKey(name: "unit_id")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "base_qty")
  dynamic get baseQty => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitTypeDTOCopyWith<UnitTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitTypeDTOCopyWith<$Res> {
  factory $UnitTypeDTOCopyWith(
          UnitTypeDTO value, $Res Function(UnitTypeDTO) then) =
      _$UnitTypeDTOCopyWithImpl<$Res, UnitTypeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "unit_id") dynamic id,
      @JsonKey(name: "base_qty") dynamic baseQty,
      @JsonKey(name: "unit_name") String name});
}

/// @nodoc
class _$UnitTypeDTOCopyWithImpl<$Res, $Val extends UnitTypeDTO>
    implements $UnitTypeDTOCopyWith<$Res> {
  _$UnitTypeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? baseQty = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      baseQty: freezed == baseQty
          ? _value.baseQty
          : baseQty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitTypeDTOImplCopyWith<$Res>
    implements $UnitTypeDTOCopyWith<$Res> {
  factory _$$UnitTypeDTOImplCopyWith(
          _$UnitTypeDTOImpl value, $Res Function(_$UnitTypeDTOImpl) then) =
      __$$UnitTypeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "unit_id") dynamic id,
      @JsonKey(name: "base_qty") dynamic baseQty,
      @JsonKey(name: "unit_name") String name});
}

/// @nodoc
class __$$UnitTypeDTOImplCopyWithImpl<$Res>
    extends _$UnitTypeDTOCopyWithImpl<$Res, _$UnitTypeDTOImpl>
    implements _$$UnitTypeDTOImplCopyWith<$Res> {
  __$$UnitTypeDTOImplCopyWithImpl(
      _$UnitTypeDTOImpl _value, $Res Function(_$UnitTypeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? baseQty = freezed,
    Object? name = null,
  }) {
    return _then(_$UnitTypeDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      baseQty: freezed == baseQty
          ? _value.baseQty
          : baseQty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitTypeDTOImpl extends _UnitTypeDTO {
  const _$UnitTypeDTOImpl(
      {@JsonKey(name: "unit_id") this.id = "",
      @JsonKey(name: "base_qty") this.baseQty = "",
      @JsonKey(name: "unit_name") this.name = ""})
      : super._();

  factory _$UnitTypeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitTypeDTOImplFromJson(json);

  @override
  @JsonKey(name: "unit_id")
  final dynamic id;
  @override
  @JsonKey(name: "base_qty")
  final dynamic baseQty;
  @override
  @JsonKey(name: "unit_name")
  final String name;

  @override
  String toString() {
    return 'UnitTypeDTO(id: $id, baseQty: $baseQty, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitTypeDTOImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.baseQty, baseQty) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(baseQty),
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitTypeDTOImplCopyWith<_$UnitTypeDTOImpl> get copyWith =>
      __$$UnitTypeDTOImplCopyWithImpl<_$UnitTypeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitTypeDTOImplToJson(
      this,
    );
  }
}

abstract class _UnitTypeDTO extends UnitTypeDTO {
  const factory _UnitTypeDTO(
      {@JsonKey(name: "unit_id") final dynamic id,
      @JsonKey(name: "base_qty") final dynamic baseQty,
      @JsonKey(name: "unit_name") final String name}) = _$UnitTypeDTOImpl;
  const _UnitTypeDTO._() : super._();

  factory _UnitTypeDTO.fromJson(Map<String, dynamic> json) =
      _$UnitTypeDTOImpl.fromJson;

  @override
  @JsonKey(name: "unit_id")
  dynamic get id;
  @override
  @JsonKey(name: "base_qty")
  dynamic get baseQty;
  @override
  @JsonKey(name: "unit_name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UnitTypeDTOImplCopyWith<_$UnitTypeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
