import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/return_receipt.dart';

class ReturnReceiptDetailScreen extends HookConsumerWidget {
  const ReturnReceiptDetailScreen({
    super.key,
    required this.receipt,
  });
  final ReturnReceipt receipt;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Details"),
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
                      InfoCard(title: "Receipt ID", value: receipt.code),
                      InfoCard(title: "Return Date", value: prettierDateFormat(receipt.returnDate)),
                      InfoCard(title: "Payment Date", value: prettierDateFormat(receipt.paymentDate)),
                      InfoCard(title: "Paid Amount", value: formatter.format(receipt.paidAmount)),
                      InfoCard(title: "Balance", value: formatter.format(receipt.balance)),
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
