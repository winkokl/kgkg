import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/responsive.dart';

Future<T?> showSelectionDialog<T>(
  BuildContext context,
  AsyncValue<List<T>> value,
  String Function(T val) displayVal,
) async {
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return Consumer(
        builder: (context, ref, child) {
          return AlertDialog(
            insetPadding: const EdgeInsets.all(8),
            title: const Text('ရွေးချယ်မှုတစ်ခုကိုလုပ်ပါ။'),
            content: SizedBox(
              width: Responsive.isMobile(context) ? 400 : 600,
              child: SingleChildScrollView(
                  child: AsyncValueWidget(
                value: value,
                data: (data) {
                  return Column(
                    children: data
                        .map((e) => ListTile(
                              title: Text(displayVal(e)),
                              onTap: () => Navigator.pop(context, e),
                            ))
                        .toList(),
                  );
                },
                errorCallback: () {},
              )),
            ),
          );
        },
      );
    },
  );
}

class SelectionDialog<N extends AsyncNotifier<List<T>>, T extends Object> extends ConsumerWidget {
  const SelectionDialog({
    super.key,
    required this.displayVal,
    required this.value,
    this.selection,
  });
  final AsyncNotifierProvider<N, List<T>> value;
  final String Function(T val) displayVal;
  final List<T> Function(List<T> val)? selection;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(8),
      title: const Text('ရွေးချယ်မှုတစ်ခုကိုလုပ်ပါ။'),
      content: SizedBox(
        width: Responsive.isMobile(context) ? 400 : 600,
        child: SingleChildScrollView(
            child: AsyncValueWidget(
          value: ref.watch(value),
          data: (d) {
            final data = selection != null ? selection!.call(d) : d;
            return Column(
              children: data
                  .map((e) => ListTile(
                        title: Text(displayVal(e)),
                        onTap: () => Navigator.pop(context, e),
                      ))
                  .toList(),
            );
          },
          errorCallback: () {},
        )),
      ),
    );
  }
}
