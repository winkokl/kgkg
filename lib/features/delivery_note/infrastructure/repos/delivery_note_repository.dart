import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/domain/delivery_note.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/infrastructure/data_sources/delivery_note_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'delivery_note_repository.g.dart';

@Riverpod(keepAlive: true)
DeliveryNoteRepository deliveryNoteRepository(DeliveryNoteRepositoryRef ref) {
  return DeliveryNoteRepository(ref.watch(deliveryNoteRemoteDataSourceProvider));
}

class DeliveryNoteRepository {
  final DeliveryNoteRemoteDataSource deliveryNoteRemoteDataSource;

  DeliveryNoteRepository(this.deliveryNoteRemoteDataSource);

  Future<List<DeliveryNote>> getDeliveryNotes({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await deliveryNoteRemoteDataSource.getDeliveryNotes(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((dto) => dto.toDomain()).toList();
  }

  Future<DeliveryNote> getDeliveryNoteById(int id) async {
    final data = await deliveryNoteRemoteDataSource.getDeliveryNoteById(id);
    return data.toDomain();
  }

  Future<CustomResponse> signDeliveryNote(File? attachment, File signFile, String date, String description, int deliveryNoteId) async {
    return await deliveryNoteRemoteDataSource.signDeliveryNote(attachment, signFile, date, description, deliveryNoteId);
  }
}
