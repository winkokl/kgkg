import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_type.freezed.dart';

@freezed
class UnitType with _$UnitType {
  const factory UnitType({
    @Default(-1) int id,
    @Default(0) int baseQty,
    @Default("") String name,
  }) = _UnitType;
}
