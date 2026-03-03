import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
part 'return_receipt.freezed.dart';
part 'return_receipt.g.dart';

@freezed
class ReturnReceipt with _$ReturnReceipt implements PagingDataItem {
  const ReturnReceipt._();

  const factory ReturnReceipt({
    @Default(-1) int id,
    @JsonKey(name: "marketing_promotion_plan_return_id") @Default(-1) int planReturnId,
    @JsonKey(name: "payment_date") @Default('') String paymentDate,
    @JsonKey(name: "paid_amount") @Default(0) double paidAmount,
    @Default('') String code,
    @JsonKey(name: "return_date") @Default('') String returnDate,
    @Default(0) double balance,
    @Default(0) double total,
  }) = _ReturnReceipt;

  factory ReturnReceipt.fromJson(Map<String, dynamic> json) => _$ReturnReceiptFromJson(json);
}
