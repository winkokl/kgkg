// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodDTO _$PaymentMethodDTOFromJson(Map<String, dynamic> json) {
  return _PaymentMethodDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodDTO {
  @JsonKey(name: 'payment_method_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodDTOCopyWith<PaymentMethodDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodDTOCopyWith<$Res> {
  factory $PaymentMethodDTOCopyWith(
          PaymentMethodDTO value, $Res Function(PaymentMethodDTO) then) =
      _$PaymentMethodDTOCopyWithImpl<$Res, PaymentMethodDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_method_id') int id,
      @JsonKey(name: 'payment_method_name') String name,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class _$PaymentMethodDTOCopyWithImpl<$Res, $Val extends PaymentMethodDTO>
    implements $PaymentMethodDTOCopyWith<$Res> {
  _$PaymentMethodDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$PaymentMethodDTOImplCopyWith<$Res>
    implements $PaymentMethodDTOCopyWith<$Res> {
  factory _$$PaymentMethodDTOImplCopyWith(_$PaymentMethodDTOImpl value,
          $Res Function(_$PaymentMethodDTOImpl) then) =
      __$$PaymentMethodDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_method_id') int id,
      @JsonKey(name: 'payment_method_name') String name,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$PaymentMethodDTOImplCopyWithImpl<$Res>
    extends _$PaymentMethodDTOCopyWithImpl<$Res, _$PaymentMethodDTOImpl>
    implements _$$PaymentMethodDTOImplCopyWith<$Res> {
  __$$PaymentMethodDTOImplCopyWithImpl(_$PaymentMethodDTOImpl _value,
      $Res Function(_$PaymentMethodDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$PaymentMethodDTOImpl(
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
class _$PaymentMethodDTOImpl extends _PaymentMethodDTO {
  _$PaymentMethodDTOImpl(
      {@JsonKey(name: 'payment_method_id') this.id = -1,
      @JsonKey(name: 'payment_method_name') this.name = "",
      @JsonKey(name: 'status') this.status = 0})
      : super._();

  factory _$PaymentMethodDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodDTOImplFromJson(json);

  @override
  @JsonKey(name: 'payment_method_id')
  final int id;
  @override
  @JsonKey(name: 'payment_method_name')
  final String name;
  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'PaymentMethodDTO(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodDTOImpl &&
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
  _$$PaymentMethodDTOImplCopyWith<_$PaymentMethodDTOImpl> get copyWith =>
      __$$PaymentMethodDTOImplCopyWithImpl<_$PaymentMethodDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodDTOImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodDTO extends PaymentMethodDTO {
  factory _PaymentMethodDTO(
      {@JsonKey(name: 'payment_method_id') final int id,
      @JsonKey(name: 'payment_method_name') final String name,
      @JsonKey(name: 'status') final int status}) = _$PaymentMethodDTOImpl;
  _PaymentMethodDTO._() : super._();

  factory _PaymentMethodDTO.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodDTOImpl.fromJson;

  @override
  @JsonKey(name: 'payment_method_id')
  int get id;
  @override
  @JsonKey(name: 'payment_method_name')
  String get name;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$PaymentMethodDTOImplCopyWith<_$PaymentMethodDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
