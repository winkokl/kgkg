import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_dto.freezed.dart';
part 'warehouse_dto.g.dart';

@freezed
class WarehouseDTO with _$WarehouseDTO {
  const WarehouseDTO._();
  factory WarehouseDTO({
    @JsonKey(name: 'warehouse_id') @Default(-1) int id,
    @JsonKey(name: 'warehouse_name') @Default("") String name,
    @JsonKey(name: 'main_warehouse_name') @Default("") String mainWarehouseName,
  }) = _WarehouseDTO;

  factory WarehouseDTO.fromJson(Map<String, dynamic> json) => _$WarehouseDTOFromJson(json);

  Warehouse toDomain() => Warehouse(id: id, name: name, mainWarehouseName: mainWarehouseName);
}
