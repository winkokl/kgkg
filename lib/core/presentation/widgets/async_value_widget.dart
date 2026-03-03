// Generic AsyncValueWidget to work with values of type T
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_circularprogress_indicator.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    required this.errorCallback,
    this.loadingWidget,
    this.errorWidget,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final VoidCallback errorCallback;
  final Widget Function(Object, StackTrace)? errorWidget;
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    // return switch (value) {

    //   AsyncData(:final value) => data.call(value),
    //   AsyncError(:final error) => (errorWidget != null)
    //       ? errorWidget!
    //       : Center(
    //           child: Column(
    //             mainAxisSize: MainAxisSize.max,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               const Icon(Icons.cloud_off_outlined, size: 40),
    //               Text(
    //                 error.toString().split(' ')[0],
    //                 style: CustomTheme.appTheme.textTheme.bodySmall,
    //               ),
    //               const SizedBox(height: 10),
    //               SizedBox(
    //                 width: 150,
    //                 child: ActionButton(
    //                   onPressed: errorCallback,
    //                   label: "ထပ်ကြိုးစားမည်။",
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //   _ => const TableShimmer()
    // };
    return value.when(
      data: data,
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      skipError: true,
      loading: () => loadingWidget ?? const CustomCircularProgressIndicator(),
      error: errorWidget != null
          ? errorWidget!
          : (error, stackTrace) {
              return CustomErrorWidget(errorCallback: errorCallback);
            },
    );
  }
}

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    this.errorMsg,
    super.key,
    required this.errorCallback,
  });

  final VoidCallback errorCallback;
  final String? errorMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Icon(Icons.cloud_off_outlined, size: 40),
          Text(
            errorMsg ?? """Error: Unable to process your request!\nPlease ensure your internet connection is active and try again by refreshing the page.""",
            style: CustomTheme.appTheme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 150,
            child: TextButton(
              onPressed: errorCallback,
              child: const Text(
                "Refresh",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
