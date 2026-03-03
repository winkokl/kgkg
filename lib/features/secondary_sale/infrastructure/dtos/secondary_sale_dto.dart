import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/sale_promotion_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secondary_sale_dto.freezed.dart';
part 'secondary_sale_dto.g.dart';

@freezed
class SecondarySaleDTO with _$SecondarySaleDTO {
  const SecondarySaleDTO._();
  const factory SecondarySaleDTO({
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_terms', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sales_date') @Default('') String date,
    @JsonKey(name: 'delivery_date') @Default('') String deliveryDate,
    @JsonKey(name: 'formatted_sales_date', includeToJson: false) @Default('') String formattedDate,
    @JsonKey(name: 'secondary_sales_order_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'secondary_sales_order_code', includeToJson: false) @Default('') String code,
    @JsonKey(name: 'sub_total') @Default(0) double subtotal,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @JsonKey(name: 'discount_type') @Default('') String discountType,
    @JsonKey(name: 'discount') @Default(0) double discount,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'tax') @Default(0) double tax,
    @JsonKey(name: 'tax_type') @Default('') String taxType,
    @JsonKey(name: 'other_charges') @Default(0) double otherCharges,
    @JsonKey(name: 'grand_total_amount') @Default(0) double grandTotal,
    @JsonKey(name: 'payment_type_id') @Default(-1) int paymentTypeId,
    @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'sale_type_id') int? saleTypeId,
    @JsonKey(name: 'sale_type_name', includeToJson: false) @Default('') String saleTypeName,
    @JsonKey(name: 'business_unit_id') int? businessUnitId,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: "product_detail") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'status', includeToJson: false) @Default("") String orderStatus,
    @JsonKey(name: 'reject_reason', includeToJson: false) @Default("") String rejectReason,
    @JsonKey(name: "bonus") @Default(0) double bonus,
    @JsonKey(name: "cash_back") @Default(0) double cashBack,
    @JsonKey(name: 'sale_promotion_id') int? salePromotionId,
    @JsonKey(name: 'sale_promotion', includeToJson: false) @Default(SalePromotionDTO()) SalePromotionDTO salePromotionDTO,
    @JsonKey(name: 'type', includeFromJson: false) @Default('Secondary') String type,
  }) = _SecondarySaleDTO;

  factory SecondarySaleDTO.fromJson(Map<String, dynamic> json) => _$SecondarySaleDTOFromJson(json);

  factory SecondarySaleDTO.fromDomain(SecondarySale sale) {
    final promotionItemList = sale.products.where((element) => element.isPromotionItem);

    final bonusTotal = promotionItemList.isNotEmpty
        ? promotionItemList.map((element) {
            final bonus = element.promotionInfo.bonus;
            final bonusType = element.promotionInfo.bonusType;
            final finalBonus = bonusType == AmountOrPercentStatus.amount ? bonus : (bonus / 100) * element.amount;
            return finalBonus;
          }).reduce((value, element) => value + element)
        : 0.0;

    final cashBackTotal = promotionItemList.isNotEmpty
        ? promotionItemList.map((element) {
            final cashBack = element.promotionInfo.cashback;
            final cashBackType = element.promotionInfo.cashbackType;
            final finalCashBack = cashBackType == AmountOrPercentStatus.amount ? cashBack : (cashBack / 100) * element.amount;
            return finalCashBack;
          }).reduce((value, element) => value + element)
        : 0.0;

    return SecondarySaleDTO(
      id: sale.id,
      date: sale.date,
      deliveryDate: sale.deliveryDate,
      customerId: sale.customer.id,
      saleTypeId: sale.saleType.id == -1 ? null : sale.saleType.id,
      paymentTermsId: sale.paymentTerm.id == -1 ? null : sale.paymentTerm.id,
      paymentTypeId: sale.paymentType.id,
      remark: sale.remark,
      description: sale.description,
      procutDto: sale.products.map((e) => ProductDTO.fromDomain(e)).toList(),
      taxType: sale.taxType.name,
      taxAmount: sale.taxAmount,
      tax: sale.tax,
      discount: sale.discount,
      discountType: sale.discountType.name,
      discountAmount: sale.discountAmount,
      subtotal: sale.subtotal,
      otherCharges: sale.otherChargesAmount,
      grandTotal: sale.grandtotal,
      businessUnitId: sale.businessUnit.id == -1 ? null : sale.businessUnit.id,
      bonus: bonusTotal,
      cashBack: cashBackTotal,
      salePromotionId: sale.salePromotion.id == -1 ? null : sale.salePromotion.id,
      type: sale.type,
    );
  }

  SecondarySale toDomain() {
    return SecondarySale(id: id, code: code, subtotal: subtotal, discountAmount: discount, discountType: AmountOrPercentStatus.fromName(discountType), taxType: AmountOrPercentStatus.fromName(taxType), taxAmount: tax, customer: Customer(id: customerId, name: customerName), date: date, deliveryDate: deliveryDate, description: description, grandtotal: grandTotal, otherChargesAmount: otherCharges, remark: remark, saleType: SaleType(id: saleTypeId ?? -1, name: saleTypeName), paymentTerm: PaymentTerm(id: paymentTermsId ?? -1, name: paymentTermName), paymentType: PaymentType(id: paymentTypeId, name: paymentTypeName), products: procutDto.map((e) => e.toDomain()).toList(), deleteReason: deleteReason, rejectReason: rejectReason, orderStatus: OrderStatus.fromId(int.parse(orderStatus)), businessUnit: BusinessUnit(id: businessUnitId ?? -1, name: businessUnitName), bonus: bonus, cashBack: cashBack, salePromotion: salePromotionDTO.toDomain(), type: type);
  }
}
