import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/active_status.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_dto.dart';

part 'marketing_promotion_plan_dto.freezed.dart';
part 'marketing_promotion_plan_dto.g.dart';

@freezed
class MarketingPromotionPlanDTO with _$MarketingPromotionPlanDTO {
  const MarketingPromotionPlanDTO._();
  const factory MarketingPromotionPlanDTO({
    @JsonKey(name: 'marketing_promotion_plan_id') @Default(-1) int id,
    @JsonKey(name: 'marketing_promotion_name') @Default('') String name,
    @JsonKey(name: 'marketing_promotion_plan_name') @Default('') String name2,
    @JsonKey(name: 'start_date') @Default('') String startDate,
    @JsonKey(name: 'end_date') @Default('') String endDate,
    @Default(0) int status,
    @JsonKey(name: 'product_rule') @Default(0) int productRule,
    @JsonKey(name: 'gift_rule') @Default(0) int giftRule,
    @JsonKey(name: 'bonus_duration') @Default(0) int bonusDuration,
    @JsonKey(name: 'cashback_duration') @Default(0) int cashbackDuration,
    @JsonKey(name: 'bonus_reason') @Default('') String bonusReason,
    @JsonKey(name: 'cashback_reason') @Default('') String cashbackReason,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'business_unit_id') @Default(-1) int businessUnitId,
    @JsonKey(name: 'marketing_promotion_plan_code') @Default('') String planCode,
    @JsonKey(name: 'way_id') @Default(-1) int wayId,
    @JsonKey(name: 'way_name') @Default('') String wayName,
    @JsonKey(name: 'customer_name') @Default('') String customerName,
    @JsonKey(name: 'business_unit_name') @Default('') String businessUnitName,
    @JsonKey(name: 'products') @Default([]) List<PromotionProductDTO> productDtos,
    @JsonKey(name: 'gift_items') @Default([]) List<GiftItemDTO> giftItemDtos,
  }) = _MarketingPromotionPlanDTO;

  factory MarketingPromotionPlanDTO.fromJson(Map<String, dynamic> json) => _$MarketingPromotionPlanDTOFromJson(json);

  MarketingPromotionPlan toDomain() {
    return MarketingPromotionPlan(
      id: id,
      name: name.isEmpty ? name2 : name,
      startDate: startDate,
      endDate: endDate,
      status: ActiveStatus.fromId(status),
      productRule: productRule,
      giftRule: giftRule,
      bonusDuration: bonusDuration,
      cashbackDuration: cashbackDuration,
      bonusReason: bonusReason,
      cashbackReason: cashbackReason,
      customerId: customerId,
      businessUnitId: businessUnitId,
      planCode: planCode,
      wayId: wayId,
      wayName: wayName,
      customerName: customerName,
      businessUnitName: businessUnitName,
      products: productDtos.map((e) => e.toDomain()).toList(),
      giftItems: giftItemDtos.map((e) => e.toDomain()).toList(),
    );
  }
}
