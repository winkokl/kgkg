import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';

extension AsyncValueX<T> on AsyncValue<T> {
  Future<AsyncValue<T>> guardX(Future<T> Function() future) async {
    try {
      return AsyncValue.data(await future());
    } on DioException catch (e, stack) {
      final error = DioExceptions.fromDioError(e);
      return AsyncValue<T>.error(error, stack).copyWithPrevious(this);
    } catch (err, stack) {
      return AsyncValue<T>.error(commonErrorString, stack).copyWithPrevious(this);
    }
  }

  R whenPlus<R>({
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
    bool skipErrorOnHasValue = false,
    required R Function(T data, bool hasError) data,
    required R Function(Object error, StackTrace stackTrace) error,
    required R Function() loading,
  }) {
    if (skipErrorOnHasValue) {
      if (hasValue && hasError) {
        return data(requireValue, true);
      }
    }

    return when(
      skipLoadingOnReload: skipLoadingOnReload,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipError: skipError,
      data: (d) => data(d, hasError),
      error: error,
      loading: loading,
    );
  }

  void showSnackbarOnError(
    BuildContext context, {
    String defaultMessage = "",
    VoidCallback? successCallback,
  }) {
    if (!isLoading && hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(Icons.report_gmailerrorred, color: errorColor),
              const SizedBox(width: 20),
              Expanded(
                child: HeaderTextSmall(
                  """${error ?? "Unable to process your request!"}""",
                  maxLines: 3,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          showCloseIcon: true,
        ),
      );
      return;
    }
  }

  void showSnackbarOnSuccess(
    BuildContext context, {
    String defaultMessage = "လုပ်ငန်းစဥ် အောင်မြင်ပါသည်။",
    VoidCallback? successCallback,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          defaultMessage,
          style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: successColor,
      ),
    );
    return;
  }
}
