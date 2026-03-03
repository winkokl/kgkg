import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/sale_promotion_dto.dart';

part 'sale_promotion_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
SalePromotionRemoteDataSource salePromotionRemoteDataSource(SalePromotionRemoteDataSourceRef ref) {
  return SalePromotionRemoteDataSource(ref.watch(dioClientProvider));
}

class SalePromotionRemoteDataSource {
  final DioClient dioClient;

  SalePromotionRemoteDataSource(this.dioClient);

  Future<List<SalePromotionDTO>> getSalePromotions({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      "${ApiBase.baseUrl}/common/sale-promotion",
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => SalePromotionDTO.fromJson(e)).toList();
  }

  // Future<List<SalePromotionDTO>> getSalePromotionsByCusChannelWay(int cusId, int wayId) async {
  //   final response = await dioClient.get('${ApiBase.baseUrl}/common/promotion-list/$cusId/$wayId');
  //   return (response as List).map((e) => SalePromotionDTO.fromJson(e)).toList();
  // }

  Future<List<SalePromotionDTO>> getSalePromotionsByCusChannelWay(int cusId, int wayId, String startDate) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/promotion-list/$cusId/$wayId/$startDate/4');
    return (response as List).map((e) => SalePromotionDTO.fromJson(e)).toList();
  }

  Future<SalePromotionDTO> getSalePromotionById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/sale-promotion/edit/$id');
    return SalePromotionDTO.fromJson(response['data']);
  }

  Future<SalePromotionDTO> getSalePromotionsByCusChannelWayById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/promotion-product-list/$id');
    return SalePromotionDTO.fromJson(response);
  }
}
