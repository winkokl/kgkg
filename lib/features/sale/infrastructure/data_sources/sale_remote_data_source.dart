import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/business_unit_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/payment_method_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/payment_term_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/pyament_type_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/region_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/return_reason_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/sale_type_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/warehouse_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sale_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
SaleRemoteDataSource saleRemoteDataSource(SaleRemoteDataSourceRef ref) => SaleRemoteDataSource(ref.watch(dioClientProvider));

class SaleRemoteDataSource {
  final DioClient dioClient;

  SaleRemoteDataSource(this.dioClient);

  Future<List<PaymentTermDTO>> getPaymentTerms(int status) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/payment-terms/$status');
    return (response as List).map((e) => PaymentTermDTO.fromJson(e)).toList();
  }

  Future<List<PaymentTypeDTO>> getPaymentTypes() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/payment-type');
    return (response as List).map((e) => PaymentTypeDTO.fromJson(e)).where((element) => element.id != 2).toList();
  }

  Future<List<WarehouseDTO>> getWarehouses() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/warehouse');
    return (response['data'] as List).map((e) => WarehouseDTO.fromJson(e)).toList();
  }

  Future<List<WarehouseDTO>> getUserAssignWarehouses(int userId) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/warehouse-list?user_id=$userId');
    return (response['data'] as List).map((e) => WarehouseDTO.fromJson(e)).toList();
  }

  Future<List<SaleTypeDTO>> getSaleTypes() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/sale-type');
    return (response as List).map((e) => SaleTypeDTO.fromJson(e)).toList();
  }

  Future<List<RegionDTO>> getRegions({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "region_name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };

    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/distribution-region-management',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => RegionDTO.fromJson(e)).toList();
  }

  Future<List<RegionDTO>> getDistributionRegions() async {
    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/distribution-region-management/region',
    );

    return (response['data'] as List).map((e) => RegionDTO.fromJson(e)).toList();
  }

  Future<List<ReturnReasonDTO>> getReturnReasons() async {
    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/return-reason',
    );
    return (response as List).map((e) => ReturnReasonDTO.fromJson(e)).toList();
  }

  Future<List<PaymentMethodDTO>> getPaymentMethods() async {
    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/payment-method',
    );
    return (response as List).map((e) => PaymentMethodDTO.fromJson(e)).toList();
  }

  Future<List<BusinessUnitDTO>> getBusinessUnits({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "business_unit_name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };

    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/business-unit',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => BusinessUnitDTO.fromJson(e)).toList();
  }
}
