import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';

part 'consignment_return.freezed.dart';

@freezed
class ConsignmentReturn with _$ConsignmentReturn implements PagingDataItem {
  const factory ConsignmentReturn({
    @Default(-1) int id,
    @Default("") String returnDate,
    @Default("") String code,
    @Default("") String invoiceCode,
    @Default(ConsignmentContract()) ConsignmentContract consignmentContract,
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
  }) = _ConsignmentReturn;
}
