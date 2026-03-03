// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_region_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionRegionDTO _$PromotionRegionDTOFromJson(Map<String, dynamic> json) {
  return _PromotionRegionDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionRegionDTO {
  @JsonKey(name: "promotion_region_id")
  int get promotionRegionId => throw _privateConstructorUsedError;
  @JsonKey(name: "promotion_region_name")
  String get promotionRegionName => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_promotion_region_id")
  int get salePromotionRegionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionRegionDTOCopyWith<PromotionRegionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionRegionDTOCopyWith<$Res> {
  factory $PromotionRegionDTOCopyWith(
          PromotionRegionDTO value, $Res Function(PromotionRegionDTO) then) =
      _$PromotionRegionDTOCopyWithImpl<$Res, PromotionRegionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "promotion_region_id") int promotionRegionId,
      @JsonKey(name: "promotion_region_name") String promotionRegionName,
      @JsonKey(name: "sale_promotion_region_id") int salePromotionRegionId});
}

/// @nodoc
class _$PromotionRegionDTOCopyWithImpl<$Res, $Val extends PromotionRegionDTO>
    implements $PromotionRegionDTOCopyWith<$Res> {
  _$PromotionRegionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionRegionId = null,
    Object? promotionRegionName = null,
    Object? salePromotionRegionId = null,
  }) {
    return _then(_value.copyWith(
      promotionRegionId: null == promotionRegionId
          ? _value.promotionRegionId
          : promotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionRegionName: null == promotionRegionName
          ? _value.promotionRegionName
          : promotionRegionName // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionRegionId: null == salePromotionRegionId
          ? _value.salePromotionRegionId
          : salePromotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionRegionDTOImplCopyWith<$Res>
    implements $PromotionRegionDTOCopyWith<$Res> {
  factory _$$PromotionRegionDTOImplCopyWith(_$PromotionRegionDTOImpl value,
          $Res Function(_$PromotionRegionDTOImpl) then) =
      __$$PromotionRegionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "promotion_region_id") int promotionRegionId,
      @JsonKey(name: "promotion_region_name") String promotionRegionName,
      @JsonKey(name: "sale_promotion_region_id") int salePromotionRegionId});
}

/// @nodoc
class __$$PromotionRegionDTOImplCopyWithImpl<$Res>
    extends _$PromotionRegionDTOCopyWithImpl<$Res, _$PromotionRegionDTOImpl>
    implements _$$PromotionRegionDTOImplCopyWith<$Res> {
  __$$PromotionRegionDTOImplCopyWithImpl(_$PromotionRegionDTOImpl _value,
      $Res Function(_$PromotionRegionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionRegionId = null,
    Object? promotionRegionName = null,
    Object? salePromotionRegionId = null,
  }) {
    return _then(_$PromotionRegionDTOImpl(
      promotionRegionId: null == promotionRegionId
          ? _value.promotionRegionId
          : promotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionRegionName: null == promotionRegionName
          ? _value.promotionRegionName
          : promotionRegionName // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionRegionId: null == salePromotionRegionId
          ? _value.salePromotionRegionId
          : salePromotionRegionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionRegionDTOImpl extends _PromotionRegionDTO {
  const _$PromotionRegionDTOImpl(
      {@JsonKey(name: "promotion_region_id") this.promotionRegionId = -1,
      @JsonKey(name: "promotion_region_name") this.promotionRegionName = "",
      @JsonKey(name: "sale_promotion_region_id")
      this.salePromotionRegionId = -1})
      : super._();

  factory _$PromotionRegionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionRegionDTOImplFromJson(json);

  @override
  @JsonKey(name: "promotion_region_id")
  final int promotionRegionId;
  @override
  @JsonKey(name: "promotion_region_name")
  final String promotionRegionName;
  @override
  @JsonKey(name: "sale_promotion_region_id")
  final int salePromotionRegionId;

  @override
  String toString() {
    return 'PromotionRegionDTO(promotionRegionId: $promotionRegionId, promotionRegionName: $promotionRegionName, salePromotionRegionId: $salePromotionRegionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionRegionDTOImpl &&
            (identical(other.promotionRegionId, promotionRegionId) ||
                other.promotionRegionId == promotionRegionId) &&
            (identical(other.promotionRegionName, promotionRegionName) ||
                other.promotionRegionName == promotionRegionName) &&
            (identical(other.salePromotionRegionId, salePromotionRegionId) ||
                other.salePromotionRegionId == salePromotionRegionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, promotionRegionId,
      promotionRegionName, salePromotionRegionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionRegionDTOImplCopyWith<_$PromotionRegionDTOImpl> get copyWith =>
      __$$PromotionRegionDTOImplCopyWithImpl<_$PromotionRegionDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionRegionDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionRegionDTO extends PromotionRegionDTO {
  const factory _PromotionRegionDTO(
      {@JsonKey(name: "promotion_region_id") final int promotionRegionId,
      @JsonKey(name: "promotion_region_name") final String promotionRegionName,
      @JsonKey(name: "sale_promotion_region_id")
      final int salePromotionRegionId}) = _$PromotionRegionDTOImpl;
  const _PromotionRegionDTO._() : super._();

  factory _PromotionRegionDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionRegionDTOImpl.fromJson;

  @override
  @JsonKey(name: "promotion_region_id")
  int get promotionRegionId;
  @override
  @JsonKey(name: "promotion_region_name")
  String get promotionRegionName;
  @override
  @JsonKey(name: "sale_promotion_region_id")
  int get salePromotionRegionId;
  @override
  @JsonKey(ignore: true)
  _$$PromotionRegionDTOImplCopyWith<_$PromotionRegionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
