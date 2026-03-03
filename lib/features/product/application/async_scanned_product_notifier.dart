import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/repos/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fpdart/fpdart.dart';

part 'async_scanned_product_notifier.g.dart';

@riverpod
class AsyncScannedProductNotifier extends _$AsyncScannedProductNotifier {
  @override
  FutureOr<Option<Product?>> build() {
    return const None();
  }

  Future<void> getProduct(String barcode) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final product = await ref.watch(productRepositoryProvider).getProductByBarcode(barcode);
      return Some(product);
    });
  }
}

@riverpod
FutureOr<List<Product>> getAllProducts(GetAllProductsRef ref, String warehouseId) {
  return ref.guardXFetch(() => ref.watch(productRepositoryProvider).getAllProducts(warehouseId));
}

// @riverpod
// FutureOr<List<Product>> getAllProductsWithAvailabilitywithWarehouseId(GetAllProductsForSelectionRef ref, String warehouseId) async {
//   // final allProducts = await ref.watch(getAllProductsProvider.future);
//   // return allProducts.where((product) => product.isSelectable).toList();
//   return ref.guardX(() => ref.watch(productRepositoryProvider).getAllProducts(warehouseId: warehouseId));
//   // return ref.guardXFetch(() async {
//   //   final allProducts = await ref.watch(productRepositoryProvider).getAllProducts();
//   //   for (var product in allProducts) {
//   //     final availableQty = await ref.watch(productRepositoryProvider).getAvailableQtyFromWarehouse(product.id, int.parse(warehouseId));
//   //     product.availableQty = availableQty;
//   //   }
//   //   return allProducts.where((product) => product.isSelectable).toList();
//   // });
// }

@riverpod
class AsyncAvailabeQtyNotifier extends _$AsyncAvailabeQtyNotifier {
  @override
  FutureOr<Option<int?>> build(dynamic value) {
    return const None();
  }

  Future<void> getProduct(int productId, int warehouseId) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final qty = await ref.watch(productRepositoryProvider).getAvailableQtyFromWarehouse(productId, warehouseId);
      return Some(qty);
    });
  }
}
