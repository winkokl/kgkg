import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';

part 'consignment_dto.freezed.dart';
part 'consignment_dto.g.dart';

@freezed
class ConsignmentDTO with _$ConsignmentDTO {
  const ConsignmentDTO._();
  const factory ConsignmentDTO({
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_terms', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sales_date') @Default('') String date,
    @JsonKey(name: 'formatted_sales_date', includeToJson: false) @Default('') String formattedDate,
    @JsonKey(name: 'consignment_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'consignment_contract_id') @Default(-1) int consignmentContractId,
    @JsonKey(name: 'consignment_code', includeToJson: false) @Default('') String consignmentContractCode,
    @JsonKey(name: 'consignment_code', includeToJson: false) @Default('') String code,
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
    @JsonKey(name: 'payment_term_id') @Default(-1) int paymentTermsId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'business_unit_id') int? businessUnitId,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: "products") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int orderStatus,
    @JsonKey(name: 'reject_reason', includeToJson: false) @Default("") String rejectReason,
    @JsonKey(name: "region_id") @Default(-1) int regionId,
    @JsonKey(name: "region_name", includeToJson: false) @Default("") String regionName,
    @JsonKey(name: "consignment_method") @Default(1) int consignmentMethod,
    // @JsonKey(name: 'warehouse_id', includeIfNull: false) int? warehouseId,
    // @JsonKey(name: 'warehouse_name', includeToJson: false) String? warehouseName,
  }) = _ConsignmentDTO;

  factory ConsignmentDTO.fromJson(Map<String, dynamic> json) => _$ConsignmentDTOFromJson(json);

  factory ConsignmentDTO.fromDomain(Consignment sale) {
    return ConsignmentDTO(
      id: sale.id,
      date: sale.date,
      consignmentContractId: sale.consignmentContractId,
      customerId: sale.customer.id,
      paymentTermsId: sale.paymentTerm.id,
      paymentTypeId: sale.paymentType.id,
      remark: sale.remark,
      description: sale.description,
      procutDto: sale.products.map((e) => ProductDTO.fromDomain(e, true)).toList(),
      taxType: sale.taxType.name,
      taxAmount: sale.taxAmount,
      tax: sale.taxAmount,
      discount: sale.discountAmount,
      discountType: sale.discountType.name,
      discountAmount: sale.discountAmount,
      subtotal: sale.subtotal,
      otherCharges: sale.otherChargesAmount,
      grandTotal: sale.grandtotal,
      businessUnitId: sale.businessUnit.id == -1 ? null : sale.businessUnit.id,
      regionId: sale.region.id,
      consignmentMethod: sale.consignmentMethod.id,
      // warehouseId: sale.warehouse.id == -1 ? null : sale.warehouse.id,
    );
  }

  Consignment toDomain() {
    return Consignment(
      id: id,
      code: code,
      subtotal: subtotal,
      discountAmount: discount,
      consignmentContractId: consignmentContractId,
      consignmentContractCode: consignmentContractCode,
      discountType: AmountOrPercentStatus.fromName(discountType),
      taxType: AmountOrPercentStatus.fromName(taxType),
      taxAmount: tax,
      customer: Customer(id: customerId, name: customerName),
      date: date,
      description: description,
      grandtotal: grandTotal,
      otherChargesAmount: otherCharges,
      remark: remark,
      paymentTerm: PaymentTerm(id: paymentTermsId, name: paymentTermName),
      paymentType: PaymentType(id: paymentTypeId, name: paymentTypeName),
      products: procutDto.map((e) => e.toDomain()).toList(),
      deleteReason: deleteReason,
      rejectReason: rejectReason,
      orderStatus: OrderStatus.fromId(orderStatus),
      // warehouse: Warehouse(id: warehouseId ?? -1, name: warehouseName ?? ""),
      businessUnit: BusinessUnit(id: businessUnitId ?? -1, name: businessUnitName),
      region: Region(id: regionId, name: regionName),
      consignmentMethod: ConsignmentMethod.fromId(consignmentMethod),
    );
  }
}
