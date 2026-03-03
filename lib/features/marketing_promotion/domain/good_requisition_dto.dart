import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/good_requisition_status.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_dto.dart';

part 'good_requisition_dto.freezed.dart';
part 'good_requisition_dto.g.dart';

@freezed
class GoodRequisitionDTO with _$GoodRequisitionDTO {
  const GoodRequisitionDTO._();
  const factory GoodRequisitionDTO({
    @JsonKey(name: 'marketing_promotion_plan_name') @Default('') String marketingPromotionPlanName,
    @JsonKey(name: 'marketing_promotion_plan_code') @Default('') String marketingPromotionPlanCode,
    @JsonKey(name: 'marketing_promotion_plan', includeToJson: false) @Default(MarketingPromotionPlanDTO()) MarketingPromotionPlanDTO marketingPromotionPlanDto,
    @JsonKey(name: 'good_requisition_date') @Default('') String goodRequisitionDate,
    @JsonKey(name: 'request_date', includeToJson: false) @Default('') String requestDate,
    @JsonKey(name: 'customer_name') @Default('') String customerName,
    @JsonKey(name: 'business_unit') @Default('') String businessUnit,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'business_unit_id') @Default(-1) int businessUnitId,
    @JsonKey(name: "marketing_promotion_name", includeToJson: false) @Default('') String marketingPromotionName,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerFirstName,
    @JsonKey(name: 'start_date') @Default('') String startDate,
    @JsonKey(name: 'end_date') @Default('') String endDate,
    @JsonKey(name: 'bonus_duration', includeToJson: false) @Default(0) int bonusDuration,
    @JsonKey(name: 'cashback_duration', includeToJson: false) @Default(0) int cashbackDuration,
    @JsonKey(name: 'products') @Default([]) List<PromotionProductDTO> productDtos,
    @JsonKey(name: 'gift_items') @Default([]) List<GiftItemDTO> giftItemDtos,
    @JsonKey(name: 'description', includeToJson: false) @Default('') String description,
    @JsonKey(name: 'status', includeToJson: false) @Default('') String status,
  }) = _GoodRequisitionDTO;

  factory GoodRequisitionDTO.fromJson(Map<String, dynamic> data) => _$GoodRequisitionDTOFromJson(data);

  factory GoodRequisitionDTO.fromDomain(GoodRequisition goodRequisition) {
    return GoodRequisitionDTO(
      marketingPromotionPlanName: goodRequisition.marketingPromotionPlanName,
      marketingPromotionPlanCode: goodRequisition.marketingPromotionPlanCode,
      goodRequisitionDate: goodRequisition.goodRequisitionDate,
      customerName: goodRequisition.customerName,
      businessUnit: goodRequisition.businessUnit,
      customerId: goodRequisition.customerId,
      businessUnitId: goodRequisition.businessUnitId,
      startDate: goodRequisition.startDate,
      endDate: goodRequisition.endDate,
      productDtos: goodRequisition.products.map((e) => PromotionProductDTO.fromDomain(e)).toList(),
      giftItemDtos: goodRequisition.giftItems.map((e) => GiftItemDTO.fromDomain(e)).toList(),
    );
  }

  GoodRequisition toDomain() {
    final mmp = marketingPromotionPlanDto.toDomain();
    return GoodRequisition(
      marketingPromotionPlanName: marketingPromotionName.isEmpty ? mmp.name : marketingPromotionName,
      marketingPromotionPlanCode: mmp.planCode,
      id: mmp.id,
      requestDate: requestDate,
      goodRequisitionDate: requestDate,
      customerName: customerFirstName,
      businessUnit: businessUnitName,
      bonusDuration: bonusDuration,
      cashbackDuration: cashbackDuration,
      customerId: customerId,
      businessUnitId: businessUnitId,
      startDate: mmp.startDate,
      endDate: mmp.endDate,
      products: productDtos.map((e) => e.toDomain()).toList(),
      giftItems: giftItemDtos.map((e) => e.toDomain()).toList(),
      description: description,
      status: GoodRequisitionStatus.fromName(status),
      marketingPromotionPlan: mmp,
    );
  }
}
