import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_request_status.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'trip_sale_request_dto.freezed.dart';
part 'trip_sale_request_dto.g.dart';

@freezed
class TripSaleRequestDTO with _$TripSaleRequestDTO {
  const TripSaleRequestDTO._();
  const factory TripSaleRequestDTO({
    @JsonKey(name: "trip_goods_request_id") @Default(-1) int id,
    @JsonKey(name: "trip_sale_request_code") @Default("") String code,
    @JsonKey(name: 'trip_name') @Default("") String tripName,
    @JsonKey(name: "request_date") @Default("") String date,
    @JsonKey(name: "warehouse_id") @Default(-1) int warehouseId,
    @JsonKey(name: "warehouse_name") @Default("") String warehouseName,
    @JsonKey(name: 'payment_type_name', includeToJson: false) @Default('') String paymentTypeName,
    @JsonKey(name: 'payment_terms', includeToJson: false) @Default('') String paymentTermName,
    @JsonKey(name: 'sub_total') @Default(0) double subtotal,
    @JsonKey(name: 'discount_amount') @Default(0) double discountAmount,
    @JsonKey(name: 'discount_type') @Default('') String discountType,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'tax_type') @Default('') String taxType,
    @JsonKey(name: 'other_charges') @Default(0) double otherCharges,
    @JsonKey(name: 'grand_total_amount') @Default(0) double grandTotal,
    @JsonKey(name: 'payment_type_id') @Default(-1) int paymentTypeId,
    @JsonKey(name: 'payment_terms_id') @Default(-1) int paymentTermsId,
    @JsonKey(name: 'customer_id') @Default(-1) int customerId,
    @JsonKey(name: 'delete_reason', includeToJson: false) @Default('') String deleteReason,
    @JsonKey(name: 'remark') @Default('') String remark,
    @Default('') String description,
    @JsonKey(name: "products") @Default([]) List<ProductDTO> procutDto,
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int status,
    @JsonKey(name: 'reject_reason', includeToJson: false) @Default("") String rejectReason,
    @JsonKey(name: 'created_by', includeToJson: false) @Default(-1) int createdBy,
    @JsonKey(name: 'trip_id', includeToJson: false) @Default(-1) int tripId,
  }) = _TripSaleRequestDTO;

  factory TripSaleRequestDTO.fromJson(Map<String, dynamic> json) => _$TripSaleRequestDTOFromJson(json);

  TripSaleRequest toDomain() {
    return TripSaleRequest(
      id: id,
      tripName: tripName,
      tripSaleRequestCode: code,
      warehouse: Warehouse(id: warehouseId, name: warehouseName),
      description: description,
      date: DateFormat(dateFormattedString).format(DateTime.parse(date)),
      remark: remark,
      products: procutDto.map((e) => e.toDomain()).toList(),
      deleteReason: deleteReason,
      status: TripSaleRequestStatus.fromId(status),
      createdBy: createdBy,
      tripId: tripId,
    );
  }
}
