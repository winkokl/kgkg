import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'date_widget.dart';
import 'filter_card.dart';

class DateCard extends ConsumerWidget {
  const DateCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fromDate = ref.watch(allFiltersProvider.select((value) => value.fromDate));
    final toDate = ref.watch(allFiltersProvider.select((value) => value.toDate));

    return FilterCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderTextLarge("Date"),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  child: DateWidget(
                value: fromDate.isEmpty ? "From Date" : prettierDateFormat(fromDate),
                ontap: () async {
                  final newFromDate = await CustomDatePicker.datePicker(context, fromDate);
                  if (newFromDate != null) {
                    ref.read(allFiltersProvider.notifier).setFromDate(newFromDate);
                  }
                },
              )),
              const SizedBox(width: 20),
              Expanded(
                  child: DateWidget(
                value: toDate.isEmpty ? 'To Date' : prettierDateFormat(toDate),
                ontap: () async {
                  final newtoDate = await CustomDatePicker.datePicker(context, toDate);
                  if (newtoDate != null) {
                    ref.read(allFiltersProvider.notifier).setToDate(newtoDate);
                  }
                },
              ))
            ],
          )
        ],
      ),
    );
  }
}
