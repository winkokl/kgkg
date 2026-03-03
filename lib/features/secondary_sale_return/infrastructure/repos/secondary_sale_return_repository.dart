import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/infrastructure/data_sources/secondary_sale_return_remote_data_source.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/infrastructure/dtos/secondary_sale_return_dto.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/infrastructure/dtos/secondary_sale_return_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secondary_sale_return_repository.g.dart';

@riverpod
SecondarySaleReturnRepository secondarySaleReturnRepository(SecondarySaleReturnRepositoryRef ref) {
  return SecondarySaleReturnRepository(ref.watch(secondarySaleReturnRemoteDataSourceProvider));
}

class SecondarySaleReturnRepository {
  final SecondarySaleReturnRemoteDataSource remoteDataSource;

  SecondarySaleReturnRepository(this.remoteDataSource);

  Future<List<SecondarySaleReturn>> getSecondarySaleReturns({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getSecondarySaleReturns(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<SecondarySaleReturn> getSecondarySaleReturnById(int id) async {
    final data = await remoteDataSource.getSecondarySaleReturnById(id);
    return data.toDomain();
  }

  Future<CustomResponse> createSecondarySaleReturn(SecondarySaleReturn sale) async {
    final res = await remoteDataSource.createSecondarySaleReturn(SecondarySaleReturnDTO.fromDomain(sale));
    return res.copyWith(data: SecondarySaleReturnDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateSecondarySaleReturn(SecondarySaleReturn sale) async {
    final res = await remoteDataSource.updateSecondarySaleReturn(SecondarySaleReturnDTO.fromDomain(sale));
    return res.copyWith(data: SecondarySaleReturnDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteSecondarySaleReturn(int id, String reason) async => await remoteDataSource.deleteSecondarySaleReturn(id, reason);

  Future<List<SecondarySaleReturnReceipt>> getSecondarySaleReturnReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getSecondarySaleReturnReceipts(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, SecondarySaleReturnReceipt secondarySaleReturnReceipt) async {
    final res = await remoteDataSource.makePaymentReceive(attachment, signFile, SecondarySaleReturnReceiptDTO.fromDomain(secondarySaleReturnReceipt));
    return res.copyWith(data: SecondarySaleReturnReceiptDTO.fromJson(res.data).toDomain());
  }

  Future<SecondarySaleReturnReceipt> getReturnPaymentReceiveById(int id) async {
    final data = await remoteDataSource.getReturnPaymentReceiveById(id);
    return data.toDomain();
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await remoteDataSource.deletePayment(id, reason);
}
