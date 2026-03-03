import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_dto.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt_dto.dart';

part 'invoice_dto.freezed.dart';
part 'invoice_dto.g.dart';
// {
//   "marketing_promotion_plan_id": 29,
//   "marketing_promotion_name": "test ktw",
//   "invoice_date": "2025-04-24T17:30:00.000Z",
//   "due_date": "2025-04-24T17:30:00.000Z",
//   "customer_id": 300,
//   "customer_name": "Paing Takhon",
//   "business_unit_id": 139,
//   "business_unit_name": "Moe Yu San",
//   "description": "",
//   "products": [
//     {
//       "marketing_promotion_product_id": 37,
//       "product_id": 298,
//       "unit_id": 92,
//       "number_of_product": 11,
//       "normal_discount": 0,
//       "discount_type": "AMT",
//       "sale_qty": 1,
//       "net_sale_price": 4000,
//       "amount": 4000
//     },
//     {
//       "marketing_promotion_product_id": 38,
//       "product_id": 275,
//       "unit_id": 78,
//       "number_of_product": 20,
//       "normal_discount": 0,
//       "discount_type": "AMT",
//       "sale_qty": 1,
//       "net_sale_price": 200,
//       "amount": 200
//     }
//   ],
//   "gift_items": [
//     {
//       "marketing_promotion_gift_id": 21,
//       "gift_item_id": 298,
//       "unit_id": 92,
//       "number_of_gift_item": 10,
//       "return_reason": "fghgh",
//       "sale_qty": "1"
//     },
//     {
//       "marketing_promotion_gift_id": 22,
//       "gift_item_id": 275,
//       "unit_id": 78,
//       "number_of_gift_item": 200,
//       "return_reason": "",
//       "sale_qty": "0"
//     }
//   ],
//   "tax": 10,
//   "tax_type": "%",
//   "tax_amount": 420,
//   "discount": 100,
//   "discount_type": "",
//   "discount_amount": 100,
//   "bonus": 100,
//   "bonus_type": "",
//   "bonus_amount": 100,
//   "cashback": 10,
//   "cashback_type": "%",
//   "cashback_amount": 420,
//   "other_charges": 200,
//   "grand_total_amount": 4200,
//   "sub_total": 4200,
//   "bonus_duration": 3,
//   "cashback_duration": 3
// }

@freezed
class InvoiceDTO with _$InvoiceDTO {
  const InvoiceDTO._();

