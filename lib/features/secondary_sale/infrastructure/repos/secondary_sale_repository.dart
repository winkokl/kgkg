import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/promotion_eligible.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/data_sources/secondary_sale_remote_data_source.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/secondary_sale_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/secondary_sale_invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/infrastructure/dtos/secondary_sale_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secondary_sale_repository.g.dart';

@riverpod
SecondarySaleRepository secondarySaleRepository(SecondarySaleRepositoryRef ref) => SecondarySaleRepository(ref.watch(secondarySaleRemoteDataSourceProvider));

class SecondarySaleRepository {
  final SecondarySaleRemoteDataSource remoteDataSource;

  SecondarySaleRepository(this.remoteDataSource);

  Future<List<SecondarySale>> getSecondarySales({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getSecondarySales(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<List<SecondarySale>> getOrderApprovals({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getOrderApprovals(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<SecondarySale> getSecondarySaleById(int id) async {
    final data = await remoteDataSource.getSecondarySaleById(id);
    return data.toDomain();
  }

  Future<CustomResponse> createSecondarySale(SecondarySale sale) async {
    print(sale);
    final res = await remoteDataSource.createSecondarySale(SecondarySaleDTO.fromDomain(sale));
    return res.copyWith(data: SecondarySaleDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateSecondarySale(SecondarySale sale) async {
    final res = await remoteDataSource.updateSecondarySale(SecondarySaleDTO.fromDomain(sale));
    return res.copyWith(data: SecondarySaleDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteSecondarySale(int id, String reason) async => await remoteDataSource.deleteSecondarySale(id, reason);

  Future<List<SecondarySaleInvoice>> getSecondarySaleInvoices({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getSecondarySaleInvoices(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<SecondarySaleInvoice> getSecondarySaleInvoiceById(int id) async {
    final data = await remoteDataSource.getSecondarySaleInvoiceById(id);
    return data.toDomain();
  }

  Future<PromotionEligible> checkPromotionEligible(int invoiceId) async {
    final data = await remoteDataSource.checkPromotionEligible(invoiceId);
    return data.toDomain();
  }

  Future<CustomResponse> covertToInvoice(SecondarySaleInvoice saleInvoice) async {
    final res = await remoteDataSource.covertToInvoice(SecondarySaleInvoiceDTO.fromDomain(saleInvoice));
    return res.copyWith(data: SecondarySaleInvoiceDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateInvoice(SecondarySaleInvoice saleInvoice) async {
    final res = await remoteDataSource.updateInvoice(SecondarySaleInvoiceDTO.fromDomain(saleInvoice));
    return res.copyWith(data: SecondarySaleInvoiceDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteInvoice(int id, String reason) async => await remoteDataSource.deleteInvoice(id, reason);

  Future<List<SecondarySaleReceipt>> getSecondarySaleReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getSecondarySaleReceipts(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, SecondarySaleReceipt secondarySaleReceipt) async {
    final res = await remoteDataSource.makePaymentReceive(attachment, signFile, SecondarySaleReceiptDTO.fromDomain(secondarySaleReceipt));
    return res.copyWith(data: SecondarySaleReceiptDTO.fromJson(res.data).toDomain());
  }

  Future<SecondarySaleReceipt> getPaymentReceiveById(int id) async {
    final data = await remoteDataSource.getPaymentReceiveById(id);
    return data.toDomain();
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await remoteDataSource.deletePayment(id, reason);
}
