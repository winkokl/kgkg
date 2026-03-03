import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_type.freezed.dart';

@freezed
class ExpenseType with _$ExpenseType {
  const factory ExpenseType({
    @Default(-1) int id,
    @Default("") String name,
  }) = _ExpenseType;
}
