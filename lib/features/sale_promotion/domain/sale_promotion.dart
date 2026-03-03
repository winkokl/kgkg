import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/customer_channel.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_region.dart';
part 'sale_promotion.freezed.dart';

@freezed
class SalePromotion with _$SalePromotion implements PagingDataItem {
  const factory SalePromotion({
    @Default(-1) int id,
    @Default("") String promotionId,
    @Default("") String promotionName,
    @Default([]) List<CustomerChannel> customerChannel,
    @Default("") String startDate,
    @Default("") String endDate,
    @Default("") String promotionRegion,
    @Default(0) int bonusDuration,
    @Default(0) int cashBackDuration,
    @Default(1) int status,
    @Default("") String description,
    @Default([]) List<PromotionRegion> region,
    @Default([]) List<PromotionDetail> details,
  }) = _SalePromotion;
}
