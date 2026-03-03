import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/routing/router.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';

class InvoiceOverViewTab extends ConsumerWidget {
  const InvoiceOverViewTab({
    super.key,
    required this.invoice,
  });
  final Invoice invoice;
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
                  InfoCard(title: "Invoice ID", value: invoice.code),
                  InfoCard(title: "Date", value: invoice.invoiceDate),
                  InfoCard(title: "Due Date", value: prettierDateFormat(invoice.dueDate)),
                  InfoCard(title: "Promotion Name", value: invoice.marketingPromotionPlan.name),
                  InfoCard(title: "Customer Name", value: invoice.marketingPromotionPlan.customerName),
                  InfoCard(title: "Business Unit", value: invoice.marketingPromotionPlan.businessUnitName),
                  InfoCard(title: "Eligible Duration for Bonus", value: '${invoice.marketingPromotionPlan.bonusDuration}'),
                  InfoCard(title: "Eligible Duration for Cashback", value: '${invoice.marketingPromotionPlan.cashbackDuration}'),
                  InfoCard(
                    title: "Payment History",
                    value: invoice.paymentReceivedHistory.isEmpty ? '0' : formatter.format(invoice.paymentReceivedHistory.map((e) => e.paymentReceiveAmount).reduce((value, element) => value + element)),
                    child: InkWell(
                      onTap: invoice.paymentReceivedHistory.isEmpty
                          ? null
                          : () => ref.watch(goRouterProvider).push(const PaymentHistoryDetailRoute().location,
                              extra: invoice.paymentReceivedHistory
                                  .map((e) => PaymentReceipt(
                                        amount: e.paymentReceiveAmount,
                                        date: e.paymentReciveDate,
                                        code: e.code,
                                      ))
                                  .toList()),
                      child: const Icon(Icons.history, size: 24, color: brandColor),
                    ),
                  ),
                  InfoCard(title: "Status", value: invoice.paymentStatus.name, textColor: invoice.paymentStatus.textColor),
                  InfoCard(title: "Description", value: invoice.description),
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
