// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_term_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentTermDTO _$PaymentTermDTOFromJson(Map<String, dynamic> json) {
  return _PaymentTermDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentTermDTO {
  @JsonKey(name: 'payment_terms_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTermDTOCopyWith<PaymentTermDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTermDTOCopyWith<$Res> {
  factory $PaymentTermDTOCopyWith(
          PaymentTermDTO value, $Res Function(PaymentTermDTO) then) =
      _$PaymentTermDTOCopyWithImpl<$Res, PaymentTermDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_terms_id') int id,
      @JsonKey(name: 'payment_terms') String name});
}

/// @nodoc
class _$PaymentTermDTOCopyWithImpl<$Res, $Val extends PaymentTermDTO>
    implements $PaymentTermDTOCopyWith<$Res> {
  _$PaymentTermDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$PaymentTermDTOImplCopyWith<$Res>
    implements $PaymentTermDTOCopyWith<$Res> {
  factory _$$PaymentTermDTOImplCopyWith(_$PaymentTermDTOImpl value,
          $Res Function(_$PaymentTermDTOImpl) then) =
      __$$PaymentTermDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_terms_id') int id,
      @JsonKey(name: 'payment_terms') String name});
}

/// @nodoc
class __$$PaymentTermDTOImplCopyWithImpl<$Res>
    extends _$PaymentTermDTOCopyWithImpl<$Res, _$PaymentTermDTOImpl>
    implements _$$PaymentTermDTOImplCopyWith<$Res> {
  __$$PaymentTermDTOImplCopyWithImpl(
      _$PaymentTermDTOImpl _value, $Res Function(_$PaymentTermDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PaymentTermDTOImpl(
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
class _$PaymentTermDTOImpl extends _PaymentTermDTO {
  const _$PaymentTermDTOImpl(
      {@JsonKey(name: 'payment_terms_id') this.id = -1,
      @JsonKey(name: 'payment_terms') this.name = ""})
      : super._();

  factory _$PaymentTermDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentTermDTOImplFromJson(json);

  @override
  @JsonKey(name: 'payment_terms_id')
  final int id;
  @override
  @JsonKey(name: 'payment_terms')
  final String name;

  @override
  String toString() {
    return 'PaymentTermDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTermDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTermDTOImplCopyWith<_$PaymentTermDTOImpl> get copyWith =>
      __$$PaymentTermDTOImplCopyWithImpl<_$PaymentTermDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentTermDTOImplToJson(
      this,
    );
  }
}

abstract class _PaymentTermDTO extends PaymentTermDTO {
  const factory _PaymentTermDTO(
          {@JsonKey(name: 'payment_terms_id') final int id,
          @JsonKey(name: 'payment_terms') final String name}) =
      _$PaymentTermDTOImpl;
  const _PaymentTermDTO._() : super._();

  factory _PaymentTermDTO.fromJson(Map<String, dynamic> json) =
      _$PaymentTermDTOImpl.fromJson;

  @override
  @JsonKey(name: 'payment_terms_id')
  int get id;
  @override
  @JsonKey(name: 'payment_terms')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PaymentTermDTOImplCopyWith<_$PaymentTermDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
