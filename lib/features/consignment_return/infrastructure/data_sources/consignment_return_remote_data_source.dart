import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/infrastructure/dtos/consignment_return_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'consignment_return_remote_data_source.g.dart';

@riverpod
ConsignmentReturnRemoteDataSource consignmentReturnRemoteDataSource(ConsignmentReturnRemoteDataSourceRef ref) {
  return ConsignmentReturnRemoteDataSource(ref.watch(dioClientProvider));
}

class ConsignmentReturnRemoteDataSource {
  final DioClient dioClient;

  ConsignmentReturnRemoteDataSource(this.dioClient);

  Future<List<ConsignmentReturnDTO>> getConsignmentReturns({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "consignment_return_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/consignment/return',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => ConsignmentReturnDTO.fromJson(e)).toList();
  }

  Future<ConsignmentReturnDTO> getConsignmentReturnById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/consignment/return/edit/$id');
    return ConsignmentReturnDTO.fromJson(response['data']);
  }

  Future<CustomResponse> createConsignmentReturn(ConsignmentReturn sale) async {
    final rtJson = ConsignmentReturnDTO.fromDomain(sale).toJson();

    final productDtos = sale.products;
    final List<Map<String, dynamic>> products = [];

    for (var p in productDtos) {
      final v = {
        "product_id": p.id,
        "unit_id": p.unit.id,
        "sales_price": p.salePrice,
        "qty": p.quantity,
        "amount": p.amount,
        "total_amount": p.totalAmount,
        "return_qty": p.returnQty,
        "return_amount": p.returnAmount,
        "tax_amount": p.taxAmount,
        "tax_type": p.taxType.name,
        "discount_amount": p.discountAmount,
        "discount_type": p.discountType.name,
        "warehouse_id": p.warehouse.id,
      };
      products.add(v);
    }
    final productMaps = {'products': products};

    rtJson.addEntries(productMaps.entries);

    return await dioClient.post(
      '${ApiBase.baseUrl}/mobile/consignment/return/create',
      data: rtJson,
    );
  }

  Future<CustomResponse> updateConsignmentReturn(ConsignmentReturn sale) async {
    final rtJson = ConsignmentReturnDTO.fromDomain(sale).toJson();

    final productDtos = sale.products;
    final List<Map<String, dynamic>> products = [];

    for (var p in productDtos) {
      final v = {
        "product_id": p.id,
        "unit_id": p.unit.id,
        "sales_price": p.salePrice,
        "qty": p.quantity,
        "amount": p.amount,
        "total_amount": p.totalAmount,
        "return_qty": p.returnQty,
        "return_amount": p.returnAmount,
        "tax_amount": p.taxAmount,
        "tax_type": p.taxType.name,
        "discount_amount": p.discountAmount,
        "discount_type": p.discountType.name,
        "warehouse_id": p.warehouse.id,
      };
      products.add(v);
    }
    final productMaps = {'products': products};

    rtJson.addEntries(productMaps.entries);

    return await dioClient.patch(
      '${ApiBase.baseUrl}/mobile/consignment/return/update/${sale.id}',
      data: rtJson,
    );
  }

  Future<CustomResponse> deleteConsignmentReturn(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/consignment/return/delete/$id', data: {'delete_reason': reason});
}
