import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/infrastructure/dtos/delivery_note_dto.dart';

part 'delivery_note_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
DeliveryNoteRemoteDataSource deliveryNoteRemoteDataSource(DeliveryNoteRemoteDataSourceRef ref) {
  return DeliveryNoteRemoteDataSource(ref.watch(dioClientProvider));
}

class DeliveryNoteRemoteDataSource {
  final DioClient dioClient;

  DeliveryNoteRemoteDataSource(this.dioClient);

  Future<List<DeliveryNoteDTO>> getDeliveryNotes({
    required Pagination pagination,
    CancelToken? cancelToken,
    AllFilterDTO? allFilterDTO,
  }) async {
    final queryParams = {
      "keyword": pagination.query,
      "page": pagination.page,
      "limit": limit,
    };
    if (allFilterDTO != null) {
      queryParams.addEntries(allFilterDTO.toJson().entries);
    }

    final response = await dioClient.get(
      "${ApiBase.baseUrl}/mobile/goods-request/goods-delivery-note",
      cancelToken: cancelToken,
      queryParam: queryParams,
    );
    return (response['data'] as List).map((e) => DeliveryNoteDTO.fromJson(e)).toList();
  }

  Future<DeliveryNoteDTO> getDeliveryNoteById(int id) async {
    final response = await dioClient.get('${ApiBase.baseUrl}/mobile/goods-request/goods-delivery-note/edit/$id');
    return DeliveryNoteDTO.fromJson(response['data']);
  }

  Future<CustomResponse> signDeliveryNote(File? attachment, File signFile, String date, String description, int deliveryNoteId) async {
    final formData = FormData();
    // Add JSON data to the FormData
    formData.fields.add(MapEntry("delivery_complete_date", date));
    formData.fields.add(MapEntry("description", description));

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
      '${ApiBase.baseUrl}/mobile/goods-request/goods-delivery-note/update/$deliveryNoteId',
      data: formData,
    );
  }
}
