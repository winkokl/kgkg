import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_receipt.dart';
import 'package:flutter/material.dart';

class PaymentHistoryDetailScreen extends StatelessWidget {
  const PaymentHistoryDetailScreen({
    super.key,
    required this.paymentReceipts,
  });
  final List<PaymentReceipt> paymentReceipts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment History Detail")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: 440,
            child: SingleChildScrollView(
              child: DataTable(
                  columnSpacing: 40,
                  border: TableBorder.symmetric(outside: const BorderSide(color: Color(0xffDFDFDF))),
                  dataRowColor: MaterialStateProperty.all(bgWhite),
                  headingRowColor: MaterialStateProperty.all(const Color(0xffFBFAFA)),
                  columns: const [
                    DataColumn(label: Flexible(child: HeaderText('Payment Receive ID'))),
                    DataColumn(label: Flexible(child: HeaderText('Payment Receive Date'))),
                    DataColumn(label: Flexible(child: HeaderText('Payment Receive Amount'))),
                  ],
                  rows: List.generate(paymentReceipts.length + 1, (index) {
                    if (index == paymentReceipts.length) {
                      return DataRow(color: MaterialStateProperty.all(const Color(0xffF0F2F5)), cells: [
                        const DataCell(HeaderText('Total :')),
                        const DataCell(HeaderText("")),
                        DataCell(
                          HeaderText(formatter.format(
                            paymentReceipts.map((e) => e.amount).reduce((value, element) => value + element),
                          )),
                        ),
                      ]);
                    }
                    return DataRow(cells: [
                      DataCell(HeaderText(paymentReceipts[index].code)),
                      DataCell(HeaderText(paymentReceipts[index].date)),
                      DataCell(HeaderText(formatter.format(paymentReceipts[index].amount))),
                    ]);
                  })),
            ),
          ),
        ),
      ),
    );
  }
}
