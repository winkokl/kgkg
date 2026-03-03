import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_method.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'trip_sale_dto.freezed.dart';
part 'trip_sale_dto.g.dart';

int _intFromJson(dynamic value) {
  if (value == null || value == "" || value == "null") return -1;
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value) ?? -1;
  return -1;
}

double _doubleFromJson(dynamic value) {
  if (value == null || value == "" || value == "null") return 0;
  if (value is double) return value;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0;
  return 0;
}

@freezed
class TripSaleDTO with _$TripSaleDTO {
  const TripSaleDTO._();
  const factory TripSaleDTO({
    @JsonKey(name: 'type') @Default(1) int type,
    @JsonKey(name: 'customer_first_name', includeToJson: false) @Default('') String customerName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_terms', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sales_date') @Default('') String date,
    @JsonKey(name: 'sale_promotion_id', fromJson: _intFromJson) @Default(0) int? salePromotionId,
    @JsonKey(name: 'formatted_sales_date', includeToJson: false) @Default('') String formattedDate,
    @JsonKey(name: 'trip_sale_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'trip_sale_request_id', includeIfNull: false) int? tripSaleRequestId,
    @JsonKey(name: 'trip_id', includeIfNull: false) int? tripProposalId,
    @JsonKey(name: 'trip_sale_request_code', includeToJson: false) @Default('') String tripSaleRequestCode,
    @JsonKey(name: 'trip_code', includeToJson: false) @Default('') String tripProposalCode,
    @JsonKey(name: 'trip_sale_code', includeToJson: false) @Default('') String code,
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
    @JsonKey(name: 'payment_term_id') @Default(-1) int? paymentTermsId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'business_unit_id') int? businessUnitId,
    @JsonKey(name: 'business_unit_name', includeToJson: false) @Default('') String businessUnitName,
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: "products") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int orderStatus,
    @JsonKey(name: 'reject_reason', includeToJson: false) @Default("") String rejectReason,
    @JsonKey(name: 'warehouse_id', includeToJson: false) @Default(-1) int warehouseId,
    @JsonKey(name: 'warehouse_name', includeToJson: false) @Default("") String warehouseName,
  }) = _TripSaleDTO;

  factory TripSaleDTO.fromJson(Map<String, dynamic> json) => _$TripSaleDTOFromJson(json);

  factory TripSaleDTO.fromDomain(TripSale sale) {
    return TripSaleDTO(
      id: sale.id,
      type: sale.tripSaleMethod.id,
      date: sale.date,
      tripSaleRequestId: sale.tripSaleRequest.id == -1 ? null : sale.tripSaleRequest.id,
      tripProposalId: sale.tripProposal.id == -1 ? null : sale.tripProposal.id,
      customerId: sale.customer.id,
      paymentTermsId: sale.paymentTerm.id == -1 ? null : sale.paymentTerm.id,
      paymentTypeId: sale.paymentType.id,
      remark: sale.remark,
      description: sale.description,
      procutDto: sale.products.map((e) => ProductDTO.fromDomain(e, false, false, true)).toList(),
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
      salePromotionId: sale.salePromotion.id == -1 || sale.salePromotion.id == "-1"
          ? null
          : sale.salePromotion.id is int
              ? sale.salePromotion.id
              : int.tryParse(sale.salePromotion.id.toString()),
    );
  }

  TripSale toDomain() {
    return TripSale(
      id: id,
      tripSaleMethod: TripSaleMethod.fromId(type),
      code: code,
      tripSaleRequest: TripSaleRequest(id: tripSaleRequestId ?? -1, tripSaleRequestCode: tripSaleRequestCode),
      tripProposal: TripProposal(id: tripProposalId ?? -1, tripCode: tripProposalCode),
      subtotal: subtotal,
      discountAmount: discount,
      discountType: AmountOrPercentStatus.fromName(discountType),
      taxType: AmountOrPercentStatus.fromName(taxType),
      taxAmount: tax,
      customer: Customer(id: customerId, name: customerName),
      date: DateFormat(dateFormattedString).format(DateTime.parse(date)),
      description: description,
      grandtotal: grandTotal,
      otherChargesAmount: otherCharges,
      remark: remark,
      paymentTerm: PaymentTerm(id: paymentTermsId ?? -1, name: paymentTermName),
      paymentType: PaymentType(id: paymentTypeId, name: paymentTypeName),
      products: procutDto.map((e) => e.toDomain()).toList(),
      deleteReason: deleteReason,
      rejectReason: rejectReason,
      orderStatus: OrderStatus.fromId(orderStatus),
      warehouse: Warehouse(id: warehouseId, name: warehouseName),
      businessUnit: BusinessUnit(id: businessUnitId ?? -1, name: businessUnitName),
      salePromotion: SalePromotion(
        id: salePromotionId ?? 0,
      ),
    );
  }
}
