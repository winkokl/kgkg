import 'dart:convert';
import 'dart:io';

import 'package:mgkaung_dms_mobile/core/api_routes/api_routes.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/infrastructure/dtos/secondary_sale_return_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/infrastructure/dtos/secondary_sale_return_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'secondary_sale_return_remote_data_source.g.dart';

@riverpod
SecondarySaleReturnRemoteDataSource secondarySaleReturnRemoteDataSource(SecondarySaleReturnRemoteDataSourceRef ref) {
  return SecondarySaleReturnRemoteDataSource(ref.watch(dioClientProvider));
}

class SecondarySaleReturnRemoteDataSource {
  final DioClient dioClient;
  final routes = ApiRoutes.secondarySale.returns;

  SecondarySaleReturnRemoteDataSource(this.dioClient);

  Future<List<SecondarySaleReturnDTO>> getSecondarySaleReturns({
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
      '${ApiBase.baseUrl}${routes.returnList}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => SecondarySaleReturnDTO.fromJson(e)).toList();
  }

  Future<SecondarySaleReturnDTO> getSecondarySaleReturnById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.returnById}/$id');
    return SecondarySaleReturnDTO.fromJson(response['data']);
  }

  Future<CustomResponse> createSecondarySaleReturn(SecondarySaleReturnDTO saleDTO) async => await dioClient.post(
        '${ApiBase.baseUrl}${routes.returnCreate}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> updateSecondarySaleReturn(SecondarySaleReturnDTO saleDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}${routes.returnUpdate}/${saleDTO.id}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> deleteSecondarySaleReturn(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.returnDelete}/$id', data: {'delete_reason': reason});

  Future<List<SecondarySaleReturnReceiptDTO>> getSecondarySaleReturnReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "secondary_sales_return_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.returnPayment}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => SecondarySaleReturnReceiptDTO.fromJson(e)).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, SecondarySaleReturnReceiptDTO secondarySaleReturnReceiptDTO) async {
    final formData = FormData();

    // Add JSON data to the FormData
    formData.fields.addAll(
      secondarySaleReturnReceiptDTO.toJson().entries.map(
            (e) => MapEntry(e.key, jsonEncode(e.value)),
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

    return await dioClient.patch(
      '${ApiBase.baseUrl}${routes.returnPaymentCreate}/${secondarySaleReturnReceiptDTO.secondarySalesReturnId}',
      data: formData,
    );
  }

  Future<SecondarySaleReturnReceiptDTO> getReturnPaymentReceiveById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.returnPaymentById}/$id');
    return SecondarySaleReturnReceiptDTO.fromJson(response['data']);
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.returnPaymentDelete}/$id', data: {'delete_reason': reason});
}
