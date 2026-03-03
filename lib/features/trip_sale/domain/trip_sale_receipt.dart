import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';

part 'trip_sale_receipt.freezed.dart';

@freezed
class TripSaleReceipt with _$TripSaleReceipt implements PagingDataItem {
  const factory TripSaleReceipt({
    @Default(-1) int id,
    @Default("") String code,
    @Default('') String invoiceCode,
    @Default(-1) int tripSaleInvoiceId,
    @Default(0) double paymentReceiveAmount,
    @Default("") String paymentReciveDate,
    @Default(0) double balance,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String signUrl,
    @Default(PaymentMethod()) PaymentMethod paymentMethod,
    @Default('') String businessUnitName,
  }) = _TripSaleReceipt;
}
