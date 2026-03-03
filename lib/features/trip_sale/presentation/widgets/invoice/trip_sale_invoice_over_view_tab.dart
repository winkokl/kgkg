import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';

import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TripSaleInvoiceOverViewTab extends ConsumerWidget {
  const TripSaleInvoiceOverViewTab({super.key, required this.tripSaleInvoice});
  final TripSaleInvoice tripSaleInvoice;
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
                  InfoCard(title: "Invoice ID", value: tripSaleInvoice.code),
                  InfoCard(title: "Invoice Date", value: prettierDateFormat(tripSaleInvoice.invoiceDate)),
                  InfoCard(title: "Trip Sale Order ID", value: tripSaleInvoice.saleOrderCode),
                  InfoCard(title: "Due Date", value: prettierDateFormat(tripSaleInvoice.dueDate)),
                  InfoCard(title: "Customer Name", value: tripSaleInvoice.customer.name),
                  InfoCard(title: "Business Unit", value: tripSaleInvoice.businessUnit.name),
                  // InfoCard(
                  //     title: "Trip Sale ID", value: tripSaleInvoice.tripSaleId),
                  InfoCard(title: "Payment Type", value: tripSaleInvoice.paymentType.name),
                  // InfoCard(
                  //     title: "Payment Term",
                  //     value: tripSaleInvoice.paymentTerm.name),
                  // InfoCard(
                  //     title: "Warehouse",
                  //     value: tripSaleInvoice.warehouse.name),
                  InfoCard(
                    title: "Payment History",
                    value: tripSaleInvoice.paymentReceivedHistory.isEmpty ? '0' : formatter.format(tripSaleInvoice.paymentReceivedHistory.map((e) => e.paymentReceiveAmount).reduce((value, element) => value + element)),
                    child: InkWell(
                      onTap: tripSaleInvoice.paymentReceivedHistory.isEmpty
                          ? null
                          : () => ref.watch(goRouterProvider).push(const PaymentHistoryDetailRoute().location,
                              extra: tripSaleInvoice.paymentReceivedHistory
                                  .map((e) => PaymentReceipt(
                                        amount: e.paymentReceiveAmount,
                                        date: e.paymentReciveDate,
                                        code: e.code,
                                      ))
                                  .toList()),
                      child: const Icon(Icons.history, size: 24, color: brandColor),
                    ),
                  ),
                  // InfoCard(title: "Remark", value: tripSaleInvoice.remark),
                  InfoCard(title: "Description", value: tripSaleInvoice.description),
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
