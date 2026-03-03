import 'package:freezed_annotation/freezed_annotation.dart';
part 'make_payment_dto.freezed.dart';
part 'make_payment_dto.g.dart';

@freezed
class MakePaymentDTO with _$MakePaymentDTO {
  factory MakePaymentDTO({
    @JsonKey(name: "marketing_promotion_plan_return_code") @Default("") String returnCode,
    @JsonKey(name: "marketing_promotion_plan_return_id") @Default(-1) int returnId,
    @JsonKey(name: "return_date") @Default("") String returnDate,
    @JsonKey(name: "payment_date") @Default("") String paymentDate,
    @JsonKey(name: "total_amt") @Default(0) double totalAmount,
    @JsonKey(name: "balance") @Default(0) double balance,
    @JsonKey(name: "paid_amt") @Default(0) double paidAmount,
  }) = _MakePaymentDTO;

  factory MakePaymentDTO.fromJson(Map<String, dynamic> data) => _$MakePaymentDTOFromJson(data);
}
