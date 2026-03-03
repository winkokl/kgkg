import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_approval.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/data_sources/consignment_remote_data_source.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/dtos/consignment_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'consignment_repository.g.dart';

@riverpod
ConsignmentRepository consignmentRepository(ConsignmentRepositoryRef ref) => ConsignmentRepository(ref.watch(consignmentRemoteDataSourceProvider));

class ConsignmentRepository {
  final ConsignmentRemoteDataSource remoteDataSource;

  ConsignmentRepository(this.remoteDataSource);

  Future<List<Customer>> getConsignmentContractCustomers({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getConsignmentContractCustomers(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<List<ConsignmentContract>> getConsignmentContracts({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getConsignmentContracts(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<List<ConsignmentContract>> getConsignmentContractsByBu(int buId) async {
    final data = await remoteDataSource.getConsignmentContractsByBU(buId);
    return data.map((e) => e.toDomain()).toList();
  }

  Future<ConsignmentContract> getConsignmentContractById(int id) async {
    final data = await remoteDataSource.getConsignmentContractById(id);
    return data.toDomain();
  }

  Future<CustomResponse> deleteConsignmentContract(int id, String reason) async => await remoteDataSource.deleteConsignmentContract(id, reason);

  Future<CustomResponse> deleteConsignmentApproval(int id, String reason) async => await remoteDataSource.deleteConsignmentApproval(id, reason);

  Future<List<Consignment>> getConsignmentApprovals({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getConsignmentApprovals(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<ConsignmentApproval> getConsignmentApprovalById(int id) async {
    final data = await remoteDataSource.getConsignmentApprovalById(id);
    return data.toDomain();
  }

  Future<List<Consignment>> getConsignments({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getConsignments(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<Consignment> getConsignmentById(int id) async {
    final data = await remoteDataSource.getConsignmentById(id);
    return data.toDomain();
  }

  Future<CustomResponse> createConsignment(Consignment sale) async {
    final res = await remoteDataSource.createConsignment(ConsignmentDTO.fromDomain(sale));
    return res;
    // return res.copyWith(data: ConsignmentDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateConsignment(Consignment sale) async {
    final res = await remoteDataSource.updateConsignment(ConsignmentDTO.fromDomain(sale));
    return res;
    // return res.copyWith(data: ConsignmentDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteConsignment(int id, String reason) async => await remoteDataSource.deleteConsignment(id, reason);

  Future<List<ConsignmentInvoice>> getConsignmentInvoices({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getConsignmentInvoices(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<ConsignmentInvoice> getConsignmentInvoiceById(int id) async {
    final data = await remoteDataSource.getConsignmentInvoiceById(id);
    return data.toDomain();
  }

  Future<CustomResponse> covertToInvoice(ConsignmentInvoice saleInvoice) async {
    final res = await remoteDataSource.covertToInvoice(ConsignmentInvoiceDTO.fromDomain(saleInvoice));
    return res.copyWith(data: ConsignmentInvoiceDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateInvoice(ConsignmentInvoice saleInvoice) async {
    final res = await remoteDataSource.updateInvoice(ConsignmentInvoiceDTO.fromDomain(saleInvoice));
    return res.copyWith(data: ConsignmentInvoiceDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteInvoice(int id, String reason) async => await remoteDataSource.deleteInvoice(id, reason);

  Future<List<ConsignmentReceipt>> getConsignmentReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getConsignmentReceipts(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, ConsignmentReceipt consignmentReceipt) async {
    final res = await remoteDataSource.makePaymentReceive(attachment, signFile, ConsignmentReceiptDTO.fromDomain(consignmentReceipt));
    return res.copyWith(data: ConsignmentReceiptDTO.fromJson(res.data).toDomain());
  }

  Future<ConsignmentReceipt> getPaymentReceiveById(int id) async {
    final data = await remoteDataSource.getPaymentById(id);
    return data.toDomain();
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await remoteDataSource.deletePayment(id, reason);
}
