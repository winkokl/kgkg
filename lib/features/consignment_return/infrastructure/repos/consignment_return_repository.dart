import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/infrastructure/dtos/consignment_return_dto.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/infrastructure/data_sources/consignment_return_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'consignment_return_repository.g.dart';

@riverpod
ConsignmentReturnRepository consignmentReturnRepository(ConsignmentReturnRepositoryRef ref) {
  return ConsignmentReturnRepository(ref.watch(consignmentReturnRemoteDataSourceProvider));
}

class ConsignmentReturnRepository {
  final ConsignmentReturnRemoteDataSource remoteDataSource;

  ConsignmentReturnRepository(this.remoteDataSource);

  Future<List<ConsignmentReturn>> getConsignmentReturns({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getConsignmentReturns(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<ConsignmentReturn> getConsignmentReturnById(int id) async {
    final data = await remoteDataSource.getConsignmentReturnById(id);
    return data.toDomain();
  }

  Future<CustomResponse> createConsignmentReturn(ConsignmentReturn sale) async {
    final res = await remoteDataSource.createConsignmentReturn(sale);
    return res.copyWith(data: ConsignmentReturnDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateConsignmentReturn(ConsignmentReturn sale) async {
    final res = await remoteDataSource.updateConsignmentReturn(sale);
    return res.copyWith(data: ConsignmentReturnDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteConsignmentReturn(int id, String reason) async => await remoteDataSource.deleteConsignmentReturn(id, reason);
}
