// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaleTypeDTO _$SaleTypeDTOFromJson(Map<String, dynamic> json) {
  return _SaleTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$SaleTypeDTO {
  @JsonKey(name: "sale_type_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_type_name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleTypeDTOCopyWith<SaleTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleTypeDTOCopyWith<$Res> {
  factory $SaleTypeDTOCopyWith(
          SaleTypeDTO value, $Res Function(SaleTypeDTO) then) =
      _$SaleTypeDTOCopyWithImpl<$Res, SaleTypeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_type_id") int id,
      @JsonKey(name: "sale_type_name") String name});
}

/// @nodoc
class _$SaleTypeDTOCopyWithImpl<$Res, $Val extends SaleTypeDTO>
    implements $SaleTypeDTOCopyWith<$Res> {
  _$SaleTypeDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$SaleTypeDTOImplCopyWith<$Res>
    implements $SaleTypeDTOCopyWith<$Res> {
  factory _$$SaleTypeDTOImplCopyWith(
          _$SaleTypeDTOImpl value, $Res Function(_$SaleTypeDTOImpl) then) =
      __$$SaleTypeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_type_id") int id,
      @JsonKey(name: "sale_type_name") String name});
}

/// @nodoc
class __$$SaleTypeDTOImplCopyWithImpl<$Res>
    extends _$SaleTypeDTOCopyWithImpl<$Res, _$SaleTypeDTOImpl>
    implements _$$SaleTypeDTOImplCopyWith<$Res> {
  __$$SaleTypeDTOImplCopyWithImpl(
      _$SaleTypeDTOImpl _value, $Res Function(_$SaleTypeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SaleTypeDTOImpl(
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
class _$SaleTypeDTOImpl extends _SaleTypeDTO {
  const _$SaleTypeDTOImpl(
      {@JsonKey(name: "sale_type_id") this.id = -1,
      @JsonKey(name: "sale_type_name") this.name = ""})
      : super._();

  factory _$SaleTypeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleTypeDTOImplFromJson(json);

  @override
  @JsonKey(name: "sale_type_id")
  final int id;
  @override
  @JsonKey(name: "sale_type_name")
  final String name;

  @override
  String toString() {
    return 'SaleTypeDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleTypeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleTypeDTOImplCopyWith<_$SaleTypeDTOImpl> get copyWith =>
      __$$SaleTypeDTOImplCopyWithImpl<_$SaleTypeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleTypeDTOImplToJson(
      this,
    );
  }
}

abstract class _SaleTypeDTO extends SaleTypeDTO {
  const factory _SaleTypeDTO(
      {@JsonKey(name: "sale_type_id") final int id,
      @JsonKey(name: "sale_type_name") final String name}) = _$SaleTypeDTOImpl;
  const _SaleTypeDTO._() : super._();

  factory _SaleTypeDTO.fromJson(Map<String, dynamic> json) =
      _$SaleTypeDTOImpl.fromJson;

  @override
  @JsonKey(name: "sale_type_id")
  int get id;
  @override
  @JsonKey(name: "sale_type_name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SaleTypeDTOImplCopyWith<_$SaleTypeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
