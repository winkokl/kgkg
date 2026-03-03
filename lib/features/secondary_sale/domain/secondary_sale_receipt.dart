import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';

part 'secondary_sale_receipt.freezed.dart';

@freezed
class SecondarySaleReceipt with _$SecondarySaleReceipt implements PagingDataItem {
  const factory SecondarySaleReceipt({
    @Default(-1) int id,
    @Default("") String code,
    @Default('') String invoiceCode,
    @Default(-1) int secondarySaleInvoiceId,
    @Default(0) double paymentReceiveAmount,
    @Default("") String paymentReciveDate,
    @Default("") String description,
    @Default("") String goodIssueDate,
    @Default(InvoiceData()) InvoiceData invoiceData,
    @Default("") String signUrl,
    @Default(PaymentMethod()) PaymentMethod paymentMethod,
    @Default('') String businessUnitName,
  }) = _SecondarySaleReceipt;
}

@freezed
class InvoiceData with _$InvoiceData {
  const factory InvoiceData({
    @Default(-1) int warehouseId,
    @Default('') String dueDate,
    @Default(-1) int paymentTypeId,
    @Default(0) double grandTotalAmount,
    @Default(0) double balance,
    @Default(-1) int businessUnitId,
  }) = _InvoiceData;
}
