import 'dart:io';

import 'package:mgkaung_dms_mobile/core/api_routes/api_routes.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/infrastructure/dtos/trip_sale_return_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/infrastructure/dtos/trip_sale_return_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'trip_sale_return_remote_data_source.g.dart';

@riverpod
TripSaleReturnRemoteDataSource tripSaleReturnRemoteDataSource(TripSaleReturnRemoteDataSourceRef ref) {
  return TripSaleReturnRemoteDataSource(ref.watch(dioClientProvider));
}

class TripSaleReturnRemoteDataSource {
  final DioClient dioClient;
  final routes = ApiRoutes.trip.tripSaleReturn;

  TripSaleReturnRemoteDataSource(this.dioClient);

  Future<List<TripSaleReturnDTO>> getTripSaleReturns({
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
      '${ApiBase.baseUrl}${routes.tripSaleReturn}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripSaleReturnDTO.fromJson(e)).toList();
  }

  Future<TripSaleReturnDTO> getTripSaleReturnById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.tripSaleReturnById}/$id');
    return TripSaleReturnDTO.fromJson(response['data']);
  }

  Future<CustomResponse> createTripSaleReturn(TripSaleReturnDTO saleDTO) async => await dioClient.post(
        '${ApiBase.baseUrl}${routes.tripSaleReturnCreate}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> updateTripSaleReturn(TripSaleReturnDTO saleDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}${routes.tripSaleReturnUpdate}${saleDTO.id}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> deleteTripSaleReturn(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.tripSaleReturnDelete}/$id', data: {'delete_reason': reason});

  Future<List<TripSaleReturnReceiptDTO>> getTripSaleReturnReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "trip_sale_return_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.tripSaleReturnPayment}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => TripSaleReturnReceiptDTO.fromJson(e)).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, TripSaleReturnReceiptDTO tripSaleReturnReceiptDTO) async {
    final formData = FormData();

    // Add JSON data to the FormData
    formData.fields.addAll(
      tripSaleReturnReceiptDTO.toJson().entries.map(
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
      '${ApiBase.baseUrl}${routes.tripSaleReturnPaymentCreate}',
      data: formData,
    );
  }

  Future<TripSaleReturnReceiptDTO> getReturnPaymentReceiveById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.tripSaleReturnPaymentById}/$id');
    return TripSaleReturnReceiptDTO.fromJson(response['data']);
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.tripSaleReturnPaymentDelete}/$id', data: {'delete_reason': reason});
}
