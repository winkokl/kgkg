import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/expense_status.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense_type.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'expense_dto.freezed.dart';
part 'expense_dto.g.dart';

@freezed
class ExpenseDTO with _$ExpenseDTO {
  const ExpenseDTO._();
  const factory ExpenseDTO({
    @JsonKey(name: "user_expense_id", includeToJson: false) @Default(-1) int id,
    @Default("") String date,
    @JsonKey(name: "user_expense_code", includeToJson: false) @Default("") String code,
    @JsonKey(name: "user_id") @Default(-1) int userId,
    @JsonKey(name: "first_name", includeToJson: false) @Default("") String userFirstName,
    @JsonKey(name: "last_name", includeToJson: false) @Default("") String userLastName,
    @JsonKey(name: "username", includeToJson: false) @Default("") String username,
    @JsonKey(name: "expense_type_id") @Default(-1) int expenseTypeId,
    @JsonKey(name: "expense_type_name", includeToJson: false) @Default("") String expenseTypeName,
    @JsonKey(name: "status", includeToJson: false) @Default(-1) int status,
    @JsonKey(name: "expense_amount") @Default(0) double requestAmount,
    @JsonKey(name: "allow_expense_amount", includeToJson: false) @Default(0) double expenseAmount,
    @JsonKey(name: "reject_reason", includeToJson: false) @Default("") String reason,
    @JsonKey(includeToJson: false) @Default("") String remark,
    @Default("") String description,
  }) = _ExpenseDTO;

  factory ExpenseDTO.fromJson(Map<String, dynamic> json) => _$ExpenseDTOFromJson(json);

  factory ExpenseDTO.fromDomain(Expense e) {
    return ExpenseDTO(
      id: e.id,
      userId: e.user.id,
      date: e.date,
      expenseTypeId: e.type.id,
      requestAmount: e.requestAmount,
      remark: e.remark,
      description: e.description,
    );
  }

  Expense toDomain() {
    return Expense(
      id: id,
      code: code,
      date: DateFormat(dateFormattedString).format(DateTime.parse(date)),
      status: ExpenseStatus.fromId(status),
      user: User(id: userId, name: "$userFirstName $userLastName", userName: username),
      type: ExpenseType(id: expenseTypeId, name: expenseTypeName),
      requestAmount: requestAmount,
      expenseAmount: expenseAmount,
      remark: remark,
      description: description,
      reason: reason,
    );
  }
}
