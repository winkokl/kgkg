import 'package:flutter/services.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/validators/form_validators.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_date_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/features/expense/application/async_expense_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/expense/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense.dart';
import 'package:mgkaung_dms_mobile/features/expense/domain/expense_type.dart';
import 'package:mgkaung_dms_mobile/features/home/application/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExpenseFormScreen extends HookConsumerWidget {
  const ExpenseFormScreen({
    super.key,
    required this.isEdit,
    this.expense = const Expense(),
  });

  final bool isEdit;
  final Expense expense;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = useState(expense.date);
    final type = useState(expense.type);
    final requestAmountController = useTextEditingController(text: '${expense.requestAmount == 0 ? "0" : expense.requestAmount}');
    final remarkController = useTextEditingController(text: expense.remark);
    final descriptionController = useTextEditingController(text: expense.description);

    ref.listenX(
      provider: asyncExpenseFormNotifierProvider,
      onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const ExpenseRoute().location),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("${isEdit ? "Edit" : "Add New"} Expense"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  decoration: whiteContainerDecoration,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Date *",
                              hintText: "Select Date",
                              key: UniqueKey(),
                              isReadOnly: true,
                              validator: FormValidators.requiredValidator().call,
                              initialValue: prettierDateFormat(date.value),
                              ontap: () async {
                                final selectedDate = await CustomDatePicker.datePicker(context, date.value);
                                date.value = selectedDate ?? "";
                              },
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              label: "Expense Type *",
                              hintText: "Select Expense Type",
                              key: UniqueKey(),
                              isReadOnly: true,
                              validator: FormValidators.requiredValidator().call,
                              initialValue: type.value.name,
                              ontap: () async {
                                await CustomPicker.modalSheetPicker<ExpenseType>(
                                  context: context,
                                  onSelect: (v) => type.value = v,
                                  display: (v) => v.name,
                                  currentValue: type.value,
                                  futureProvider: expenseTypesProvider,
                                  errorCallback: () => ref.invalidate(expenseTypesProvider),
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            FormTextInput(
                              validator: FormValidators.numericValidator().call,
                              label: "Request Amount",
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
                              controller: requestAmountController,
                            ),
                            const SizedBox(height: 20),
                            // FormTextInput(
                            //   validator: FormValidators.requiredValidator().call,
                            //   label: "Remark",
                            //   controller: remarkController,
                            //   maxlines: 4,
                            //   minlines: 3,
                            //   keyboardType: TextInputType.multiline,
                            // ),
                            // const SizedBox(height: 20),
                            FormTextInput(
                              validator: FormValidators.requiredValidator().call,
                              label: "Description *",
                              controller: descriptionController,
                              maxlines: 4,
                              minlines: 3,
                              keyboardType: TextInputType.multiline,
                            ),
                            const SizedBox(height: 20),
                          ],
                        )),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: bgWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ActionButton(
                  label: "Submit",
                  onPressed: () {
                    if (formKey.currentState!.validate() == true) {
                      formKey.currentState!.save();
                      final newExpense = Expense(
                        id: expense.id,
                        user: expense.user.copyWith(id: ref.watch(userInfoProvider).requireValue.id),
                        date: date.value,
                        type: type.value,
                        requestAmount: requestAmountController.text.toDouble(),
                        remark: remarkController.text,
                        description: descriptionController.text,
                      );
                      if (isEdit) {
                        ref.read(asyncExpenseFormNotifierProvider.notifier).updateExpense(newExpense);
                      } else {
                        ref.read(asyncExpenseFormNotifierProvider.notifier).createExpense(newExpense);
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
