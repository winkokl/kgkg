// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_reason_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReturnReasonDTO _$ReturnReasonDTOFromJson(Map<String, dynamic> json) {
  return _ReturnReasonDTO.fromJson(json);
}

/// @nodoc
mixin _$ReturnReasonDTO {
  @JsonKey(name: 'return_reason_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason_name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnReasonDTOCopyWith<ReturnReasonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnReasonDTOCopyWith<$Res> {
  factory $ReturnReasonDTOCopyWith(
          ReturnReasonDTO value, $Res Function(ReturnReasonDTO) then) =
      _$ReturnReasonDTOCopyWithImpl<$Res, ReturnReasonDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'return_reason_id') int id,
      @JsonKey(name: 'reason_name') String name});
}

/// @nodoc
class _$ReturnReasonDTOCopyWithImpl<$Res, $Val extends ReturnReasonDTO>
    implements $ReturnReasonDTOCopyWith<$Res> {
  _$ReturnReasonDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$ReturnReasonDTOImplCopyWith<$Res>
    implements $ReturnReasonDTOCopyWith<$Res> {
  factory _$$ReturnReasonDTOImplCopyWith(_$ReturnReasonDTOImpl value,
          $Res Function(_$ReturnReasonDTOImpl) then) =
      __$$ReturnReasonDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'return_reason_id') int id,
      @JsonKey(name: 'reason_name') String name});
}

/// @nodoc
class __$$ReturnReasonDTOImplCopyWithImpl<$Res>
    extends _$ReturnReasonDTOCopyWithImpl<$Res, _$ReturnReasonDTOImpl>
    implements _$$ReturnReasonDTOImplCopyWith<$Res> {
  __$$ReturnReasonDTOImplCopyWithImpl(
      _$ReturnReasonDTOImpl _value, $Res Function(_$ReturnReasonDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ReturnReasonDTOImpl(
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
class _$ReturnReasonDTOImpl extends _ReturnReasonDTO {
  _$ReturnReasonDTOImpl(
      {@JsonKey(name: 'return_reason_id') this.id = -1,
      @JsonKey(name: 'reason_name') this.name = ""})
      : super._();

  factory _$ReturnReasonDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnReasonDTOImplFromJson(json);

  @override
  @JsonKey(name: 'return_reason_id')
  final int id;
  @override
  @JsonKey(name: 'reason_name')
  final String name;

  @override
  String toString() {
    return 'ReturnReasonDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnReasonDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnReasonDTOImplCopyWith<_$ReturnReasonDTOImpl> get copyWith =>
      __$$ReturnReasonDTOImplCopyWithImpl<_$ReturnReasonDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnReasonDTOImplToJson(
      this,
    );
  }
}

abstract class _ReturnReasonDTO extends ReturnReasonDTO {
  factory _ReturnReasonDTO(
      {@JsonKey(name: 'return_reason_id') final int id,
      @JsonKey(name: 'reason_name') final String name}) = _$ReturnReasonDTOImpl;
  _ReturnReasonDTO._() : super._();

  factory _ReturnReasonDTO.fromJson(Map<String, dynamic> json) =
      _$ReturnReasonDTOImpl.fromJson;

  @override
  @JsonKey(name: 'return_reason_id')
  int get id;
  @override
  @JsonKey(name: 'reason_name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ReturnReasonDTOImplCopyWith<_$ReturnReasonDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