  const factory InvoiceDTO({
    @JsonKey(name: 'marketing_promotion_invoice_id') @Default(-1) int id,
    @JsonKey(name: 'marketing_promotion_name') @Default('') String promotionName,
    @JsonKey(name: 'marketing_promotion_invoice_code') @Default('') String code,
    @JsonKey(name: 'marketing_promotion_plan_id') @Default(-1) int planId,
    @JsonKey(name: 'marketing_promotion_plan_code') @Default('') String planCode,
    @JsonKey(name: 'invoice_date') @Default('') String invoiceDate,
    @JsonKey(name: 'due_date') @Default('') String dueDate,
    @JsonKey(name: 'warehouse_id') int? warehouseId,
    @JsonKey(name: 'sub_total') @Default(0) double subTotal,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @JsonKey(name: 'discount_type') @Default('') String discountType,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'tax_type') @Default('') String taxType,
    @JsonKey(name: 'other_charges') @Default(0) double otherCharges,
    @JsonKey(name: 'grand_total_amount') @Default(0) double grandTotal,
    @JsonKey(name: 'payment_type_id') int? paymentTypeId,
    @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
    @JsonKey(name: 'credit_type_id') int? creditTypeId,
    @JsonKey(name: 'customer_id') int? customerId,
    @JsonKey(name: 'customer_name') @Default('') String customerName,
    @JsonKey(name: 'delete_reason') String? deleteReason,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'remark') String? remark,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'balance') @Default(0) double balance,
    @JsonKey(name: 'tax') @Default(0) double tax,
    @JsonKey(name: 'discount') @Default(0) double discount,
    @JsonKey(name: 'business_unit_id') int? businessUnitId,
    @JsonKey(name: 'business_unit_name') @Default('') String businessUnitName,
    @JsonKey(name: 'invoice_status') @Default('') String invoiceStatus,
    @JsonKey(name: 'bonus') @Default(0) double bonus,
    @JsonKey(name: 'bonus_type') @Default('') String bonusType,
    @JsonKey(name: 'bonus_amt') @Default(0) double bonusAmt,
    @JsonKey(name: 'bonus_amount') @Default(0) double bonusAmount,
    @JsonKey(name: 'cashback') @Default(0) double cashback,
    @JsonKey(name: 'cashback_type') @Default('') String cashbackType,
    @JsonKey(name: 'cashback_amt') @Default(0) double cashbackAmt,
    @JsonKey(name: 'cashback_amount') @Default(0) double cashbackAmount,
    @JsonKey(name: 'payment_receives', includeToJson: false) @Default([]) List<ReceiptDTO> paymentReceivedHistoryDto,
    @JsonKey(name: 'marketing_good_requisition_id') @Default(-1) int marketingGoodRequisitionId,
    @JsonKey(name: 'marketing_promotion_plan', includeToJson: false) @Default(MarketingPromotionPlanDTO()) MarketingPromotionPlanDTO marketingPromotionPlanDto,
    @JsonKey(name: 'bonus_duration') @Default(0) int bonusDuration,
    @JsonKey(name: 'cashback_duration') @Default(0) int cashbackDuration,
    @JsonKey(name: 'products') @Default([]) List<PromotionProductDTO> productDtos,
    @JsonKey(name: 'gift_items') @Default([]) List<GiftItemDTO> giftItemDtos,
  }) = _InvoiceDTO;

  factory InvoiceDTO.fromJson(Map<String, dynamic> json) => _$InvoiceDTOFromJson(json);

  factory InvoiceDTO.fromDomain(Invoice invoice) {
    return InvoiceDTO(
      id: invoice.id,
      code: invoice.code,
      promotionName: invoice.marketingPromotionPlan.name,
      planId: invoice.planId,
      invoiceDate: invoice.invoiceDate,
      dueDate: invoice.dueDate,
      warehouseId: invoice.warehouseId,
      subTotal: invoice.subTotal,
      discountAmount: invoice.discountType == AmountOrPercentStatus.percent ? (invoice.subTotal / invoice.discountAmount) : invoice.discountAmount,
      discountType: invoice.discountType.name,
      taxAmount: invoice.taxType == AmountOrPercentStatus.percent ? (invoice.subTotal / invoice.taxAmount) : invoice.taxAmount,
      taxType: invoice.taxType.name,
      otherCharges: invoice.otherCharges,
      grandTotal: invoice.grandTotal,
      paymentTypeId: invoice.paymentTypeId,
      paymentTermsId: invoice.paymentTermsId,
      creditTypeId: invoice.creditTypeId,
      customerId: invoice.customerId,
      customerName: invoice.marketingPromotionPlan.customerName,
      deleteReason: invoice.deleteReason,
      status: invoice.status,
      remark: invoice.remark,
      description: invoice.description,
      balance: invoice.balance,
      tax: invoice.taxAmount,
      discount: invoice.discountAmount,
      businessUnitId: invoice.businessUnitId,
      invoiceStatus: invoice.paymentStatus.name,
      bonus: invoice.bonusAmt,
      bonusType: invoice.bonusType.name,
      bonusAmt: invoice.bonusType == AmountOrPercentStatus.percent ? (invoice.subTotal / invoice.bonusAmt) : invoice.bonusAmt,
      bonusAmount: invoice.bonusType == AmountOrPercentStatus.percent ? (invoice.subTotal / invoice.bonusAmt) : invoice.bonusAmt,
      cashback: invoice.cashbackAmt,
      cashbackType: invoice.cashbackType.name,
      cashbackAmt: invoice.cashbackType == AmountOrPercentStatus.percent ? (invoice.subTotal / invoice.cashbackAmt) : invoice.cashbackAmt,
      cashbackAmount: invoice.cashbackType == AmountOrPercentStatus.percent ? (invoice.subTotal / invoice.cashbackAmt) : invoice.cashbackAmt,
      marketingGoodRequisitionId: invoice.marketingGoodRequisitionId,
      bonusDuration: invoice.bonusDuration,
      cashbackDuration: invoice.cashbackDuration,
      productDtos: invoice.products.map((e) => PromotionProductDTO.fromDomain(e)).toList(),
      giftItemDtos: invoice.giftItems.map((e) => GiftItemDTO.fromDomain(e)).toList(),
    );
  }

  Invoice toDomain() {
    final mmp = marketingPromotionPlanDto.toDomain();
    final cbType = AmountOrPercentStatus.fromName(cashbackType);
    final bType = AmountOrPercentStatus.fromName(bonusType);
    final tType = AmountOrPercentStatus.fromName(taxType);
    final dType = AmountOrPercentStatus.fromName(discountType);

    return Invoice(
      id: id,
      code: code,
      planId: planId,
      planCode: planCode,
      invoiceDate: invoiceDate,
      dueDate: dueDate,
      warehouseId: warehouseId,
      subTotal: subTotal,
      discountAmount: dType == AmountOrPercentStatus.amount ? discountAmount : discount,
      discountType: dType,
      taxAmount: tType == AmountOrPercentStatus.amount ? taxAmount : tax,
      taxType: tType,
      otherCharges: otherCharges,
      grandTotal: grandTotal,
      paymentTypeId: paymentTypeId,
      paymentTermsId: paymentTermsId,
      creditTypeId: creditTypeId,
      customerId: customerId,
      deleteReason: deleteReason,
      status: status,
      remark: remark,
      description: description,
      balance: balance,
      tax: tax,
      discount: discount,
      businessUnitId: businessUnitId,
      paymentStatus: PaymentStatus.fromString(invoiceStatus),
      bonus: bonus,
      bonusType: bType,
      bonusAmt: bType == AmountOrPercentStatus.amount ? bonusAmt : bonus,
      cashback: cashback,
      cashbackType: cbType,
      cashbackAmt: cbType == AmountOrPercentStatus.amount ? cashbackAmt : cashback,
      bonusDuration: bonusDuration,
      cashbackDuration: cashbackDuration,
      paymentReceivedHistory: paymentReceivedHistoryDto.map((e) => e.toDomain()).toList(),
      marketingGoodRequisitionId: marketingGoodRequisitionId,
      marketingPromotionPlan: mmp,
      products: productDtos.map((e) => e.toDomain()).toList(),
      giftItems: giftItemDtos.map((e) => e.toDomain()).toList(),
    );
  }
}
