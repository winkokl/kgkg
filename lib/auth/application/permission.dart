import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/core/domain/module.dart';
import 'package:collection/collection.dart'; // Import this
part 'permission.g.dart';

@Riverpod(keepAlive: true)
class Permission extends _$Permission {
  @override
  List<Module> build() {
    return [];
  }

  void setModule(List<Module> lst) {
    if (const ListEquality().equals(lst, state)) return;
    state = [...lst];
  }

  List<String> hasAccessToModule(String moduleOrSubModuleName, [String? parentModuleName, String? action]) {
    for (final module in state) {
      // If parentModuleName is specified, only check within that module
      if (parentModuleName != null && module.name.trim() != parentModuleName) {
        continue;
      }

      // If no parentModuleName is provided, check the module name
      if (parentModuleName == null && module.name.trim() == moduleOrSubModuleName) {
        return module.actions;
      }

      // Check submodules within the parent module
      if (parentModuleName != null && module.name.trim() == parentModuleName) {
        for (final subModule in module.subModules) {
          if (subModule.name.trim() == moduleOrSubModuleName) {
            return subModule.actions;
          }
        }
      }
    }

    return []; // No matching module or submodule found
  }
}
