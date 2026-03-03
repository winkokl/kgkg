import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/way.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/data_sources/customer_remote_data_source.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/business_unit_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/customer_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'customer_repository.g.dart';

@Riverpod(keepAlive: true)
CustomerRepository customerRepository(CustomerRepositoryRef ref) => CustomerRepository(ref.watch(customerRemoteDataSourceProvider));

class CustomerRepository {
  final CustomerRemoteDataSource customerRemoteDataSource;

  CustomerRepository(this.customerRemoteDataSource);

  Future<List<Division>> getDivisions() async {
    final divisionDtos = await customerRemoteDataSource.getDivisions();
    return divisionDtos.map((dto) => dto.toDomain()).toList();
  }

  Future<List<CreditType>> getCreditTypes() async {
    final creditTypeDtos = await customerRemoteDataSource.getCreditTypes();
    return creditTypeDtos.map((dto) => dto.toDomain()).toList();
  }

  Future<List<CustomerCategory>> getCustomerCategorys({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await customerRemoteDataSource.getCustomerCategorys(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<List<Way>> getWays({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await customerRemoteDataSource.getWays(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<List<CustomerType>> getCustomerTypes() async {
    final customerTypeCustomerTypeDtos = await customerRemoteDataSource.getCustomerTypes();
    return customerTypeCustomerTypeDtos.map((dto) => dto.toDomain()).toList();
  }

  Future<List<Customer>> getCustomers({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await customerRemoteDataSource.getCustomers(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<List<Customer>> getWayCustomers({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await customerRemoteDataSource.getWayCustomers(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<bool> checkWayCustomerAvailablity(int userId) async {
    return await customerRemoteDataSource.checkWayCustomerAvailablity(userId);
  }

  Future<Customer> getCustomerById(int id) async {
    final data = await customerRemoteDataSource.getCustomerById(id);
    return data.toDomain();
  }

  Future<CustomResponse> createCustomer(Customer customer) async => await customerRemoteDataSource.createCustomer(CustomerDTO.fromDomain(customer));

  Future<CustomResponse> updateCustomer(Customer customer) async => await customerRemoteDataSource.updateCustomer(CustomerDTO.fromDomain(customer));

  Future<CustomResponse> deleteCustomer(int id) async => await customerRemoteDataSource.deleteCustomer(id);

  Future<CustomResponse> createBusinessUnit(BusinessUnit businessUnit) async => await customerRemoteDataSource.createBusinessUnit(BusinessUnitDTO.fromDomain(businessUnit));

  Future<CustomResponse> updateBusinessUnit(BusinessUnit businessUnit) async => await customerRemoteDataSource.updateBusinessUnit(BusinessUnitDTO.fromDomain(businessUnit));

  Future<CustomResponse> deleteBusinessUnit(int id) async => await customerRemoteDataSource.deleteBusinessUnit(id);
}
