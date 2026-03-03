import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
part 'product_remote_data_source.g.dart';

@riverpod
ProductRemoteDataSource productRemoteDataSource(ProductRemoteDataSourceRef ref) {
  return ProductRemoteDataSource(ref.watch(dioClientProvider));
}

class ProductRemoteDataSource {
  final DioClient dioClient;

  ProductRemoteDataSource(this.dioClient);

  Future<ProductDTO?> getProductByBarcode(String barcode) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/product/barcode/$barcode');
    final responseData = response['data'] as List;
    if (responseData.isEmpty) return null;
    return ProductDTO.fromJson(responseData.first);
  }

  Future<List<ProductDTO>> getAllProducts(String? warehouseId) async {
    // final response = await dioClient.get('${ApiBase.baseUrl}/common/product/?limit=10000');
    final response = await dioClient.get('${ApiBase.baseUrl}/common/product/warehouse/?limit=10000&warehouse_id=${warehouseId ?? ''}');
    final responseData = response['data'] as List;
    return responseData.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<int> getAvailableQtyFromWarehouse(int productId, int warehouseId) async {
    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/warehouse-list/product?product_id=$productId&warehouse_id=$warehouseId',
    );
    final responseData = response['data'] as Map<String, dynamic>;
    return int.parse("${responseData['available_qty']}");
  }
}
