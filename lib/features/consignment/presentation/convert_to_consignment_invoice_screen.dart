import 'package:mgkaung_dms_mobile/core/extensions/go_router_extension.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/dialog/custom_dialog.dart';
import 'package:mgkaung_dms_mobile/features/core/application/indicator_notifer.dart';
import 'package:mgkaung_dms_mobile/features/customer/presentation/widgets/indicator_widget.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/display_total_widget.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/async_consignment_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/consignment_invoice_form_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/presentation/widgets/invoice/consignment_invoice_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/print/helpers/print_functions_v2.dart';

class ConvertToConsignmentInvoiceScreen extends ConsumerWidget {
  const ConvertToConsignmentInvoiceScreen({
    super.key,
    required this.isEdit,
  });

  final bool isEdit;

  static final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicatorValue = ref.watch(indicatorNotifierProvider);

    ref.listenX(
      provider: asyncConsignmentFormNotifierProvider,
      onData: (res) => CustomDialog.showDoneAndPrintDialog(
        msg: res.message ?? '',
        doneOnPressed: () {
          ref.watch(goRouterProvider).popUntilPath(const ConsignmentRoute().location);
        },
        printOnPressed: () async => await printConsignmentInvoiceV2(context, res.data),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Invoice" : "Convert to Invoice"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 15),
            const IndicatorWidget(length: 2),
            const SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: indicatorValue == 0 ? ConsignmentInvoiceFormWidget(isEdit: isEdit) : const DisplayTotalWidget(isReadOnly: true),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: bgWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  children: [
                    ActionButton(
                      label: indicatorValue == 0 ? "Next" : "Submit",
                      onPressed: () {
                        if (formKey.currentState!.validate() == true) {
                          formKey.currentState!.save();
                          if (indicatorValue == 0) {
                            ref.read(indicatorNotifierProvider.notifier).setValue(1);
                          } else {
                            final invoice = ref.watch(consignmentInvoiceFormNotifierProvider);
                            if (isEdit) {
                              ref.read(asyncConsignmentFormNotifierProvider.notifier).updateConsignmentInvoice(invoice);
                            } else {
                              ref.read(asyncConsignmentFormNotifierProvider.notifier).convertToInvoice(invoice);
                            }
                          }
                        }
                      },
                    ),
                    if (indicatorValue != 0)
                      TextButton(
                        onPressed: () => ref.read(indicatorNotifierProvider.notifier).setValue(indicatorValue - 1),
                        child: const Text("Previous"),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
