import 'dart:io';

import 'package:mgkaung_dms_mobile/core/api_routes/api_routes.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_management_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_name_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_proposal_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_receipt_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_request_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_user_assign_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/vehicle_dto.dart';

part 'trip_sale_remote_data_source.g.dart';

@riverpod
TripSaleRemoteDataSource tripSaleRemoteDataSource(TripSaleRemoteDataSourceRef ref) => TripSaleRemoteDataSource(ref.watch(dioClientProvider));

class TripSaleRemoteDataSource {
  final DioClient dioClient;

  final routes = ApiRoutes.trip.tripSale;

  TripSaleRemoteDataSource(this.dioClient);

  Future<List<VehicleDTO>> getVehicleManagements({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {"search": pagination.query, "page": pagination.page, "limit": limit};

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.vehicleManagement}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => VehicleDTO.fromJson(e)).toList();
  }

  Future<List<TripProposalDTO>> getTripProposals({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "trip_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
      "region_ids": allFilterDTO == null ? '[]' : allFilterDTO.regions.toString(),
    };

    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripProposal}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripProposalDTO.fromJson(e)).toList();
  }

  Future<TripProposalDTO> getTripProposalById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.tripManagementById}/$id');
    return TripProposalDTO.fromJson(response['data']);
  }

  Future<List<TripNameDTO>> getTripNames({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripNames}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripNameDTO.fromJson(e)).toList();
  }

  Future<List<TripManagementDTO>> getTripManagements({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {"trip_code": pagination.query, "page": pagination.page, "limit": limit, "region_ids": allFilterDTO == null ? '[]' : allFilterDTO.regions.toString()};

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripManagement}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripManagementDTO.fromJson(e)).toList();
  }

  Future<TripManagementDTO> getTripManagementById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.tripManagementById}/$id');
    return TripManagementDTO.fromJson(response['data']);
  }

  Future<List<TripUserAssignDTO>> getTripUserAssigns({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "username": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripUserAssign}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripUserAssignDTO.fromJson(e)).toList();
  }

  Future<CustomResponse> deleteTripManagement(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.tripManagementDelete}/$id', data: {'delete_reason': reason});

  Future<CustomResponse> deleteTripUserAssign(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.tripUserAssignDelete}/$id', data: {'delete_reason': reason});

  Future<List<TripSaleDTO>> getTripSales({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "search": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripSale}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripSaleDTO.fromJson(e)).toList();
  }

  Future<List<TripSaleRequestDTO>> getTripSaleRequests({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "search": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripSaleRequest}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripSaleRequestDTO.fromJson(e)).toList();
  }

  Future<TripSaleRequestDTO> getTripSaleRequestById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.tripSaleRequestById}/$id');
    return TripSaleRequestDTO.fromJson(response['data']);
  }

  Future<CustomResponse> deleteTripSaleRequest(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.tripSaleRequestDelete}/$id', data: {'delete_reason': reason});

  Future<TripSaleDTO> getTripSaleById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.tripSaleById}/$id');
    return TripSaleDTO.fromJson(response['data']);
  }

  Future<CustomResponse> createTripSale(TripSaleDTO saleDTO) async {
    final data = saleDTO.toJson();

    // LOG: Print the final JSON being sent to API
    print('╔════════════════════════════════════════════════════════════');
    print('║ CREATE TRIP SALE - FINAL JSON SENT TO API');
    print('╠════════════════════════════════════════════════════════════');
    print('║ API URL: ${ApiBase.baseUrl}${routes.tripSaleCreate}');
    print('╠════════════════════════════════════════════════════════════');
    print('║ REQUEST DATA:');
    print(data);
    print('╠════════════════════════════════════════════════════════════');
    if (data['products'] != null && data['products'] is List) {
      print('║ PRODUCTS COUNT: ${(data['products'] as List).length}');
      for (var i = 0; i < (data['products'] as List).length; i++) {
        final product = data['products'][i];
        print('║ ');
        print('║ Product #$i:');
        print('║   - product_id: ${product['product_id']}');
        print('║   - qty: ${product['qty']}');
        print('║   - HAS is_promotion_item: ${product.containsKey("is_promotion_item")}');
        if (product.containsKey("is_promotion_item")) {
          print('║   - is_promotion_item VALUE: ${product["is_promotion_item"]}');
        }
      }
    }
    print('╚════════════════════════════════════════════════════════════');

    return await dioClient.post(
      '${ApiBase.baseUrl}${routes.tripSaleCreate}',
      data: data,
    );
  }

  Future<CustomResponse> updateTripSale(TripSaleDTO saleDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}${routes.tripSaleUpdate}/${saleDTO.id}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> deleteTripSale(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.tripSaleDelete}/$id', data: {'delete_reason': reason});

  Future<List<TripSaleInvoiceDTO>> getTripSaleInvoices({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "search": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.invoice}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripSaleInvoiceDTO.fromJson(e)).toList();
  }

  Future<TripSaleInvoiceDTO> getTripSaleInvoiceById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.invoiceById}/$id');
    return TripSaleInvoiceDTO.fromJson(response['data']);
  }

  Future<CustomResponse> covertToInvoice(TripSaleInvoiceDTO saleInvoiceDTO) async {
    final body = saleInvoiceDTO.toJson();
    body.addEntries({"trip_sale_id": '${saleInvoiceDTO.saleOrderId}'}.entries);
    return await dioClient.post(
      '${ApiBase.baseUrl}${routes.invoiceCreate}',
      data: body,
    );
  }

  Future<CustomResponse> updateInvoice(TripSaleInvoiceDTO saleInvoiceDTO) async {
    final body = saleInvoiceDTO.toJson();
    body.addEntries({"trip_sale_id": '${saleInvoiceDTO.saleOrderId}'}.entries);
    return await dioClient.patch(
      '${ApiBase.baseUrl}${routes.invoiceUpdate}/${saleInvoiceDTO.id}',
      data: body,
    );
  }

  Future<CustomResponse> deleteInvoice(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.invoiceDelete}$id', data: {'delete_reason': reason});

  Future<List<TripSaleReceiptDTO>> getTripSaleReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "search": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.paymentReceive}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripSaleReceiptDTO.fromJson(e)).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, TripSaleReceiptDTO tripSaleReceiptDTO) async {
    final formData = FormData();

    // Add JSON data to the FormData
    formData.fields.addAll(
      tripSaleReceiptDTO.toJson().entries.map(
            (e) => MapEntry(e.key, e.value.toString()),
          ),
    );

    if (attachment != null) {
      formData.files.add(
        MapEntry(
          'file',
          await MultipartFile.fromFile(
            attachment.path,
            filename: attachment.path.split('/').last,
          ),
        ),
      );
    }

    formData.files.add(
      MapEntry(
        'signature',
        await MultipartFile.fromFile(
          signFile.path,
          filename: signFile.path.split('/').last,
        ),
      ),
    );

    return await dioClient.post(
      '${ApiBase.baseUrl}${routes.paymentReceiveCreate}',
      data: formData,
    );
  }

  Future<TripSaleReceiptDTO> getPaymentReceiveById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.paymentReceiveById}/$id');
    return TripSaleReceiptDTO.fromJson(response['data']);
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.paymentReceiveDelete}/$id', data: {'delete_reason': reason});

  Future<List<ProductDTO>> getTripProposalProduct(int tripId, int warehouseId) async {
    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripProposalProduct}/$tripId/$warehouseId',
    );

    return (response as List).map((e) => ProductDTO.fromJson(e)).toList();
  }
}
