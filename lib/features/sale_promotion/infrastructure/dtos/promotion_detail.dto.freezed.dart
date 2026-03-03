// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_detail.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionDetailDTO _$PromotionDetailDTOFromJson(Map<String, dynamic> json) {
  return _PromotionDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionDetailDTO {
  @JsonKey(name: "range_type")
  String get rangeType => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_promotion_id")
  String get salePromotionId => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_promotion_detail_id")
  int get salePromotionDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "promotion_name")
  String get promotionName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  List<SkuDTO> get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "info")
  List<InfoDTO> get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionDetailDTOCopyWith<PromotionDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDetailDTOCopyWith<$Res> {
  factory $PromotionDetailDTOCopyWith(
          PromotionDetailDTO value, $Res Function(PromotionDetailDTO) then) =
      _$PromotionDetailDTOCopyWithImpl<$Res, PromotionDetailDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "range_type") String rangeType,
      @JsonKey(name: "sale_promotion_id") String salePromotionId,
      @JsonKey(name: "sale_promotion_detail_id") int salePromotionDetailId,
      @JsonKey(name: "promotion_name") String promotionName,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "sku") List<SkuDTO> sku,
      @JsonKey(name: "info") List<InfoDTO> info});
}

/// @nodoc
class _$PromotionDetailDTOCopyWithImpl<$Res, $Val extends PromotionDetailDTO>
    implements $PromotionDetailDTOCopyWith<$Res> {
  _$PromotionDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeType = null,
    Object? salePromotionId = null,
    Object? salePromotionDetailId = null,
    Object? promotionName = null,
    Object? productId = null,
    Object? sku = null,
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      rangeType: null == rangeType
          ? _value.rangeType
          : rangeType // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionDetailId: null == salePromotionDetailId
          ? _value.salePromotionDetailId
          : salePromotionDetailId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as List<SkuDTO>,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<InfoDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionDetailDTOImplCopyWith<$Res>
    implements $PromotionDetailDTOCopyWith<$Res> {
  factory _$$PromotionDetailDTOImplCopyWith(_$PromotionDetailDTOImpl value,
          $Res Function(_$PromotionDetailDTOImpl) then) =
      __$$PromotionDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "range_type") String rangeType,
      @JsonKey(name: "sale_promotion_id") String salePromotionId,
      @JsonKey(name: "sale_promotion_detail_id") int salePromotionDetailId,
      @JsonKey(name: "promotion_name") String promotionName,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "sku") List<SkuDTO> sku,
      @JsonKey(name: "info") List<InfoDTO> info});
}

/// @nodoc
class __$$PromotionDetailDTOImplCopyWithImpl<$Res>
    extends _$PromotionDetailDTOCopyWithImpl<$Res, _$PromotionDetailDTOImpl>
    implements _$$PromotionDetailDTOImplCopyWith<$Res> {
  __$$PromotionDetailDTOImplCopyWithImpl(_$PromotionDetailDTOImpl _value,
      $Res Function(_$PromotionDetailDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeType = null,
    Object? salePromotionId = null,
    Object? salePromotionDetailId = null,
    Object? promotionName = null,
    Object? productId = null,
    Object? sku = null,
    Object? info = null,
  }) {
    return _then(_$PromotionDetailDTOImpl(
      rangeType: null == rangeType
          ? _value.rangeType
          : rangeType // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionDetailId: null == salePromotionDetailId
          ? _value.salePromotionDetailId
          : salePromotionDetailId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      sku: null == sku
          ? _value._sku
          : sku // ignore: cast_nullable_to_non_nullable
              as List<SkuDTO>,
      info: null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<InfoDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionDetailDTOImpl extends _PromotionDetailDTO {
  const _$PromotionDetailDTOImpl(
      {@JsonKey(name: "range_type") this.rangeType = "",
      @JsonKey(name: "sale_promotion_id") this.salePromotionId = "",
      @JsonKey(name: "sale_promotion_detail_id")
      this.salePromotionDetailId = -1,
      @JsonKey(name: "promotion_name") this.promotionName = "",
      @JsonKey(name: "product_id") this.productId = -1,
      @JsonKey(name: "sku") final List<SkuDTO> sku = const [],
      @JsonKey(name: "info") final List<InfoDTO> info = const []})
      : _sku = sku,
        _info = info,
        super._();

  factory _$PromotionDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionDetailDTOImplFromJson(json);

  @override
  @JsonKey(name: "range_type")
  final String rangeType;
  @override
  @JsonKey(name: "sale_promotion_id")
  final String salePromotionId;
  @override
  @JsonKey(name: "sale_promotion_detail_id")
  final int salePromotionDetailId;
  @override
  @JsonKey(name: "promotion_name")
  final String promotionName;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  final List<SkuDTO> _sku;
  @override
  @JsonKey(name: "sku")
  List<SkuDTO> get sku {
    if (_sku is EqualUnmodifiableListView) return _sku;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sku);
  }

  final List<InfoDTO> _info;
  @override
  @JsonKey(name: "info")
  List<InfoDTO> get info {
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  String toString() {
    return 'PromotionDetailDTO(rangeType: $rangeType, salePromotionId: $salePromotionId, salePromotionDetailId: $salePromotionDetailId, promotionName: $promotionName, productId: $productId, sku: $sku, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionDetailDTOImpl &&
            (identical(other.rangeType, rangeType) ||
                other.rangeType == rangeType) &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.salePromotionDetailId, salePromotionDetailId) ||
                other.salePromotionDetailId == salePromotionDetailId) &&
            (identical(other.promotionName, promotionName) ||
                other.promotionName == promotionName) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality().equals(other._sku, _sku) &&
            const DeepCollectionEquality().equals(other._info, _info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rangeType,
      salePromotionId,
      salePromotionDetailId,
      promotionName,
      productId,
      const DeepCollectionEquality().hash(_sku),
      const DeepCollectionEquality().hash(_info));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionDetailDTOImplCopyWith<_$PromotionDetailDTOImpl> get copyWith =>
      __$$PromotionDetailDTOImplCopyWithImpl<_$PromotionDetailDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionDetailDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionDetailDTO extends PromotionDetailDTO {
  const factory _PromotionDetailDTO(
          {@JsonKey(name: "range_type") final String rangeType,
          @JsonKey(name: "sale_promotion_id") final String salePromotionId,
          @JsonKey(name: "sale_promotion_detail_id")
          final int salePromotionDetailId,
          @JsonKey(name: "promotion_name") final String promotionName,
          @JsonKey(name: "product_id") final int productId,
          @JsonKey(name: "sku") final List<SkuDTO> sku,
          @JsonKey(name: "info") final List<InfoDTO> info}) =
      _$PromotionDetailDTOImpl;
  const _PromotionDetailDTO._() : super._();

  factory _PromotionDetailDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionDetailDTOImpl.fromJson;

  @override
  @JsonKey(name: "range_type")
  String get rangeType;
  @override
  @JsonKey(name: "sale_promotion_id")
  String get salePromotionId;
  @override
  @JsonKey(name: "sale_promotion_detail_id")
  int get salePromotionDetailId;
  @override
  @JsonKey(name: "promotion_name")
  String get promotionName;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "sku")
  List<SkuDTO> get sku;
  @override
  @JsonKey(name: "info")
  List<InfoDTO> get info;
  @override
  @JsonKey(ignore: true)
  _$$PromotionDetailDTOImplCopyWith<_$PromotionDetailDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
