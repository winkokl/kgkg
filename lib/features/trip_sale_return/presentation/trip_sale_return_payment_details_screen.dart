import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/async_value_widget.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service_v2.dart';
import 'package:mgkaung_dms_mobile/features/sale/presentation/widgets/signature_image.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/application/providers.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return_receipt.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleReturnPaymentDetailScreen extends ConsumerWidget {
  const TripSaleReturnPaymentDetailScreen({super.key, required this.saleReturnReceipt});
  final TripSaleReturnReceipt saleReturnReceipt;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final hasPRModuleAccess = ref.watch(permissionProvider.notifier).hasAccessToModule(SUBMODULE.makePayment, MODULE.tripReturn);

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
              //     ontap: () => CustomDialog.showDeleteWitReasonDialog(provider: asyncTripSaleReturnFormNotifierProvider, onData: (msg) => ref.watch(goRouterProvider).popUntilPath(const TripSaleReturnRoute().location), onPressed: (v) => ref.read(asyncTripSaleReturnFormNotifierProvider.notifier).deletePayment(saleReturnReceipt.id, v)),
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
                      invoiceID: saleReturnReceipt.invoiceCode,
                      receiveDate: prettierDateFormat(saleReturnReceipt.paymentDate),
                      receiveID: saleReturnReceipt.code,
                      paymentAmount: saleReturnReceipt.paidAmount,
                      paymentMethod: saleReturnReceipt.paymentMethod.name,
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
        errorCallback: () => ref.invalidate(paymentReceiveByIdProvider(saleReturnReceipt.id)),
        value: ref.watch(paymentReceiveByIdProvider(saleReturnReceipt.id)),
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
                        InfoCard(title: "Trip Sale Return ID", value: saleReturnReceipt.code),
                        InfoCard(title: "Return Date", value: prettierDateFormat(saleReturnReceipt.returnDate)),
                        InfoCard(title: "Payment Date", value: prettierDateFormat(saleReturnReceipt.paymentDate)),
                        InfoCard(title: "Payment Method", value: saleReturnReceipt.paymentMethod.name),
                        InfoCard(title: "Total Return Amount", value: formatter.format(saleReturnReceipt.totalReturnAmount)),
                        InfoCard(title: "Paid Amount", value: formatter.format(saleReturnReceipt.paidAmount)),
                        InfoCard(title: "Balance", value: formatter.format(saleReturnReceipt.balance)),
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
