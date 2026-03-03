import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_approval_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_contract_dto.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/dtos/customer_dto.dart';

part 'consignment_remote_data_source.g.dart';

@riverpod
ConsignmentRemoteDataSource consignmentRemoteDataSource(ConsignmentRemoteDataSourceRef ref) => ConsignmentRemoteDataSource(ref.watch(dioClientProvider));

class ConsignmentRemoteDataSource {
  final DioClient dioClient;

  ConsignmentRemoteDataSource(this.dioClient);

  Future<List<ConsignmentContractDTO>> getConsignmentContractsByBU(int buId) async {
    final response = await dioClient.get(
      '${ApiBase.baseUrl}/common/consignment/contract/business-unit/$buId',
    );

    return (response['data'] as List).map((e) => ConsignmentContractDTO.fromJson(e)).toList();
  }

  Future<List<CustomerDTO>> getConsignmentContractCustomers({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "customer_name": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/consignment/customer',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => CustomerDTO.fromJson(e)).toList();
  }

  Future<List<ConsignmentContractDTO>> getConsignmentContracts({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "consignment_contract_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }
    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/consignment/contract',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => ConsignmentContractDTO.fromJson(e)).toList();
  }

  Future<ConsignmentContractDTO> getConsignmentContractById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/consignment/contract/edit/$id');
    return ConsignmentContractDTO.fromJson(response['data']);
  }

  Future<List<ConsignmentDTO>> getConsignmentApprovals({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "consignment_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(
        {'from_date': allFilterDTO.fromDate, 'to_date': allFilterDTO.toDate, 'customer_id': allFilterDTO.customerId, 'region_id': allFilterDTO.region, 'status': allFilterDTO.orderApprovalStatus}.entries,
      );
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/consignment/approval',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => ConsignmentDTO.fromJson(e)).toList();
  }

  Future<ConsignmentApprovalDTO> getConsignmentApprovalById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/trip/sale/edit/$id');
    return ConsignmentApprovalDTO.fromJson(response['data']);
  }

  Future<CustomResponse> deleteConsignmentContract(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/consignment/contract/delete/$id', data: {'delete_reason': reason});

  Future<CustomResponse> deleteConsignmentApproval(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/trip/user-assign/delete/$id', data: {'delete_reason': reason});

  Future<List<ConsignmentDTO>> getConsignments({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "consignment_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/consignment',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => ConsignmentDTO.fromJson(e)).toList();
  }

  Future<ConsignmentDTO> getConsignmentById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/consignment/edit/$id');
    return ConsignmentDTO.fromJson(response['data']);
  }

  Future<CustomResponse> createConsignment(ConsignmentDTO saleDTO) async => await dioClient.post(
        '${ApiBase.baseUrl}/mobile/consignment/create',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> updateConsignment(ConsignmentDTO saleDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}/mobile/consignment/update/${saleDTO.id}',
        data: saleDTO.toJson(),
      );

  Future<CustomResponse> deleteConsignment(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/consignment/delete/$id', data: {'delete_reason': reason});

  Future<List<ConsignmentInvoiceDTO>> getConsignmentInvoices({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "consignment_invoice_code": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      '${ApiBase.baseUrl}/mobile/consignment/invoice',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => ConsignmentInvoiceDTO.fromJson(e)).toList();
  }

  Future<ConsignmentInvoiceDTO> getConsignmentInvoiceById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/consignment/invoice/edit/$id');
    return ConsignmentInvoiceDTO.fromJson(response['data']);
  }

  Future<CustomResponse> covertToInvoice(ConsignmentInvoiceDTO saleInvoiceDTO) async => await dioClient.post(
        '${ApiBase.baseUrl}/mobile/consignment/invoice/create',
        data: saleInvoiceDTO.toJson(),
      );

  Future<CustomResponse> updateInvoice(ConsignmentInvoiceDTO saleInvoiceDTO) async => await dioClient.patch(
        '${ApiBase.baseUrl}/mobile/consignment/invoice/update/${saleInvoiceDTO.id}',
        data: saleInvoiceDTO.toJson(),
      );

  Future<CustomResponse> deleteInvoice(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/consignment/invoice/delete/$id', data: {'delete_reason': reason});

  Future<List<ConsignmentReceiptDTO>> getConsignmentReceipts({
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
      '${ApiBase.baseUrl}/mobile/consignment/payment-receive',
      cancelToken: cancelToken,
      queryParam: queryParams,
    );

    return (response['data'] as List).map((e) => ConsignmentReceiptDTO.fromJson(e)).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, ConsignmentReceiptDTO consignmentReceiptDTO) async {
    final formData = FormData();

    // Add JSON data to the FormData
    formData.fields.addAll(
      consignmentReceiptDTO.toJson().entries.map(
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
      '${ApiBase.baseUrl}/mobile/consignment/payment-receive/create',
      data: formData,
    );
  }

  Future<ConsignmentReceiptDTO> getPaymentById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/consignment/payment-receive/$id');
    return ConsignmentReceiptDTO.fromJson(response['data']);
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await dioClient.delete('${ApiBase.baseUrl}/mobile/consignment/payment-receive/delete/$id', data: {'delete_reason': reason});
}
