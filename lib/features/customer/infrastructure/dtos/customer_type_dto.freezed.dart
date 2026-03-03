// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerTypeDTO _$CustomerTypeDTOFromJson(Map<String, dynamic> json) {
  return _CustomerTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerTypeDTO {
  @JsonKey(name: 'customer_type_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerTypeDTOCopyWith<CustomerTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTypeDTOCopyWith<$Res> {
  factory $CustomerTypeDTOCopyWith(
          CustomerTypeDTO value, $Res Function(CustomerTypeDTO) then) =
      _$CustomerTypeDTOCopyWithImpl<$Res, CustomerTypeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_type_id') int id,
      @JsonKey(name: 'customer_type_name') String name,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class _$CustomerTypeDTOCopyWithImpl<$Res, $Val extends CustomerTypeDTO>
    implements $CustomerTypeDTOCopyWith<$Res> {
  _$CustomerTypeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerTypeDTOImplCopyWith<$Res>
    implements $CustomerTypeDTOCopyWith<$Res> {
  factory _$$CustomerTypeDTOImplCopyWith(_$CustomerTypeDTOImpl value,
          $Res Function(_$CustomerTypeDTOImpl) then) =
      __$$CustomerTypeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_type_id') int id,
      @JsonKey(name: 'customer_type_name') String name,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$CustomerTypeDTOImplCopyWithImpl<$Res>
    extends _$CustomerTypeDTOCopyWithImpl<$Res, _$CustomerTypeDTOImpl>
    implements _$$CustomerTypeDTOImplCopyWith<$Res> {
  __$$CustomerTypeDTOImplCopyWithImpl(
      _$CustomerTypeDTOImpl _value, $Res Function(_$CustomerTypeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$CustomerTypeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerTypeDTOImpl extends _CustomerTypeDTO {
  const _$CustomerTypeDTOImpl(
      {@JsonKey(name: 'customer_type_id') this.id = -1,
      @JsonKey(name: 'customer_type_name') this.name = "",
      @JsonKey(name: 'status') this.status = -1})
      : super._();

  factory _$CustomerTypeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerTypeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'customer_type_id')
  final int id;
  @override
  @JsonKey(name: 'customer_type_name')
  final String name;
  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'CustomerTypeDTO(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTypeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerTypeDTOImplCopyWith<_$CustomerTypeDTOImpl> get copyWith =>
      __$$CustomerTypeDTOImplCopyWithImpl<_$CustomerTypeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerTypeDTOImplToJson(
      this,
    );
  }
}

abstract class _CustomerTypeDTO extends CustomerTypeDTO {
  const factory _CustomerTypeDTO(
      {@JsonKey(name: 'customer_type_id') final int id,
      @JsonKey(name: 'customer_type_name') final String name,
      @JsonKey(name: 'status') final int status}) = _$CustomerTypeDTOImpl;
  const _CustomerTypeDTO._() : super._();

  factory _CustomerTypeDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerTypeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'customer_type_id')
  int get id;
  @override
  @JsonKey(name: 'customer_type_name')
  String get name;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$CustomerTypeDTOImplCopyWith<_$CustomerTypeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
