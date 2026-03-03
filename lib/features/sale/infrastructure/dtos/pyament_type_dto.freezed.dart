// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pyament_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentTypeDTO _$PaymentTypeDTOFromJson(Map<String, dynamic> json) {
  return _PaymentTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentTypeDTO {
  @JsonKey(name: 'payment_type_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTypeDTOCopyWith<PaymentTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeDTOCopyWith<$Res> {
  factory $PaymentTypeDTOCopyWith(
          PaymentTypeDTO value, $Res Function(PaymentTypeDTO) then) =
      _$PaymentTypeDTOCopyWithImpl<$Res, PaymentTypeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_type_id') int id,
      @JsonKey(name: 'payment_type_name') String name});
}

/// @nodoc
class _$PaymentTypeDTOCopyWithImpl<$Res, $Val extends PaymentTypeDTO>
    implements $PaymentTypeDTOCopyWith<$Res> {
  _$PaymentTypeDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$PaymentTypeDTOImplCopyWith<$Res>
    implements $PaymentTypeDTOCopyWith<$Res> {
  factory _$$PaymentTypeDTOImplCopyWith(_$PaymentTypeDTOImpl value,
          $Res Function(_$PaymentTypeDTOImpl) then) =
      __$$PaymentTypeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_type_id') int id,
      @JsonKey(name: 'payment_type_name') String name});
}

/// @nodoc
class __$$PaymentTypeDTOImplCopyWithImpl<$Res>
    extends _$PaymentTypeDTOCopyWithImpl<$Res, _$PaymentTypeDTOImpl>
    implements _$$PaymentTypeDTOImplCopyWith<$Res> {
  __$$PaymentTypeDTOImplCopyWithImpl(
      _$PaymentTypeDTOImpl _value, $Res Function(_$PaymentTypeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PaymentTypeDTOImpl(
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
class _$PaymentTypeDTOImpl extends _PaymentTypeDTO {
  _$PaymentTypeDTOImpl(
      {@JsonKey(name: 'payment_type_id') this.id = -1,
      @JsonKey(name: 'payment_type_name') this.name = ""})
      : super._();

  factory _$PaymentTypeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentTypeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'payment_type_id')
  final int id;
  @override
  @JsonKey(name: 'payment_type_name')
  final String name;

  @override
  String toString() {
    return 'PaymentTypeDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTypeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTypeDTOImplCopyWith<_$PaymentTypeDTOImpl> get copyWith =>
      __$$PaymentTypeDTOImplCopyWithImpl<_$PaymentTypeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentTypeDTOImplToJson(
      this,
    );
  }
}

abstract class _PaymentTypeDTO extends PaymentTypeDTO {
  factory _PaymentTypeDTO(
          {@JsonKey(name: 'payment_type_id') final int id,
          @JsonKey(name: 'payment_type_name') final String name}) =
      _$PaymentTypeDTOImpl;
  _PaymentTypeDTO._() : super._();

  factory _PaymentTypeDTO.fromJson(Map<String, dynamic> json) =
      _$PaymentTypeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'payment_type_id')
  int get id;
  @override
  @JsonKey(name: 'payment_type_name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PaymentTypeDTOImplCopyWith<_$PaymentTypeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
