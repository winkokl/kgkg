import 'package:mgkaung_dms_mobile/features/expense/domain/expense_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_type_dto.freezed.dart';
part 'expense_type_dto.g.dart';

@freezed
class ExpenseTypeDTO with _$ExpenseTypeDTO {
  const ExpenseTypeDTO._();
  const factory ExpenseTypeDTO({
    @JsonKey(name: "expense_type_id") @Default(-1) int id,
    @JsonKey(name: "expense_type_name") @Default("") String name,
  }) = _ExpenseTypeDTO;

  factory ExpenseTypeDTO.fromJson(Map<String, dynamic> json) => _$ExpenseTypeDTOFromJson(json);

  ExpenseType toDomain() => ExpenseType(id: id, name: name);
}
