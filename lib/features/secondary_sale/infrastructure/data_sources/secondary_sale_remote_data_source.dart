import 'dart:convert';
import 'dart:io';

import 'package:mgkaung_dms_mobile/core/api_routes/api_routes.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/promotion_eligible_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/secondary_sale_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/secondary_sale_invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/secondary_sale_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secondary_sale_remote_data_source.g.dart';

@riverpod
SecondarySaleRemoteDataSource secondarySaleRemoteDataSource(SecondarySaleRemoteDataSourceRef ref) => SecondarySaleRemoteDataSource(ref.watch(dioClientProvider));

class SecondarySaleRemoteDataSource {
  final DioClient dioClient;
  final routes = ApiRoutes.secondarySale.sales;

  SecondarySaleRemoteDataSource(this.dioClient);

  Future<List<SecondarySaleDTO>> getSecondarySales({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "secondary_sales_order_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.saleOrder}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => SecondarySaleDTO.fromJson(e)).toList();
  }

  Future<List<SecondarySaleDTO>> getOrderApprovals({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "secondary_sales_order_code": pagination.query,
      // "payment_type_id": 1,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.saleOrderApproval}',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => SecondarySaleDTO.fromJson(e)).toList();
  }

  Future<SecondarySaleDTO> getSecondarySaleById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.saleOrderById}/$id');
    return SecondarySaleDTO.fromJson(response['data']);
  }

  Future<CustomResponse> createSecondarySale(SecondarySaleDTO saleDTO) async => await dioClient.post(
        '${ApiBase.baseUrl}${routes.saleOrderCreate}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> updateSecondarySale(SecondarySaleDTO saleDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}${routes.saleOrderUpdate}/${saleDTO.id}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> deleteSecondarySale(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.saleOrderDelete}/$id', data: {'delete_reason': reason});

  Future<List<SecondarySaleInvoiceDTO>> getSecondarySaleInvoices({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "secondary_sales_invoice_code": pagination.query,
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

    return (response['data'] as List).map((e) => SecondarySaleInvoiceDTO.fromJson(e)).toList();
  }

  Future<SecondarySaleInvoiceDTO> getSecondarySaleInvoiceById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.invoiceById}/$id');
    return SecondarySaleInvoiceDTO.fromJson(response['data']);
  }

  Future<PromotionEligibleDTO> checkPromotionEligible(int invoiceId) async {
    final response = await dioClient.get(
      '${ApiBase.baseUrl}${routes.promotionEligible}/$invoiceId',
    );
    return PromotionEligibleDTO.fromJson(response);
  }

  Future<CustomResponse> covertToInvoice(SecondarySaleInvoiceDTO saleInvoiceDTO) async => await dioClient.post(
        '${ApiBase.baseUrl}${routes.invoiceCreate}/${saleInvoiceDTO.saleOrderId}',
        data: saleInvoiceDTO.toJson(),
      );

  Future<CustomResponse> updateInvoice(SecondarySaleInvoiceDTO saleInvoiceDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}${routes.invoiceUpdate}/${saleInvoiceDTO.id}',
        data: saleInvoiceDTO.toJson(),
      );

  Future<CustomResponse> deleteInvoice(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.invoiceDelete}/$id', data: {'delete_reason': reason});

  Future<List<SecondarySaleReceiptDTO>> getSecondarySaleReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "payment_receive_code": pagination.query,
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

    return (response['data'] as List).map((e) => SecondarySaleReceiptDTO.fromJson(e)).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, SecondarySaleReceiptDTO secondarySaleReceiptDTO) async {
    final formData = FormData();

    // Add JSON data to the FormData
    formData.fields.addAll(
      secondarySaleReceiptDTO.toJson().entries.map(
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

    return await dioClient.post(
      '${ApiBase.baseUrl}${routes.paymentReceiveCreate}',
      data: formData,
    );
  }

  Future<SecondarySaleReceiptDTO> getPaymentReceiveById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}${routes.paymentReceiveById}/$id');
    return SecondarySaleReceiptDTO.fromJson(response['data']);
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}${routes.paymentReceiveDelete}/$id', data: {'delete_reason': reason});
}
