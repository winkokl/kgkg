import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsignmentInvoiceOverViewTab extends ConsumerWidget {
  const ConsignmentInvoiceOverViewTab({super.key, required this.consignmentInvoice});
  final ConsignmentInvoice consignmentInvoice;
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
                  InfoCard(title: "Invoice ID", value: consignmentInvoice.code),
                  InfoCard(title: "Invoice Date", value: prettierDateFormat(consignmentInvoice.invoiceDate)),
                  InfoCard(title: "Due Date", value: prettierDateFormat(consignmentInvoice.dueDate)),
                  InfoCard(title: "Customer Name", value: consignmentInvoice.customer.name),
                  InfoCard(title: 'Business Unit', value: consignmentInvoice.businessUnit.name),
                  InfoCard(title: 'Distribution Region Name', value: consignmentInvoice.region.name),
                  InfoCard(title: "Consignment ID", value: consignmentInvoice.consignmentCode),
                  InfoCard(title: "Payment Type", value: consignmentInvoice.paymentType.name),
                  InfoCard(
                    title: "Payment History",
                    value: consignmentInvoice.paymentReceivedHistory.isEmpty ? '0' : formatter.format(consignmentInvoice.paymentReceivedHistory.map((e) => e.paymentReceiveAmount).reduce((value, element) => value + element)),
                    child: InkWell(
                      onTap: consignmentInvoice.paymentReceivedHistory.isEmpty
                          ? null
                          : () => ref.watch(goRouterProvider).push(const PaymentHistoryDetailRoute().location,
                              extra: consignmentInvoice.paymentReceivedHistory
                                  .map((e) => PaymentReceipt(
                                        amount: e.paymentReceiveAmount,
                                        date: e.paymentReciveDate,
                                        code: e.code,
                                      ))
                                  .toList()),
                      child: const Icon(Icons.history, size: 24, color: brandColor),
                    ),
                  ),
                  // InfoCard(title: "Remark", value: consignmentInvoice.remark),
                  InfoCard(title: "Description", value: consignmentInvoice.description),
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
