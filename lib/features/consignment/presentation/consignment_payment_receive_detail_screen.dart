import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/features/consignment/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_receipt.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service_v2.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/signature_image.dart';

class ConsignmentPaymentReceiveDetailScreen extends ConsumerWidget {
  const ConsignmentPaymentReceiveDetailScreen({super.key, required this.consignmentReceipt});
  final ConsignmentReceipt consignmentReceipt;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final hasPRModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.paymentReceive, MODULE.consignment);

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
              //         provider: asyncConsignmentFormNotifierProvider,
              //         onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const ConsignmentRoute().location),
              //         onPressed: (v) {
              //           ref.read(asyncConsignmentFormNotifierProvider.notifier).deletePayment(consignmentReceipt.id, v);
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
                      invoiceID: consignmentReceipt.invoiceCode,
                      receiveDate: consignmentReceipt.paymentReciveDate,
                      receiveID: consignmentReceipt.code,
                      paymentAmount: consignmentReceipt.paymentReceiveAmount,
                      paymentMethod: consignmentReceipt.paymentMethod.name,
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
        errorCallback: () => ref.invalidate(paymentReceiveByIdProvider(consignmentReceipt.id)),
        value: ref.watch(paymentReceiveByIdProvider(consignmentReceipt.id)),
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
                        InfoCard(title: "Payment Receive ID", value: consignmentReceipt.code),
                        InfoCard(title: "Payment Receive Date", value: prettierDateFormat(consignmentReceipt.paymentReciveDate)),
                        InfoCard(title: "Invoice ID", value: consignmentReceipt.invoiceCode),
                        InfoCard(title: "Customer Name", value: consignmentReceipt.customerName),
                        InfoCard(title: "Business Unit Name", value: consignmentReceipt.businessUnitName),
                        InfoCard(title: "Payment Method", value: consignmentReceipt.paymentMethod.name),
                        InfoCard(title: "Payment Receive Amount", value: formatter.format(consignmentReceipt.paymentReceiveAmount)),
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
