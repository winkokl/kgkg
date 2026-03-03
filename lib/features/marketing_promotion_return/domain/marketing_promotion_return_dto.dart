import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return.dart';
part 'marketing_promotion_return_dto.freezed.dart';
part 'marketing_promotion_return_dto.g.dart';

@freezed
class MarketingPromotionReturnDTO with _$MarketingPromotionReturnDTO {
  const MarketingPromotionReturnDTO._();
  const factory MarketingPromotionReturnDTO({
    @Default(-1) int id,
    @Default('') String code,
    @JsonKey(name: 'return_date') @Default('') String returnDate,
    @JsonKey(name: 'marketing_promotion_plan_id') @Default(-1) int marketingPromotionPlanId,
    @JsonKey(name: 'marketing_promotion_id') @Default(-1) int marketingPromotionId,
    @Default('') String description,
    @JsonKey(name: 'sub_total') @Default(0) double subTotal,
    @JsonKey(name: 'other_charges') @Default(0) double otherCharges,
    @JsonKey(name: 'grand_total') @Default(0) double grandTotal,
    @JsonKey(name: 'return_deduct') @Default(0) double returnDeduct,
    @JsonKey(name: 'deduct_amount') @Default(0) double deductAmount,
    @Default(0) double total,
    @Default(0) double balance,
    @JsonKey(name: 'paid_amount') @Default(0) double paidAmount,
    @JsonKey(name: 'return_status') @Default('') String returnStatus,
    @JsonKey(name: 'marketing_promotion_name') @Default('') String marketingPromotionName,
    @JsonKey(name: 'marketing_promotion_plan_code') @Default('') String marketingPromotionPlanCode,
    @JsonKey(name: 'customer_name') @Default('') String customerName,
    @JsonKey(name: 'business_unit_name') @Default('') String businessUnitName,
    @JsonKey(name: 'products') @Default([]) List<PromotionProductDTO> productDtos,
    @JsonKey(name: 'gifts') @Default([]) List<GiftItemDTO> giftItemDtos,
  }) = _MarketingPromotionReturnDTO;

  factory MarketingPromotionReturnDTO.fromJson(Map<String, dynamic> json) => _$MarketingPromotionReturnDTOFromJson(json);

  factory MarketingPromotionReturnDTO.fromDomain(MarketingPromotionReturn domain) {
    return MarketingPromotionReturnDTO(
      id: domain.id,
      code: domain.code,
      returnDate: domain.returnDate,
      marketingPromotionPlanId: domain.marketingPromotionPlan.id,
      marketingPromotionId: domain.marketingPromotionPlan.id,
      description: domain.description,
      subTotal: domain.subTotal,
      otherCharges: domain.otherCharges,
      grandTotal: domain.grandTotal,
      deductAmount: domain.deductAmount,
      returnDeduct: domain.deductAmount,
      total: domain.total,
      balance: domain.balance,
      paidAmount: domain.paidAmount,
      returnStatus: domain.returnStatus.name,
      marketingPromotionName: domain.marketingPromotionPlan.name,
      marketingPromotionPlanCode: domain.marketingPromotionPlan.planCode,
      customerName: domain.customerName,
      businessUnitName: domain.businessUnitName,
      productDtos: domain.products.map((e) => PromotionProductDTO.fromDomain(e)).toList(),
      giftItemDtos: domain.giftItems.map((e) => GiftItemDTO.fromDomain(e)).toList(),
    );
  }

  MarketingPromotionReturn toDomain() {
    return MarketingPromotionReturn(
      id: id,
      code: code,
      returnDate: returnDate,
      // marketingPromotionPlanId: marketingPromotionPlanId,
      description: description,
      subTotal: subTotal,
      otherCharges: otherCharges,
      grandTotal: grandTotal,
      deductAmount: deductAmount,
      total: total,
      balance: balance,
      paidAmount: paidAmount,
      returnStatus: PaymentStatus.fromString(returnStatus),
      // marketingPromotionName: marketingPromotionName,
      // marketingPromotionPlanCode: marketingPromotionPlanCode,
      marketingPromotionPlan: MarketingPromotionPlan(
        id: marketingPromotionPlanId,
        name: marketingPromotionName,
        planCode: marketingPromotionPlanCode,
      ),
      customerName: customerName,
      businessUnitName: businessUnitName,
      products: productDtos.map((e) => e.toDomain()).toList(),
      giftItems: giftItemDtos.map((e) => e.toDomain()).toList(),
    );
  }
}
