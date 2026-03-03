import 'package:mgkaung_dms_mobile/core/enums/contract_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/delivery_note_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/expense_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_request_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/way.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_filter.freezed.dart';

@freezed
class Allfilter with _$Allfilter {
  const Allfilter._();
  const factory Allfilter({
    @Default("") String fromDate,
    @Default("") String toDate,
    @Default(Customer()) Customer customer,
    @Default(SaleType()) SaleType saleType,
    @Default(BusinessUnit()) BusinessUnit businessUnit,
    @Default(CustomerType()) CustomerType customerType,
    @Default(CustomerCategory()) CustomerCategory customerCategory,
    @Default(PaymentStatus.none) PaymentStatus paymentStatus,
    @Default(DeliveryNoteStatus.none) DeliveryNoteStatus deliveryNoteStatus,
    @Default(OrderStatus.all) OrderStatus orderStatus,
    @Default(TripSaleRequestStatus.all) TripSaleRequestStatus tripSaleRequestStatus,
    @Default(ExpenseStatus.all) ExpenseStatus expenseStatus,
    @Default(PaymentType()) PaymentType paymentType,
    @Default(TripName()) TripName tripName,
    @Default(ContractStatus.none) ContractStatus contractStatus,
    @Default(Way()) Way way,
    @Default(-1) int cityId,
    @Default([]) List<Region> regions,
    @Default(Region()) Region distributionRegion,
  }) = _Allfilter;
}
