import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/data_sources/sale_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sale_repository.g.dart';

@Riverpod(keepAlive: true)
SaleRepository saleRepository(SaleRepositoryRef ref) {
  return SaleRepository(ref.watch(saleRemoteDataSourceProvider));
}

class SaleRepository {
  final SaleRemoteDataSource saleRemoteDataSource;

  SaleRepository(this.saleRemoteDataSource);

  Future<List<PaymentTerm>> getPaymentTerms(int status) async {
    final dtos = await saleRemoteDataSource.getPaymentTerms(status);
    return dtos.map((e) => e.toDomain()).toList();
  }

  Future<List<PaymentType>> getPaymentTypes() async {
    final dtos = await saleRemoteDataSource.getPaymentTypes();
    return dtos.map((e) => e.toDomain()).toList();
  }

  Future<List<Warehouse>> getWarehouses() async {
    final dtos = await saleRemoteDataSource.getWarehouses();
    return dtos.map((e) => e.toDomain()).toList();
  }

  Future<List<Warehouse>> getUserAssignWarehouses(int userId) async {
    final dtos = await saleRemoteDataSource.getUserAssignWarehouses(userId);
    return dtos.map((e) => e.toDomain()).toList();
  }

  Future<List<SaleType>> getSaleTypes() async {
    final dtos = await saleRemoteDataSource.getSaleTypes();
    return dtos.map((e) => e.toDomain()).toList();
  }

  Future<List<Region>> getRegions({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await saleRemoteDataSource.getRegions(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<List<Region>> getDistributionRegions() async {
    final dtos = await saleRemoteDataSource.getDistributionRegions();
    return dtos.map((e) => e.toDomain()).toList();
  }

  Future<List<ReturnReason>> getReturnReasons() async {
    final dtos = await saleRemoteDataSource.getReturnReasons();
    return dtos.map((e) => e.toDomain()).toList();
  }

  Future<List<PaymentMethod>> getPaymentMethods() async {
    final dtos = await saleRemoteDataSource.getPaymentMethods();
    return dtos.map((e) => e.toDomain()).where((element) => element.isActive).toList();
  }

  Future<List<BusinessUnit>> getBusinessUnits({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await saleRemoteDataSource.getBusinessUnits(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }
}
