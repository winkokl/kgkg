import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/delivery_note/infrastructure/repos/delivery_note_repository.dart';
part 'async_delivery_note_notifier.g.dart';

@riverpod
class AsyncDeliveryNoteFormNotifier extends _$AsyncDeliveryNoteFormNotifier {
  @override
  FutureOr<Option<CustomResponse>> build() => const None();

  Future<void> signDeliveryNote(File? attachment, File signFile, String date, String description, int id) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      final res = await ref.watch(deliveryNoteRepositoryProvider).signDeliveryNote(attachment, signFile, date, description, id);
      ref.invalidate(paginatedDeliveryNoteNotifierProvider);
      return Some(res);
    });
  }
}
