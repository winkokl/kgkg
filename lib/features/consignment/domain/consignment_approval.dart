import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';

part 'consignment_approval.freezed.dart';

@freezed
class ConsignmentApproval with _$ConsignmentApproval implements PagingDataItem {
  const factory ConsignmentApproval({
    @Default(-1) int id,
    @Default("") String code,
    @Default("") String date,
    @Default(Customer()) Customer customer,
    @Default([]) List<Product> products,
    @Default(PaymentType()) PaymentType paymentType,
    @Default(PaymentTerm()) PaymentTerm paymentTerm,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String deleteReason,
    @Default(0) double discountAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    @Default(0) double taxAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus taxType,
    @Default(0) double otherChargesAmount,
    @Default(0) double subtotal,
    @Default(0) double grandtotal,
    @Default(OrderStatus.pending) OrderStatus orderStatus,
    @Default("") String rejectReason,
    @Default("") String businessUnitName,
  }) = _ConsignmentApproval;
}
