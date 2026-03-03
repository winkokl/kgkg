import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/providers.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';
import 'package:mgkaung_dms_mobile/features/home/infrastructure/repos/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_notifier.g.dart';

typedef HomeData = ({
  User user,
  List<SaleRank> saleRanks,
});

@riverpod
class UserInfo extends _$UserInfo {
  @override
  FutureOr<User> build() {
    ref.listen(tabIndexProvider, (previous, next) {
      if (next == 0) {
        ref.invalidateSelf();
      }
    });
    return ref.watch(homeRepositoryProvider).getUserInfo();
  }

  // List<String> hasAccessToModule(String moduleOrSubModuleName, [String? parentModuleName, String? action]) {
  //   if (state.unwrapPrevious().valueOrNull == null || state.unwrapPrevious().hasError) {
  //     return [];
  //   }

  //   for (final module in state.requireValue.modules) {
  //     // If parentModuleName is specified, only check within that module
  //     if (parentModuleName != null && module.name != parentModuleName) {
  //       continue;
  //     }

  //     // If no parentModuleName is provided, check the module name
  //     if (parentModuleName == null && module.name == moduleOrSubModuleName) {
  //       return module.actions;
  //     }

  //     // Check submodules within the parent module
  //     if (parentModuleName != null && module.name == parentModuleName) {
  //       for (final subModule in module.subModules) {
  //         if (subModule.name == moduleOrSubModuleName) {
  //           return subModule.actions;
  //         }
  //       }
  //     }
  //   }

  //   return []; // No matching module or submodule found
  // }
}

@riverpod
Future<List<SaleRank>> saleRanks(SaleRanksRef ref) {
  ref.listen(tabIndexProvider, (previous, next) {
    if (next == 0) {
      ref.invalidateSelf();
    }
  });
  return ref.watch(homeRepositoryProvider).getSaleRanks();
}

@riverpod
FutureOr<HomeData> homeData(HomeDataRef ref) async {
  ref.listen(tabIndexProvider, (previous, next) {
    if (next == 0) {
      ref.invalidateSelf();
    }
  });
  final (userFuture, saleRanksFuture) = await (ref.watch(userInfoProvider.future), ref.watch(saleRanksProvider.future)).wait;
  print(userFuture.modules.length);
  for (final module in userFuture.modules) {
    print("Module: ${module.name}, Actions: ${module.actions}, SubModules: ${module.subModules.length}");
    for (final subModule in module.subModules) {
      print("  SubModule: ${subModule.name}, Actions: ${subModule.actions}");
    }
  }

  ref.read(permissionProvider.notifier).setModule(userFuture.modules);
  return (user: userFuture, saleRanks: saleRanksFuture);
}
