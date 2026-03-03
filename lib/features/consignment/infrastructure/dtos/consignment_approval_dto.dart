import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_approval.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
part 'consignment_approval_dto.freezed.dart';
part 'consignment_approval_dto.g.dart';

@freezed
class ConsignmentApprovalDTO with _$ConsignmentApprovalDTO {
  const ConsignmentApprovalDTO._();
  const factory ConsignmentApprovalDTO({
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_terms', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sales_date') @Default('') String date,
    @JsonKey(name: 'formatted_sales_date', includeToJson: false) @Default('') String formattedDate,
    @JsonKey(name: 'consignment_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'consignment_request_id', includeIfNull: false) int? consignmentRequestId,
    @JsonKey(name: 'consignment_request_code', includeToJson: false) @Default('') String consignmentRequestCode,
    @JsonKey(name: 'consignment_code', includeToJson: false) @Default('') String code,
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
    @JsonKey(name: 'payment_term_id') @Default(-1) int paymentTermsId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: "products") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'order_status', includeToJson: false) @Default(-1) int orderStatus,
    @JsonKey(name: 'reject_reason', includeToJson: false) @Default("") String rejectReason,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
  }) = _ConsignmentApprovalDTO;

  factory ConsignmentApprovalDTO.fromJson(Map<String, dynamic> json) => _$ConsignmentApprovalDTOFromJson(json);

  ConsignmentApproval toDomain() {
    return ConsignmentApproval(
      id: id,
      code: code,
      subtotal: subtotal,
      discountAmount: discount,
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
      businessUnitName: businessUnitName,
    );
  }
}
