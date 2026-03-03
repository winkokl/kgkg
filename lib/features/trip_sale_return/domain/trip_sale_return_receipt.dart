import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_sale_return_receipt.freezed.dart';

@freezed
class TripSaleReturnReceipt with _$TripSaleReturnReceipt implements PagingDataItem {
  const factory TripSaleReturnReceipt({
    @Default(-1) int id,
    @Default(-1) int tripSaleReturnId,
    @Default("") String retrunDueDate,
    @Default("") String code,
    @Default("") String paymentDate,
    @Default(0) double totalInvoiceAmount,
    @Default(0) double balance,
    @Default(0) double paidAmount,
    @Default("") String returnDate,
    @Default("") String invoiceCode,
    @Default(TripSaleInvoice()) TripSaleInvoice tripSaleInvoice,
    @Default(Customer()) Customer customer,
    @Default([]) List<Product> products,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String deleteReason,
    @Default(0) double returnDeductAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus returnDeductType,
    @Default(0) double otherChargesAmount,
    @Default(0) double subtotal,
    @Default(0) double grandtotal,
    @Default(0) double totalReturnAmount,
    @Default("") String signUrl,
    @Default(PaymentMethod()) PaymentMethod paymentMethod,
  }) = _TripSaleReturnInvoice;
}
