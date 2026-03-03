import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_receipt_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'trip_sale_invoice_dto.freezed.dart';
part 'trip_sale_invoice_dto.g.dart';

int _intFromJson(dynamic value) {
  if (value == null || value == "" || value == "null") return -1;
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value) ?? -1;
  return -1;
}

@freezed
class TripSaleInvoiceDTO with _$TripSaleInvoiceDTO {
  const TripSaleInvoiceDTO._();
  const factory TripSaleInvoiceDTO({
    @JsonKey(name: 'trip_sale_invoice_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: "trip_sale_invoice_code", includeToJson: false) @Default("") String code,
    @JsonKey(name: "invoice_date") @Default("") String invoiceDate,
    @JsonKey(name: "due_date") @Default("") String dueDate,
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_term', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sales_date', includeToJson: false) @Default('') String saleDate,
    @JsonKey(name: 'formatted_sales_date', includeToJson: false) @Default('') String formattedDate,
    @JsonKey(name: 'trip_sale_id', includeToJson: false) @Default(-1) int saleOrderId,
    @JsonKey(name: 'trip_sale_request_code', includeToJson: false) @Default("") String tripSaleId,
    @JsonKey(name: 'trip_sale_code', includeToJson: false) @Default("") String saleOrderCode,
    @JsonKey(name: 'balance', includeToJson: false) @Default(0) double balance,
    @JsonKey(name: 'sub_total') @Default(0) double subtotal,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @JsonKey(name: 'discount') @Default(0) double discount,
    @JsonKey(name: 'discount_type') @Default('') String discountType,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'tax') @Default(0) double tax,
    @JsonKey(name: 'tax_type') @Default('') String taxType,
    @JsonKey(name: 'other_charges') @Default(0) double otherCharges,
    @JsonKey(name: 'grand_total_amount') @Default(0) double grandTotal,
    @JsonKey(name: 'payment_type_id') @Default(-1) int paymentTypeId,
    @JsonKey(name: 'payment_term_id', includeToJson: false) @Default(-1) int paymentTermsId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'business_unit_id') int? businessUnitId,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'warehouse_id', includeToJson: false) @Default(-1) int warehouseId,
    @JsonKey(name: 'warehouse_name', includeToJson: false) @Default('') String warehouseName,
    @JsonKey(name: "products") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int paymentStatus,
    @JsonKey(name: 'payment_receive_data', includeToJson: false) @Default([]) List<TripSaleReceiptDTO> paymentReceivedHistoryDto,
    @JsonKey(name: 'sale_promotion_id', fromJson: _intFromJson) @Default(0) int? salePromotionId,
  }) = _TripSaleInvoiceDTO;

  factory TripSaleInvoiceDTO.fromJson(Map<String, dynamic> json) => _$TripSaleInvoiceDTOFromJson(json);

  factory TripSaleInvoiceDTO.fromDomain(TripSaleInvoice saleInvoice) {
    return TripSaleInvoiceDTO(
      id: saleInvoice.id,
      saleDate: saleInvoice.saleDate,
      balance: saleInvoice.balance,
      dueDate: saleInvoice.dueDate,
      invoiceDate: saleInvoice.invoiceDate,
      saleOrderId: saleInvoice.saleOrderId,
      customerId: saleInvoice.customer.id,
      businessUnitId: saleInvoice.businessUnit.id == -1 ? null : saleInvoice.businessUnit.id,
      paymentTermsId: saleInvoice.paymentTerm.id,
      paymentTypeId: saleInvoice.paymentType.id,
      remark: saleInvoice.remark,
      description: saleInvoice.description,
      procutDto: saleInvoice.products.map((e) => ProductDTO.fromDomain(e, false, false, true)).toList(),
      taxType: saleInvoice.taxType.name,
      taxAmount: saleInvoice.taxAmount,
      tax: saleInvoice.taxAmount,
      discount: saleInvoice.discountAmount,
      discountType: saleInvoice.discountType.name,
      discountAmount: saleInvoice.discountAmount,
      subtotal: saleInvoice.subtotal,
      otherCharges: saleInvoice.otherChargesAmount,
      grandTotal: saleInvoice.grandtotal,
      warehouseId: saleInvoice.warehouse.id,
      salePromotionId: saleInvoice.salePromotionId,
    );
  }

  TripSaleInvoice toDomain() {
    return TripSaleInvoice(
      id: id,
      code: code,
      tripSaleId: tripSaleId,
      saleOrderCode: saleOrderCode,
      subtotal: subtotal,
      discountAmount: discount,
      discountType: AmountOrPercentStatus.fromName(discountType),
      taxType: AmountOrPercentStatus.fromName(taxType),
      taxAmount: tax,
      customer: Customer(id: customerId, name: customerName),
      balance: balance,
      dueDate: DateFormat(dateFormattedString).format(DateTime.parse(dueDate)),
      invoiceDate: DateFormat(dateFormattedString).format(DateTime.parse(invoiceDate)),
      saleOrderId: saleOrderId,
      warehouse: Warehouse(id: warehouseId, name: warehouseName),
      description: description,
      grandtotal: grandTotal,
      otherChargesAmount: otherCharges,
      remark: remark,
      paymentTerm: PaymentTerm(id: paymentTermsId, name: paymentTermName),
      paymentType: PaymentType(id: paymentTypeId, name: paymentTypeName),
      products: procutDto.map((e) => e.toDomain()).toList(),
      deleteReason: deleteReason,
      paymentStatus: PaymentStatus.fromId(paymentStatus),
      paymentReceivedHistory: paymentReceivedHistoryDto.map((e) => e.toDomain()).toList(),
      businessUnit: BusinessUnit(id: businessUnitId ?? -1, name: businessUnitName),
      salePromotionId: salePromotionId ?? 0,
      salePromotion: SalePromotion(
        id: salePromotionId ?? 0,
      ),
    );
  }
}
