import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_type.freezed.dart';

@freezed
class CreditType with _$CreditType {
  const factory CreditType({
    @Default(-1) int id,
    @Default("") String name,
  }) = _CreditType;
}
