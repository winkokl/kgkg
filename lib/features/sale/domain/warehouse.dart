import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.freezed.dart';

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({
    @Default(-1) int id,
    @Default("") String name,
    @Default("") String mainWarehouseName,
  }) = _Warehouse;
}
