import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/infrastructure/data_sources/trip_sale_return_remote_data_source.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/infrastructure/dtos/trip_sale_return_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/infrastructure/dtos/trip_sale_return_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'trip_sale_return_repository.g.dart';

@riverpod
TripSaleReturnRepository tripSaleReturnRepository(TripSaleReturnRepositoryRef ref) {
  return TripSaleReturnRepository(ref.watch(tripSaleReturnRemoteDataSourceProvider));
}

class TripSaleReturnRepository {
  final TripSaleReturnRemoteDataSource remoteDataSource;

  TripSaleReturnRepository(this.remoteDataSource);

  Future<List<TripSaleReturn>> getTripSaleReturns({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getTripSaleReturns(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<TripSaleReturn> getTripSaleReturnById(int id) async {
    final data = await remoteDataSource.getTripSaleReturnById(id);
    return data.toDomain();
  }

  Future<CustomResponse> createTripSaleReturn(TripSaleReturn sale) async {
    final res = await remoteDataSource.createTripSaleReturn(TripSaleReturnDTO.fromDomain(sale));
    return res.copyWith(data: TripSaleReturnDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateTripSaleReturn(TripSaleReturn sale) async {
    final res = await remoteDataSource.updateTripSaleReturn(TripSaleReturnDTO.fromDomain(sale));
    return res.copyWith(data: TripSaleReturnDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteTripSaleReturn(int id, String reason) async => await remoteDataSource.deleteTripSaleReturn(id, reason);

  Future<List<TripSaleReturnReceipt>> getTripSaleReturnReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getTripSaleReturnReceipts(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, TripSaleReturnReceipt tripSaleReturnReceipt) async {
    final res = await remoteDataSource.makePaymentReceive(attachment, signFile, TripSaleReturnReceiptDTO.fromDomain(tripSaleReturnReceipt));
    return res.copyWith(data: TripSaleReturnReceiptDTO.fromJson(res.data).toDomain());
  }

  Future<TripSaleReturnReceipt> getReturnPaymentReceiveById(int id) async {
    final data = await remoteDataSource.getReturnPaymentReceiveById(id);
    return data.toDomain();
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await remoteDataSource.deletePayment(id, reason);
}
