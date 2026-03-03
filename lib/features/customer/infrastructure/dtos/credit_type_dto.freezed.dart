// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditTypeDto _$CreditTypeDtoFromJson(Map<String, dynamic> json) {
  return _CreditTypeDto.fromJson(json);
}

/// @nodoc
mixin _$CreditTypeDto {
  @JsonKey(name: 'credit_type_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_type_name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditTypeDtoCopyWith<CreditTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditTypeDtoCopyWith<$Res> {
  factory $CreditTypeDtoCopyWith(
          CreditTypeDto value, $Res Function(CreditTypeDto) then) =
      _$CreditTypeDtoCopyWithImpl<$Res, CreditTypeDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'credit_type_id') int id,
      @JsonKey(name: 'credit_type_name') String name});
}

/// @nodoc
class _$CreditTypeDtoCopyWithImpl<$Res, $Val extends CreditTypeDto>
    implements $CreditTypeDtoCopyWith<$Res> {
  _$CreditTypeDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$CreditTypeDtoImplCopyWith<$Res>
    implements $CreditTypeDtoCopyWith<$Res> {
  factory _$$CreditTypeDtoImplCopyWith(
          _$CreditTypeDtoImpl value, $Res Function(_$CreditTypeDtoImpl) then) =
      __$$CreditTypeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'credit_type_id') int id,
      @JsonKey(name: 'credit_type_name') String name});
}

/// @nodoc
class __$$CreditTypeDtoImplCopyWithImpl<$Res>
    extends _$CreditTypeDtoCopyWithImpl<$Res, _$CreditTypeDtoImpl>
    implements _$$CreditTypeDtoImplCopyWith<$Res> {
  __$$CreditTypeDtoImplCopyWithImpl(
      _$CreditTypeDtoImpl _value, $Res Function(_$CreditTypeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CreditTypeDtoImpl(
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
class _$CreditTypeDtoImpl extends _CreditTypeDto {
  const _$CreditTypeDtoImpl(
      {@JsonKey(name: 'credit_type_id') this.id = -1,
      @JsonKey(name: 'credit_type_name') this.name = ""})
      : super._();

  factory _$CreditTypeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditTypeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'credit_type_id')
  final int id;
  @override
  @JsonKey(name: 'credit_type_name')
  final String name;

  @override
  String toString() {
    return 'CreditTypeDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditTypeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditTypeDtoImplCopyWith<_$CreditTypeDtoImpl> get copyWith =>
      __$$CreditTypeDtoImplCopyWithImpl<_$CreditTypeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditTypeDtoImplToJson(
      this,
    );
  }
}

abstract class _CreditTypeDto extends CreditTypeDto {
  const factory _CreditTypeDto(
          {@JsonKey(name: 'credit_type_id') final int id,
          @JsonKey(name: 'credit_type_name') final String name}) =
      _$CreditTypeDtoImpl;
  const _CreditTypeDto._() : super._();

  factory _CreditTypeDto.fromJson(Map<String, dynamic> json) =
      _$CreditTypeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'credit_type_id')
  int get id;
  @override
  @JsonKey(name: 'credit_type_name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreditTypeDtoImplCopyWith<_$CreditTypeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
