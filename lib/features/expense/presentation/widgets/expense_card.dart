import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/list_tile_card.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpenseCard extends ConsumerWidget {
  const ExpenseCard({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileCard(
      ontap: () => ref.watch(goRouterProvider).push(const ExpenseDetailRoute(id: "id").location, extra: expense),
      titleWidget: Row(
        children: [
          Flexible(child: HeaderTextLarge(expense.code, color: Colors.black)),
          const Text(" | ", style: TextStyle(fontSize: 16, color: Color(0xffE2E4E8))),
          Flexible(
            child: HeaderTextSmall(prettierDateFormat(expense.date), color: const Color.fromARGB(200, 35, 121, 219)),
          ),
        ],
      ),
      // titleWidget: HeaderText(expense.user.name.trim().isEmpty ? expense.user.userName : expense.user.name),
      subtitleWidgets: [
        const SizedBox(height: 6),
        Row(
          children: [
            const Flexible(
              child: HeaderTextSmall("Request Amount :", color: Colors.black45),
            ),
            const SizedBox(width: 4),
            Flexible(
              child: HeaderTextSmall("${expense.requestAmount ?? 0} MMK", color: Colors.black26),
            )
          ],
        ),
        Row(
          children: [
            const Flexible(
              child: HeaderTextSmall("Approved Amount :", color: Colors.black45),
            ),
            const SizedBox(width: 4),
            Flexible(
              child: HeaderTextSmall("${expense.expenseAmount ?? 0} MMK", color: Colors.black26),
            )
          ],
        ),
        // HeaderTextSmall("Request Amount: ${expense.requestAmount ?? 0} MMK", color: brandColor),
        // HeaderTextSmall("Approved Amount: ${expense.expenseAmount ?? 0} MMK", color: brandColor),
        // Row(
        //   children: [

        //   ],
        // ),
      ],
      trailingWidget: DecoratedContainer(
        height: 25,
        width: 80,
        color: expense.status.fillColor,
        border: Border.all(color: expense.status.textColor),
        radius: 6,
        child: HeaderTextSmall(
          expense.status.name,
          color: expense.status.textColor,
        ),
      ),
    );
  }
}
