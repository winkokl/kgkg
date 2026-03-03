import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/sale_promotion_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/secondary_sale_receipt_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secondary_sale_invoice_dto.freezed.dart';
part 'secondary_sale_invoice_dto.g.dart';

@freezed
class SecondarySaleInvoiceDTO with _$SecondarySaleInvoiceDTO {
  const SecondarySaleInvoiceDTO._();
  const factory SecondarySaleInvoiceDTO({
    @JsonKey(name: 'secondary_sales_invoice_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: "secondary_sales_invoice_code", includeToJson: false) @Default("") String code,
    @JsonKey(name: 'secondary_sales_order_code', includeToJson: false) @Default('') String saleOrderCode,
    @JsonKey(name: "invoice_date") @Default("") String invoiceDate,
    @JsonKey(name: "delivery_date") @Default("") String deliveryDate,
    @JsonKey(name: "due_date") @Default("") String dueDate,
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_terms', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sales_date') @Default('') String saleDate,
    @JsonKey(name: 'formatted_sales_date', includeToJson: false) @Default('') String formattedDate,
    @JsonKey(name: 'secondary_sales_order_id', includeToJson: false) @Default(-1) int saleOrderId,
    @Default(0) double balance,
    @JsonKey(name: 'business_unit_id') int? businessUnitId,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: 'sub_total') @Default(0) double subtotal,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @JsonKey(name: 'discount_type') @Default('') String discountType,
    @JsonKey(name: 'discount') @Default(0) double discount,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'tax_type') @Default('') String taxType,
    @JsonKey(name: 'tax') @Default(0) double tax,
    @JsonKey(name: 'other_charges') @Default(0) double otherCharges,
    @JsonKey(name: 'grand_total_amount') @Default(0) double grandTotal,
    @JsonKey(name: 'payment_type_id') @Default(-1) int paymentTypeId,
    @JsonKey(name: 'payment_terms_id') int? paymentTermsId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @JsonKey(name: 'description') @Default('') String description,
    // @JsonKey(name: 'warehouse_id') @Default(-1) int warehouseId,
    // @JsonKey(name: 'warehouse_name', includeToJson: false) @Default('') String warehouseName,
    @JsonKey(name: "product_detail") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'status', includeToJson: false) @Default('') String paymentStatus,
    @JsonKey(name: 'payment_receive_data', includeToJson: false) @Default([]) List<SecondarySaleReceiptDTO> paymentReceivedHistoryDto,
    @JsonKey(name: 'sale_promotion', includeToJson: false) SalePromotionDTO? salePromotionDTO,
    @JsonKey(name: 'sale_promotion_id') int? salePromotionId,
    @JsonKey(name: "bonus") @Default(0) double bonus,
    @JsonKey(name: "cash_back") @Default(0) double cashBack,
  }) = _SecondarySaleInvoiceDTO;

  factory SecondarySaleInvoiceDTO.fromJson(Map<String, dynamic> json) => _$SecondarySaleInvoiceDTOFromJson(json);

  factory SecondarySaleInvoiceDTO.fromDomain(SecondarySaleInvoice saleInvoice) {
    return SecondarySaleInvoiceDTO(
      id: saleInvoice.id,
      saleDate: saleInvoice.saleDate,
      balance: saleInvoice.balance,
      dueDate: saleInvoice.dueDate,
      deliveryDate: saleInvoice.deliveryDate,
      businessUnitId: saleInvoice.businessUnit.id == -1 ? null : saleInvoice.businessUnit.id,
      invoiceDate: saleInvoice.invoiceDate,
      saleOrderId: saleInvoice.saleOrderId,
      customerId: saleInvoice.customer.id,
      paymentTermsId: saleInvoice.paymentTerm.id == -1 ? null : saleInvoice.paymentTerm.id,
      paymentTypeId: saleInvoice.paymentType.id,
      remark: saleInvoice.remark,
      description: saleInvoice.description,
      procutDto: saleInvoice.products.map((e) => ProductDTO.fromDomain(e)).toList(),
      taxType: saleInvoice.taxType.name,
      taxAmount: saleInvoice.taxAmount,
      tax: saleInvoice.taxAmount,
      discount: saleInvoice.discountAmount,
      discountType: saleInvoice.discountType.name,
      discountAmount: saleInvoice.discountAmount,
      subtotal: saleInvoice.subtotal,
      otherCharges: saleInvoice.otherChargesAmount,
      grandTotal: saleInvoice.grandtotal,
      salePromotionId: saleInvoice.salePromotion?.id,
      bonus: saleInvoice.bonus,
      cashBack: saleInvoice.cashBack,
      // warehouseId: saleInvoice.warehouse.id,
    );
  }

  SecondarySaleInvoice toDomain() {
    return SecondarySaleInvoice(
      id: id,
      code: code,
      saleOrderCode: saleOrderCode,
      deliveryDate: deliveryDate,
      subtotal: subtotal,
      discountAmount: discount,
      discountType: AmountOrPercentStatus.fromName(discountType),
      taxType: AmountOrPercentStatus.fromName(taxType),
      taxAmount: tax,
      customer: Customer(id: customerId, name: customerName),
      balance: balance,
      dueDate: dueDate,
      invoiceDate: invoiceDate,
      saleOrderId: saleOrderId,
      // warehouse: Warehouse(id: warehouseId, name: warehouseName),
      description: description,
      grandtotal: grandTotal,
      otherChargesAmount: otherCharges,
      remark: remark,
      paymentTerm: PaymentTerm(id: paymentTermsId ?? -1, name: paymentTermName),
      paymentType: PaymentType(id: paymentTypeId, name: paymentTypeName),
      products: procutDto.map((e) => e.toDomain()).toList(),
      deleteReason: deleteReason,
      paymentStatus: PaymentStatus.fromId(int.parse(paymentStatus)),
      paymentReceivedHistory: paymentReceivedHistoryDto.map((e) => e.toDomain()).toList(),
      businessUnit: BusinessUnit(id: businessUnitId ?? -1, name: businessUnitName),
      salePromotion: salePromotionDTO?.toDomain(),
      bonus: bonus,
      cashBack: cashBack,
    );
  }
}
