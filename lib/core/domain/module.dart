import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/domain/sub_module.dart';

part 'module.freezed.dart';

@freezed
class Module with _$Module {
  const factory Module({
    @Default("") String name,
    @Default([]) List<String> actions,
    @Default([]) List<SubModule> subModules,
  }) = _Module;
}
