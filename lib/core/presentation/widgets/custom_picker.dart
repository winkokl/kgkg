import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';

import 'option_widget.dart';

typedef OnSelect<T> = void Function(T val);
typedef OnSelect2<T> = void Function(T val1, T val2);

class CustomPicker {
  static Future modalSheetPicker<T>({
    required BuildContext context,
    required OnSelect<T> onSelect,
    required String Function(T) display,
    required T currentValue,
    List<T>? data,
    ProviderBase<AsyncValue<List<T>>>? futureProvider,
    Function()? errorCallback,
  }) async {
    // AutoDisposeFutureProvider
    return await showCupertinoModalPopup(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        if (futureProvider == null) {
          return OptionWidget(
            onSelect: onSelect,
            display: display,
            currentValue: currentValue,
            data: data!,
          );
        }
        final size = MediaQuery.of(context).size;

        return Container(
          color: Colors.white,
          height: size.height * 0.27,
          child: Consumer(
            builder: (c, d, _) {
              final value = d.watch(futureProvider);
              return AsyncValueWidget(
                value: value,
                errorCallback: errorCallback!,
                errorWidget: (e, st) => Column(
                  children: [
                    Expanded(flex: 3, child: CustomErrorWidget(errorCallback: errorCallback, errorMsg: e.toString())),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: ActionButton(
                        label: 'Close',
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    const Spacer()
                  ],
                ),
                data: (data) => OptionWidget<T>(
                  onSelect: onSelect,
                  display: display,
                  currentValue: currentValue,
                  data: data,
                ),
              );
            },
          ),
        );
      },
    );
  }

  static Future modalSheetPicker2<T>({
    required BuildContext context,
    required OnSelect2<T> onSelect,
    required String Function(T) display,
    required T currentValue1,
    required T currentValue2,
    List<T>? data1,
    List<T>? data2,
    AsyncValue<List<T>>? asyncData,
    Function()? errorCallback,
  }) async {
    return await showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Option2Widget(
          onSelect: onSelect,
          display: display,
          currentValue1: currentValue1,
          currentValue2: currentValue2,
          data1: data1!,
          data2: data2!,
        );
      },
    );
  }
}
