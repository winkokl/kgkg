import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/active_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';

part 'marketing_promotion_plan.freezed.dart';

@freezed
class MarketingPromotionPlan with _$MarketingPromotionPlan implements PagingDataItem {
  const factory MarketingPromotionPlan({
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String startDate,
    @Default('') String endDate,
    @Default(ActiveStatus.inactive) ActiveStatus status,
    @Default(0) int productRule,
    @Default(0) int giftRule,
    @Default(0) int bonusDuration,
    @Default(0) int cashbackDuration,
    @Default('') String bonusReason,
    @Default('') String cashbackReason,
    @Default(-1) int customerId,
    @Default(-1) int businessUnitId,
    @Default('') String planCode,
    @Default(-1) int wayId,
    @Default('') String wayName,
    @Default('') String customerName,
    @Default('') String businessUnitName,
    @Default([]) List<PromotionProduct> products,
    @Default([]) List<GiftItem> giftItems,
  }) = _MarketingPromotionPlan;
}
