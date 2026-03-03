import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service_v2.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/signature_image.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_receipt.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySalePaymentReceiveDetailScreen extends HookConsumerWidget {
  const SecondarySalePaymentReceiveDetailScreen({super.key, required this.secondarySaleReceipt});
  final SecondarySaleReceipt secondarySaleReceipt;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final hasPRModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.paymentReceive, MODULE.secondarySalesOrder);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Details"),
        actions: [
          CustomPopUpMenuButton(
            popupMenuEntries: [
              // if (hasPRModuleAccess.contains(PERMISSION.delete))
              //   CustomPopUpMenuItem(
              //     title: "Delete",
              //     textColor: errorColor,
              //     ontap: () => CustomDialog.showDeleteWitReasonDialog(
              //         provider: asyncSecondarySaleFormNotifierProvider,
              //         onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const SecondarySaleRoute().location),
              //         onPressed: (v) {
              //           ref.read(asyncSecondarySaleFormNotifierProvider.notifier).deletePayment(secondarySaleReceipt.id, v);
              //         }),
              //     isLast: true,
              //     icon: const Icon(Icons.delete_outline_rounded, size: 20, color: errorColor),
              //   ),
              CustomPopUpMenuItem(
                title: "Print",
                isLast: true,
                textColor: brandColor,
                ontap: () async {
                  await PrintServiceV2.excutePayment(
                    context,
                    PaymentPrintFormat(
                      invoiceID: secondarySaleReceipt.invoiceCode,
                      receiveDate: secondarySaleReceipt.paymentReciveDate,
                      receiveID: secondarySaleReceipt.code,
                      paymentAmount: secondarySaleReceipt.paymentReceiveAmount,
                      paymentMethod: secondarySaleReceipt.paymentMethod.name,
                    ),
                  );
                },
                icon: const Icon(Icons.print_outlined, size: 20, color: brandColor),
              ),
            ],
          )
        ],
      ),
      body: AsyncValueWidget(
        errorCallback: () => ref.invalidate(paymentReceiveByIdProvider(secondarySaleReceipt.id)),
        value: ref.watch(paymentReceiveByIdProvider(secondarySaleReceipt.id)),
        data: (data) => Padding(
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
                        InfoCard(title: "Payment Receive ID", value: secondarySaleReceipt.code),
                        InfoCard(title: "Payment Receive Date", value: secondarySaleReceipt.paymentReciveDate),
                        InfoCard(title: "Good Issue Date", value: secondarySaleReceipt.goodIssueDate),
                        InfoCard(title: "Invoice ID", value: secondarySaleReceipt.invoiceCode),
                        InfoCard(title: "Payment Method", value: data.paymentMethod.name),
                        InfoCard(title: "Payment Receive Amount", value: formatter.format(secondarySaleReceipt.paymentReceiveAmount)),
                        InfoCard(title: "Description", value: data.description),
                        SignatureImage(imageUrl: data.signUrl),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
