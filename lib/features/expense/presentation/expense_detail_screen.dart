import 'package:mgkaung_dms_mobile/auth/application/permission.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/expense_status.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/module_config.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/expense/application/async_expense_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpenseDetailScreen extends HookConsumerWidget {
  const ExpenseDetailScreen({super.key, required this.expense});
  final Expense expense;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasExpenseModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.expense, MODULE.expenseManagement);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Details"),
        actions: hasExpenseModuleAccess.contains(PERMISSION.update) || hasExpenseModuleAccess.contains(PERMISSION.delete)
            ? [
                CustomPopUpMenuButton(
                  popupMenuEntries: [
                    if (hasExpenseModuleAccess.contains(PERMISSION.update) && expense.status == ExpenseStatus.pending)
                      CustomPopUpMenuItem(
                        title: "Edit",
                        ontap: () {
                          ref.watch(goRouterProvider).push(
                                const ExpenseFormRoute(isEdit: true).location,
                                extra: expense,
                              );
                        },
                        icon: const Icon(Icons.edit_outlined, size: 20),
                      ),
                    if (hasExpenseModuleAccess.contains(PERMISSION.delete) && expense.status == ExpenseStatus.pending)
                      CustomPopUpMenuItem(
                        title: "Delete",
                        textColor: errorColor,
                        ontap: () => CustomDialog.showAsyncDeleteConfirmationDialog(
                          provider: asyncExpenseFormNotifierProvider,
                          onData: (msg) => ref.watch(goRouterProvider).popUntilPath(
                                const ExpenseRoute().location,
                              ),
                          onPressed: () => ref.read(asyncExpenseFormNotifierProvider.notifier).deleteExpense(expense.id),
                        ),
                        isLast: true,
                        icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
                      )
                  ],
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: whiteContainerDecoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      InfoCard(
                        title: "Status",
                        value: expense.status.name,
                        textColor: expense.status.textColor,
                      ),
                      InfoCard(title: "Expense ID", value: expense.code),
                      InfoCard(title: "Date", value: prettierDateFormat(expense.date)),
                      InfoCard(title: "Expense Type", value: expense.type.name),
                      // if (expense.status == ExpenseStatus.accept ||
                      //     expense.status == ExpenseStatus.pending)
                      InfoCard(
                        title: "Request Amount",
                        value: formatter.format(expense.requestAmount),
                      ),
                      // if (expense.status == ExpenseStatus.accept)
                      InfoCard(
                        title: "Expense Amount",
                        value: formatter.format(expense.expenseAmount),
                      ),
                      if (expense.status == ExpenseStatus.reject) ...[
                        // InfoCard(
                        //   title: "Amount",
                        //   value: formatter.format(expense.expenseAmount),
                        // ),
                        InfoCard(
                          title: "Reason",
                          value: expense.reason,
                        ),
                      ],
                      // InfoCard(
                      //   title: "Remark",
                      //   value: expense.remark,
                      // ),
                      InfoCard(
                        title: "Description",
                        value: expense.description,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
