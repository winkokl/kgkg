import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/domain/sub_module.dart';

part 'sub_module_dto.freezed.dart';
part 'sub_module_dto.g.dart';

@freezed
class SubModuleDTO with _$SubModuleDTO {
  const SubModuleDTO._();
  const factory SubModuleDTO({
    @Default("") String name,
    @Default([]) List<String> actions,
  }) = _SubModuleDTO;

  factory SubModuleDTO.fromJson(Map<String, dynamic> json) => _$SubModuleDTOFromJson(json);

  SubModule toDomain() {
    return SubModule(
      name: name,
      actions: actions,
    );
  }
}
