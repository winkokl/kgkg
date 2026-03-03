import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';

part 'trip_sale_return.freezed.dart';

@freezed
class TripSaleReturn with _$TripSaleReturn implements PagingDataItem {
  const factory TripSaleReturn({
    @Default(-1) int id,
    @Default("") String returnDate,
    @Default("") String code,
    @Default("") String invoiceCode,
    @Default(1) int returnType,
    @Default(TripSaleInvoice()) TripSaleInvoice tripSaleInvoice,
    @Default(TripSaleRequest()) TripSaleRequest tripSaleRequest,
    @Default(Customer()) Customer customer,
    @Default([]) List<Product> products,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String deleteReason,
    @Default(0) double returnDeductAmount,
    @Default(0) double balance,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus returnDeductType,
    @Default(0) double otherChargesAmount,
    @Default(0) double subtotal,
    @Default(0) double grandtotal,
    @Default(0) double totalReturnAmount,
    @Default(PaymentStatus.none) PaymentStatus paymentStatus,
    @Default(ReturnReason()) ReturnReason returnReason,
  }) = _TripSaleReturn;
}
