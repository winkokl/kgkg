import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/providers.dart';

class CustomDate extends ConsumerWidget {
  const CustomDate({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: brandColor,
        backgroundColor: bgWhite,
        side: const BorderSide(
          color: brandColor,
        ),
      ),
      onPressed: () async {
        final date = await CustomDatePicker.datePicker(context, "");
        ref.read(selectedDateProvider.notifier).setDate(date);
      },
      child: Text(
        ref.watch(selectedDateProvider),
        // style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
        //   fontWeight: FontWeight.bold,
        // ),
      ),
    );
    // InkWell(
    //   onTap: () async {
    //     final date = await CustomDatePicker.datePicker(context, "");
    //     ref.read(selectedDateProvider.notifier).setDate(date);
    //   },
    //   child: Text(
    //     ref.watch(selectedDateProvider),
    //     style: CustomTheme.appTheme.textTheme.bodyMedium!.copyWith(
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // );
  }
}
