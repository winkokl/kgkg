import 'package:mgkaung_dms_mobile/core/enums/expense_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/filter/filter_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpenseStatusCard extends ConsumerWidget {
  const ExpenseStatusCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expenseStatus = ref.watch(allFiltersProvider.select((value) => value.expenseStatus));
    return FilterCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTextLarge("Expense Type"),
        const SizedBox(height: 24),
        Column(
            children: ExpenseStatus.values
                .where((element) => element.id != ExpenseStatus.all.id)
                .map(
                  (e) => InkWell(
                    onTap: () => ref.read(allFiltersProvider.notifier).setExpenseStatus(e),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: e.index == 2 ? 0 : 30),
                      child: Row(children: [
                        Expanded(child: HeaderTextSmall(e.name, color: e.textColor)),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Transform.scale(
                            scale: 1,
                            child: Checkbox(
                              activeColor: brandColor,
                              value: e.id == expenseStatus.id,
                              onChanged: (bool? value) {
                                ref.read(allFiltersProvider.notifier).setExpenseStatus(e);
                              },
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                )
                .toList()),
      ],
    ));
  }
}
