import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/data_sources/sale_promotion_remote_data_source.dart';
part 'sale_promotion_repository.g.dart';

@Riverpod(keepAlive: true)
SalePromotionRepository salePromotionRepository(SalePromotionRepositoryRef ref) {
  return SalePromotionRepository(ref.watch(salePromotionRemoteDataSourceProvider));
}

class SalePromotionRepository {
  final SalePromotionRemoteDataSource salePromotionRemoteDataSource;

  SalePromotionRepository(this.salePromotionRemoteDataSource);

  Future<List<SalePromotion>> getSalePromotions({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await salePromotionRemoteDataSource.getSalePromotions(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<SalePromotion> getSalePromotionById(int id) async {
    final data = await salePromotionRemoteDataSource.getSalePromotionById(id);
    return data.toDomain();
  }

  Future<List<SalePromotion>> getSalePromotionsByCusChannelWay(int cusId, int wayId, String startDate) async {
    final data = await salePromotionRemoteDataSource.getSalePromotionsByCusChannelWay(cusId, wayId, startDate);
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<SalePromotion> getSalePromotionsByCusChannelWayById(int id) async {
    final data = await salePromotionRemoteDataSource.getSalePromotionsByCusChannelWayById(id);
    return data.toDomain();
  }
}
