// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sku_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SkuDTO _$SkuDTOFromJson(Map<String, dynamic> json) {
  return _SkuDTO.fromJson(json);
}

/// @nodoc
mixin _$SkuDTO {
  @JsonKey(name: "label")
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkuDTOCopyWith<SkuDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkuDTOCopyWith<$Res> {
  factory $SkuDTOCopyWith(SkuDTO value, $Res Function(SkuDTO) then) =
      _$SkuDTOCopyWithImpl<$Res, SkuDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "label") String label,
      @JsonKey(name: "value") int value});
}

/// @nodoc
class _$SkuDTOCopyWithImpl<$Res, $Val extends SkuDTO>
    implements $SkuDTOCopyWith<$Res> {
  _$SkuDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkuDTOImplCopyWith<$Res> implements $SkuDTOCopyWith<$Res> {
  factory _$$SkuDTOImplCopyWith(
          _$SkuDTOImpl value, $Res Function(_$SkuDTOImpl) then) =
      __$$SkuDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "label") String label,
      @JsonKey(name: "value") int value});
}

/// @nodoc
class __$$SkuDTOImplCopyWithImpl<$Res>
    extends _$SkuDTOCopyWithImpl<$Res, _$SkuDTOImpl>
    implements _$$SkuDTOImplCopyWith<$Res> {
  __$$SkuDTOImplCopyWithImpl(
      _$SkuDTOImpl _value, $Res Function(_$SkuDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
  }) {
    return _then(_$SkuDTOImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkuDTOImpl extends _SkuDTO {
  const _$SkuDTOImpl(
      {@JsonKey(name: "label") this.label = "",
      @JsonKey(name: "value") this.value = -1})
      : super._();

  factory _$SkuDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkuDTOImplFromJson(json);

  @override
  @JsonKey(name: "label")
  final String label;
  @override
  @JsonKey(name: "value")
  final int value;

  @override
  String toString() {
    return 'SkuDTO(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkuDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkuDTOImplCopyWith<_$SkuDTOImpl> get copyWith =>
      __$$SkuDTOImplCopyWithImpl<_$SkuDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkuDTOImplToJson(
      this,
    );
  }
}

abstract class _SkuDTO extends SkuDTO {
  const factory _SkuDTO(
      {@JsonKey(name: "label") final String label,
      @JsonKey(name: "value") final int value}) = _$SkuDTOImpl;
  const _SkuDTO._() : super._();

  factory _SkuDTO.fromJson(Map<String, dynamic> json) = _$SkuDTOImpl.fromJson;

  @override
  @JsonKey(name: "label")
  String get label;
  @override
  @JsonKey(name: "value")
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$SkuDTOImplCopyWith<_$SkuDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
