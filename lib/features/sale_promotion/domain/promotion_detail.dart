import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/sale_range_type.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sku.dart';
part 'promotion_detail.freezed.dart';

@freezed
class PromotionDetail with _$PromotionDetail {
  const factory PromotionDetail({
    @Default([]) List<Sku> sku,
    @Default([]) List<Info> info,
    @Default(SaleRangeType.mmk) SaleRangeType rangeType,
    @Default("") String salePromotionId,
    @Default("") String promotionName,
    @Default(-1) int productId,
    @Default(-1) int salePromotionDetailId,
  }) = _PromotionDetail;

  factory PromotionDetail.defaultValue() {
    return const PromotionDetail(
      sku: [],
      info: [],
      rangeType: SaleRangeType.mmk,
      salePromotionId: '',
      promotionName: '',
      productId: -1,
      salePromotionDetailId: -1,
    );
  }
}
