import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/business_unit_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/credit_type_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/customer_category_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/customer_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/customer_type_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/division_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/way_dto.dart';
part 'customer_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
CustomerRemoteDataSource customerRemoteDataSource(CustomerRemoteDataSourceRef ref) => CustomerRemoteDataSource(ref.watch(dioClientProvider));

class CustomerRemoteDataSource {
  final DioClient dioClient;

  CustomerRemoteDataSource(this.dioClient);

  Future<List<DivisionDTO>> getDivisions() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/location');
    return (response as List).map((e) => DivisionDTO.fromJson(e)).toList();
  }

  Future<List<CreditTypeDto>> getCreditTypes() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/credit-type');
    return (response as List).map((e) => CreditTypeDto.fromJson(e)).toList();
  }

  Future<List<CustomerCategoryDTO>> getCustomerCategorys({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "customer_category_name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/customer-category',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => CustomerCategoryDTO.fromJson(e)).toList();
  }

  Future<List<CustomerTypeDTO>> getCustomerTypes() async {
    final response = await dioClient.get('${ApiBase.baseUrl}/common/customer-type');
    return (response as List).map((e) => CustomerTypeDTO.fromJson(e)).toList();
  }

  Future<List<CustomerDTO>> getCustomers({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "customer_first_name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/customer',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => CustomerDTO.fromJson(e)).toList();
  }

  Future<bool> checkWayCustomerAvailablity(int userId) async {
    await dioClient.get(
      '${ApiBase.baseUrl}/common/customer-list?user_id=$userId',
    );
    return true;
  }

  Future<List<CustomerDTO>> getWayCustomers({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "customer_first_name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/customer-list?user_id=${SharedPrefs.getInt('user_id')}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => CustomerDTO.fromJson(e)).toList();
  }

  Future<List<WayDto>> getWays({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "way_name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/way-management',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => WayDto.fromJson(e)).toList();
  }

  Future<CustomerDTO> getCustomerById(int id) async {
    final res = await dioClient.get('${ApiBase.baseUrl}/mobile/customer/edit/$id');
    return CustomerDTO.fromJson(res['data']);
  }

  Future<CustomResponse> createCustomer(CustomerDTO customerDto) async => await dioClient.post(
        '${ApiBase.baseUrl}/mobile/customer/create',
        data: customerDto.toJson(),
      );

  Future<CustomResponse> updateCustomer(CustomerDTO customerDto) async => await dioClient.patch(
        '${ApiBase.baseUrl}/mobile/customer/update/${customerDto.id}',
        data: customerDto.toJson(),
      );

  Future<CustomResponse> deleteCustomer(int id) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/customer/delete/$id');

  Future<CustomResponse> createBusinessUnit(BusinessUnitDTO businessUnitDTO) async => await dioClient.post(
        '${ApiBase.baseUrl}/mobile/business-unit/create',
        data: businessUnitDTO.toJson(),
      );

  Future<CustomResponse> updateBusinessUnit(BusinessUnitDTO businessUnitDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}/mobile/business-unit/update/${businessUnitDTO.id}',
        data: {
          'business_unit_name': businessUnitDTO.name,
          'business_ref_code': businessUnitDTO.buRefId,
          'customer_id': businessUnitDTO.customerId,
          'division_id': businessUnitDTO.divisionId,
          'city_id': businessUnitDTO.cityId,
          'township_id': businessUnitDTO.townshipId,
          'region_way_id': businessUnitDTO.wayId,
          'address': businessUnitDTO.address,
          'phone_number': businessUnitDTO.phoneNumber,
          'description': businessUnitDTO.description,
          // 'credit_type_id': businessUnitDTO.creditTypeId,
          // 'credit_limit': businessUnitDTO.creditLimit,
        },
      );

  Future<CustomResponse> deleteBusinessUnit(int id) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/business-unit/delete/$id');
}
