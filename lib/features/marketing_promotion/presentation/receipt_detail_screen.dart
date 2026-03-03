import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/info_card.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/receipt.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReceiptDetailScreen extends HookConsumerWidget {
  const ReceiptDetailScreen({
    super.key,
    required this.id,
    required this.receipt,
  });
  final int id;
  final Receipt receipt;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Receive Details"),
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
                      InfoCard(title: "Date", value: prettierDateFormat(receipt.paymentReciveDate)),
                      InfoCard(title: "Invoice ID", value: receipt.invoiceCode),
                      InfoCard(title: "Payment Receive Amount", value: formatter.format(receipt.paymentReceiveAmount)),
                      InfoCard(title: "Description", value: receipt.description),
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
