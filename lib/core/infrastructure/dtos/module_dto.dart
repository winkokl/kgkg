import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/domain/module.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dtos/sub_module_dto.dart';

part 'module_dto.freezed.dart';
part 'module_dto.g.dart';

@freezed
class ModuleDTO with _$ModuleDTO {
  const ModuleDTO._();
  const factory ModuleDTO({
    @JsonKey(name: "module") @Default("") String name,
    @Default([]) List<String> actions,
    @JsonKey(name: "submodules") @Default([]) List<SubModuleDTO> subModuleDtos,
  }) = _ModuleDTO;

  factory ModuleDTO.fromJson(Map<String, dynamic> json) => _$ModuleDTOFromJson(json);

  Module toDomain() {
    return Module(
      name: name,
      actions: actions,
      subModules: subModuleDtos.map((e) => e.toDomain()).toList(),
    );
  }
}
