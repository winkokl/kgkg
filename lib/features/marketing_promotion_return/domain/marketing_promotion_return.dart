import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';

part 'marketing_promotion_return.freezed.dart';

@freezed
class MarketingPromotionReturn with _$MarketingPromotionReturn implements PagingDataItem {
  const factory MarketingPromotionReturn({
    @Default(-1) int id,
    @Default('') String code,
    @Default('') String returnDate,
    @Default('') String description,
    @Default(0) double subTotal,
    @Default(0) double otherCharges,
    @Default(0) double grandTotal,
    @Default(0) double deductAmount,
    @Default(0) double total,
    @Default(0) double balance,
    @Default(0) double paidAmount,
    @Default(PaymentStatus.open) PaymentStatus returnStatus,
    @Default(MarketingPromotionPlan()) MarketingPromotionPlan marketingPromotionPlan,
    @Default('') String customerName,
    @Default('') String businessUnitName,
    @Default([]) List<PromotionProduct> products,
    @Default([]) List<GiftItem> giftItems,
  }) = _MarketingPromotionReturn;
}
