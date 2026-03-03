import 'package:mgkaung_dms_mobile/core/enums/contract_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/delivery_note_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/expense_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_request_status.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_filter_dto.freezed.dart';
part 'all_filter_dto.g.dart';

@freezed
class AllFilterDTO with _$AllFilterDTO {
  const AllFilterDTO._();
  const factory AllFilterDTO({
    @JsonKey(name: "from_date") @Default("") String fromDate,
    @JsonKey(name: "to_date") @Default("") String toDate,
    @JsonKey(name: "customer_id") @Default("") String customerId,
    @JsonKey(name: "customer_type_id") @Default("") String customerType,
    @JsonKey(name: "customer_category_id") @Default("") String customerCategory,
    @JsonKey(name: "status") @Default("") String paymentStatus,
    @JsonKey(name: "order_approval_status") @Default("") String orderApprovalStatus,
    @JsonKey(name: "expense_status") @Default("") String expenseStatus,
    @JsonKey(name: "payment_type_id") @Default("") String paymentType,
    @JsonKey(name: "sale_type_id") @Default("") String saleType,
    @JsonKey(name: "trip_id") @Default("") String trip,
    @JsonKey(name: "region_way_id") @Default("") String wayId,
    @JsonKey(name: "business_unit_id") @Default("") String businessUnitName,
    @JsonKey(name: "region_ids") @Default("") String regions,
    @JsonKey(name: "region_id") @Default("") String region,
    @JsonKey(name: "city_id") @Default("") String cityId,
  }) = _AllFilterDTO;

  factory AllFilterDTO.fromJson(Map<String, dynamic> data) => _$AllFilterDTOFromJson(data);

  factory AllFilterDTO.fromDomain(Allfilter _) {
    // String getStatus() {
    //   if (_.paymentStatus == PaymentStatus.none) {
    //     if (_.tripSaleRequestStatus != TripSaleRequestStatus.all) {
    //       return "${_.tripSaleRequestStatus.id}";
    //     } else if (_.orderStatus != OrderStatus.all) {
    //       return "${_.orderStatus.id}";
    //     } else if (_.contractStatus != ContractStatus.none) {
    //       return "${_.contractStatus.id}";
    //     } else {
    //       return "";
    //     }
    //   }
    //   return "${_.paymentStatus.id}";
    // }

    String getStatus() {
      if (_.paymentStatus != PaymentStatus.none) {
        return _.paymentStatus.id.toString();
      }

      return [
            if (_.tripSaleRequestStatus != TripSaleRequestStatus.all) _.tripSaleRequestStatus.id,
            if (_.orderStatus != OrderStatus.all) _.orderStatus.id,
            if (_.contractStatus != ContractStatus.none) _.contractStatus.id,
            if (_.deliveryNoteStatus != DeliveryNoteStatus.none) _.deliveryNoteStatus.id,
          ].firstOrNull?.toString() ??
          "";
    }

    return AllFilterDTO(
      fromDate: _.fromDate,
      toDate: _.toDate,
      customerId: _.customer.id == -1 ? "" : "${_.customer.id}",
      customerType: _.customerType.id == -1 ? "" : "${_.customerType.id}",
      customerCategory: _.customerCategory.id == -1 ? "" : "${_.customerCategory.id}",
      paymentStatus: getStatus(),
      // orderApprovalStatus:
      //     _.orderStatus == OrderStatus.all ? "" : "${_.orderStatus.id}",
      expenseStatus: _.expenseStatus == ExpenseStatus.all ? "" : "${_.expenseStatus.id}",
      paymentType: _.paymentType.id == -1 ? "" : "${_.paymentType.id}",
      trip: _.tripName.id == -1 ? "" : _.tripName.id.toString(),
      businessUnitName: _.businessUnit.id == -1 ? "" : _.businessUnit.id.toString(),
      regions: _.regions.isEmpty ? "" : _.regions.map((e) => e.id).toList().toString(),
      cityId: _.cityId == -1 ? "" : "${_.cityId}",
      saleType: _.saleType.id == -1 ? "" : "${_.saleType.id}",
      wayId: _.way.id == -1 ? "" : "${_.way.id}",
      region: _.distributionRegion.id == -1 ? "" : "${_.distributionRegion.id}",
    );
  }
}
