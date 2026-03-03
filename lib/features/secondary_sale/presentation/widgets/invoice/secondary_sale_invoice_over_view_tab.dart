import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondarySaleInvoiceOverViewTab extends ConsumerWidget {
  const SecondarySaleInvoiceOverViewTab({super.key, required this.secondarySaleInvoice});
  final SecondarySaleInvoice secondarySaleInvoice;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            decoration: whiteContainerDecoration,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  InfoCard(title: "Invoice ID", value: secondarySaleInvoice.code),
                  InfoCard(title: "Sale Order ID", value: secondarySaleInvoice.saleOrderCode),
                  InfoCard(title: "Delivery Date", value: prettierDateFormat(secondarySaleInvoice.deliveryDate)),
                  InfoCard(title: "Invoice Date", value: prettierDateFormat(secondarySaleInvoice.invoiceDate)),
                  InfoCard(title: "Due Date", value: prettierDateFormat(secondarySaleInvoice.dueDate)),
                  InfoCard(title: "Customer Name", value: secondarySaleInvoice.customer.name),
                  InfoCard(title: "Business Unit Name", value: secondarySaleInvoice.businessUnit.name),
                  InfoCard(title: "Payment Type", value: secondarySaleInvoice.paymentType.name),
                  InfoCard(title: "Payment Term", value: secondarySaleInvoice.paymentTerm.name),
                  // InfoCard(title: "Warehouse", value: secondarySaleInvoice.warehouse.name),
                  InfoCard(
                    title: "Payment History",
                    value: secondarySaleInvoice.paymentReceivedHistory.isEmpty
                        ? '0'
                        : formatter.format(
                            secondarySaleInvoice.paymentReceivedHistory.map((e) => e.paymentReceiveAmount).reduce((value, element) => value + element),
                          ),
                    child: InkWell(
                      onTap: secondarySaleInvoice.paymentReceivedHistory.isEmpty
                          ? null
                          : () => ref.watch(goRouterProvider).push(const PaymentHistoryDetailRoute().location,
                              extra: secondarySaleInvoice.paymentReceivedHistory
                                  .map((e) => PaymentReceipt(
                                        amount: e.paymentReceiveAmount,
                                        date: e.paymentReciveDate,
                                        code: e.code,
                                      ))
                                  .toList()),
                      child: const Icon(Icons.history, size: 24, color: brandColor),
                    ),
                  ),
                  // InfoCard(title: "Remark", value: secondarySaleInvoice.remark),
                  InfoCard(title: "Description", value: secondarySaleInvoice.description),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
