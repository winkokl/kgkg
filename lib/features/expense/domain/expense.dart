import 'package:mgkaung_dms_mobile/core/enums/expense_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense_type.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.freezed.dart';

@freezed
class Expense with _$Expense implements PagingDataItem {
  const factory Expense({
    @Default(-1) int id,
    @Default("") String date,
    @Default("") String code,
    @Default(User()) User user,
    @Default(ExpenseStatus.pending) ExpenseStatus status,
    @Default(ExpenseType()) ExpenseType type,
    @Default(0) double requestAmount,
    @Default(0) double expenseAmount,
    @Default(0) double amount,
    @Default("") String reason,
    @Default("") String remark,
    @Default("") String description,
  }) = _Expense;
}
