import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_exceptions.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension CacheForExtension on AutoDisposeRef<Object?> {
  void cacheFor({int? second}) {
    final keepAliveLink = keepAlive();

    Timer? timer;

    onCancel(() {
      timer = Timer(Duration(seconds: second ?? 10), () {
        keepAliveLink.close();
      });
    });
    onDispose(timer!.cancel);
    onResume(timer!.cancel);
  }
}

extension DebounceAndCancelExtension on AutoDisposeRef {
  /// Wait for [duration] (defaults to 500ms), and then return a [http.Client]
  /// which can be used to make a request.
  ///
  Future<void> getDebouncedHttpClient([Duration? duration]) async {
    var didDispose = false;
    onDispose(() => didDispose = true);

    // We delay the request by 500ms, to wait for the user to stop refreshing.
    await Future<void>.delayed(duration ?? const Duration(milliseconds: 500));

    // If the provider was disposed during the delay, it means that the user
    // refreshed again. We throw an exception to cancel the request.
    // It is safe to use an exception here, as it will be caught by Riverpod.
    if (didDispose) {
      throw Exception('Cancelled');
    }
  }
}

extension RefListenExtension on WidgetRef {
  void listenX<N extends AutoDisposeAsyncNotifier<Option<CustomResponse>>>({
    required AutoDisposeAsyncNotifierProvider<N, Option<CustomResponse>> provider,
    required void Function(CustomResponse res) onData,
  }) {
    listen(provider, (previous, state) {
      state.unwrapPrevious().maybeWhen(
          orElse: () {},
          loading: () => LoadingOverlay.show(),
          data: (data) {
            LoadingOverlay.hide();
            onData.call(data.fold(
              () => CustomResponse.errorResponse(),
              (t) => t,
            ));
          },
          error: (e, stack) {
            LoadingOverlay.hide();
            if (e.toString() != "Session expired. Please login again.") {
              CustomDialog.showFailureDialog(
                title: "Failed",
                msg: e.toString(),
                onPressed: () => context.pop(),
              );
            }
          });
    });
  }
}

extension RefErrorExtension<T> on FutureProviderRef<T> {
  Future<T> guardXFetch(Future<T> Function() future) async {
    try {
      return await future();
    } on DioException catch (e) {
      final error = DioExceptions.fromDioError(e);
      throw error;
    } catch (e) {
      debugPrint(e.toString());
      throw commonErrorString;
    }
  }
}

extension AutoDisposeAsyncNotifierProviderRefErrorExtension<T> on AutoDisposeAsyncNotifierProviderRef<T> {
  Future<T> guardXFetch(Future<T> Function() future) async {
    try {
      return await future();
    } on DioException catch (e) {
      final error = DioExceptions.fromDioError(e);
      throw error;
    } catch (e) {
      throw commonErrorString;
    }
  }
}
