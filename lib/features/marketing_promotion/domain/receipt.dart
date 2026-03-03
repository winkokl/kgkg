import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';

part 'receipt.freezed.dart';

@freezed
class Receipt with _$Receipt implements PagingDataItem {
  const factory Receipt({
    @Default(-1) int id,
    @Default("") String code,
    @Default('') String invoiceCode,
    @Default(-1) int invoiceId,
    @Default("") String customerName,
    @Default("") String businessUnitName,
    @Default(0) double paymentReceiveAmount,
    @Default("") String paymentReciveDate,
    @Default(0) double balance,
    @Default("") String remark,
    @Default("") String description,
    @Default("") String signUrl,
    @Default(PaymentMethod()) PaymentMethod paymentMethod,
  }) = _Receipt;
}
