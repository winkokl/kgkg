import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/good_requisition_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';

part 'good_requisition.freezed.dart';

@freezed
class GoodRequisition with _$GoodRequisition implements PagingDataItem {
  const factory GoodRequisition({
    @Default(-1) int id,
    @Default('') String marketingPromotionPlanName,
    @Default('') String marketingPromotionPlanCode,
    @Default(MarketingPromotionPlan()) MarketingPromotionPlan marketingPromotionPlan,
    @Default('') String goodRequisitionDate,
    @Default('') String requestDate,
    @Default('') String customerName,
    @Default('') String businessUnit,
    @Default(0) int bonusDuration,
    @Default(0) int cashbackDuration,
    @Default(-1) int customerId,
    @Default(-1) int businessUnitId,
    @Default('') String startDate,
    @Default('') String endDate,
    @Default('') String marketingPromotionName,
    @Default('') String businessUnitName,
    @Default('') String customerFirstName,
    @Default([]) List<PromotionProduct> products,
    @Default([]) List<GiftItem> giftItems,
    @Default('') String description,
    @Default(GoodRequisitionStatus.open) GoodRequisitionStatus status,
  }) = _GoodRequisition;
}

// {"marketing_promotion_plan_name":"Test ava",
// "marketing_promotion_plan_code":"MP000001",
// "good_requisition_date":"2025-04-07T17:30:00.000Z",
// "customer_name":"Saw Yan Naing",
// "business_unit":"TestPrinceBU",
// "customer_id":299,
// "business_unit_id":138,
// "start_date":"2025-04-08",
// "end_date":"2025-04-08",
// "marketing_good_requisition_id": 28,
// "marketing_promotion_plan_id": 28,
// "request_date": "2025-04-08T00:00:00.000Z",
// "description": null,
// "status": "invoiced",

// "marketing_promotion_name": "to test return",
// "customer_first_name": "Paing Takhon",
// "business_unit_name": "Moe Yu San",
// "products":[
//     {"product_name":"SUPER BRAKE FLUID",
//     "unit_name":"0.5L Tins",
//     "marketing_promotion_product_id":34,
//     "product_id":275,
//     "unit_id":78,
//     "number_of_product":100,
//     "normal_discount":0,
//     "discount_type":"AMT",
//     "current_qty":1,
//     "base_qty":100,
//     "current_qty_unit":"78",
//     "requested_qty":100,
//     "amount":2220000,
//     "price":22200,
//     "warehouse_id":3,
//     "warehouse_name":"YGN 2"}],
//     "gift_items":[
//         {"marketing_promotion_gift_id":19,
//         "gift_item_id":275,
//         "unit_id":78,
//         "number_of_gift_item":100,
//         "current_qty":1,
//         "current_qty_unit":"78",
//         "requested_qty":100,
//         "base_qty":100,
//         "warehouse_id":3,
//         "warehouse_name":"YGN 2"}]},
