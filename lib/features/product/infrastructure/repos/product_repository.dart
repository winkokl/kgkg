import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/data_sources/product_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'product_repository.g.dart';

@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) => ProductRepository(ref.watch(productRemoteDataSourceProvider));

class ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepository(this.productRemoteDataSource);

  Future<Product?> getProductByBarcode(String barcode) async {
    final data = await productRemoteDataSource.getProductByBarcode(barcode);
    if (data == null) return null;
    return data.toDomain();
  }

  Future<List<Product>> getAllProducts(String? warehouseId) async {
    try {
      final data = await productRemoteDataSource.getAllProducts(warehouseId);
      return data.map((product) => product.toDomain()).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getAvailableQtyFromWarehouse(int productId, int warehouseId) async {
    return await productRemoteDataSource.getAvailableQtyFromWarehouse(productId, warehouseId);
  }
}
