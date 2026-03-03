import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_receipt_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consignment_invoice_dto.freezed.dart';
part 'consignment_invoice_dto.g.dart';

@freezed
class ConsignmentInvoiceDTO with _$ConsignmentInvoiceDTO {
  const ConsignmentInvoiceDTO._();
  const factory ConsignmentInvoiceDTO({
    @JsonKey(name: 'consignment_invoice_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'consignment_type_id') @Default(-1) int consignmentTypeId,
    @JsonKey(name: "consignment_invoice_code", includeToJson: false) @Default("") String code,
    @JsonKey(name: "invoice_date") @Default("") String invoiceDate,
    @JsonKey(name: "due_date") @Default("") String dueDate,
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_term', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sales_date', includeToJson: false) @Default('') String saleDate,
    @JsonKey(name: 'formatted_sales_date', includeToJson: false) @Default('') String formattedDate,
    @JsonKey(name: 'consignment_id') @Default(-1) int consignmentId,
    @JsonKey(name: 'consignment_code', includeToJson: false) @Default("") String consignmentCode,
    @JsonKey(name: 'balance', includeToJson: false) @Default(0) double balance,
    @JsonKey(name: 'business_unit_id') int? businessUnitId,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
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
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'warehouse_id', includeToJson: false) @Default(-1) int warehouseId,
    @JsonKey(name: 'warehouse_name', includeToJson: false) @Default('') String warehouseName,
    @JsonKey(name: "products") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int paymentStatus,
    @JsonKey(name: 'payment_receive_data', includeToJson: false) @Default([]) List<ConsignmentReceiptDTO> paymentReceivedHistoryDto,
    @JsonKey(name: "region_id") @Default(-1) int regionId,
    @JsonKey(name: "region_name", includeToJson: false) @Default("") String regionName,
    @JsonKey(name: "consignment_method") @Default(1) int consignmentMethod,
  }) = _ConsignmentInvoiceDTO;

  factory ConsignmentInvoiceDTO.fromJson(Map<String, dynamic> json) => _$ConsignmentInvoiceDTOFromJson(json);

  factory ConsignmentInvoiceDTO.fromDomain(ConsignmentInvoice saleInvoice) {
    return ConsignmentInvoiceDTO(
      id: saleInvoice.id,
      saleDate: saleInvoice.saleDate,
      consignmentTypeId: saleInvoice.consignmentTypeId,
      balance: saleInvoice.balance,
      dueDate: saleInvoice.dueDate,
      businessUnitId: saleInvoice.businessUnit.id == -1 ? null : saleInvoice.businessUnit.id,
      invoiceDate: saleInvoice.invoiceDate,
      consignmentId: saleInvoice.consignmentId,
      customerId: saleInvoice.customer.id,
      paymentTermsId: saleInvoice.paymentTerm.id,
      paymentTypeId: saleInvoice.paymentType.id,
      remark: saleInvoice.remark,
      description: saleInvoice.description,
      procutDto: saleInvoice.products.map((e) => ProductDTO.fromDomain(e, true)).toList(),
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
      regionId: saleInvoice.region.id,
      consignmentMethod: saleInvoice.consignmentMethod.id,
    );
  }

  ConsignmentInvoice toDomain() {
    return ConsignmentInvoice(
      id: id,
      code: code,
      consignmentId: consignmentId,
      consignmentCode: consignmentCode,
      consignmentTypeId: consignmentTypeId,
      subtotal: subtotal,
      discountAmount: discount,
      discountType: AmountOrPercentStatus.fromName(discountType),
      taxType: AmountOrPercentStatus.fromName(taxType),
      taxAmount: tax,
      customer: Customer(id: customerId, name: customerName),
      balance: balance,
      dueDate: dueDate,
      invoiceDate: invoiceDate,
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
      region: Region(id: regionId, name: regionName),
      consignmentMethod: ConsignmentMethod.fromId(consignmentMethod),
    );
  }
}
