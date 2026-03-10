import 'package:intl/intl.dart';
import 'package:mgkaung_dms_mobile/features/core/helpers/get_image_from_asset.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/invoice_print_format.dart';
import 'package:flutter/services.dart';
import 'package:sunmi_printer_plus/column_maker.dart';
import 'package:sunmi_printer_plus/enums.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';
import 'package:sunmi_printer_plus/sunmi_style.dart';

class PrintInvoice {
  static final formatter = NumberFormat.decimalPatternDigits(locale: 'en_us');

  static Future<void> print(InvoicePrintFormat invoice) async {
    await SunmiPrinter.bindingPrinter();
    await SunmiPrinter.initPrinter();
    Uint8List byte = await getResizedImageFromAsset('assets/images/logo.png', targetWidth: 200);
    await SunmiPrinter.startTransactionPrint(true);

    await SunmiPrinter.setAlignment(SunmiPrintAlign.CENTER);

    await SunmiPrinter.printImage(byte);

    await SunmiPrinter.lineWrap(1);
    // Print logo and company name
    await SunmiPrinter.printText(
      ' Mg Kaung',
      style: SunmiStyle(
        fontSize: SunmiFontSize.LG,
        bold: true,
        align: SunmiPrintAlign.CENTER,
      ),
    );

    await SunmiPrinter.printText(
      'Distribution Company Limited',
      style: SunmiStyle(
        fontSize: SunmiFontSize.MD,
        bold: true,
        align: SunmiPrintAlign.CENTER,
      ),
    );

    await SunmiPrinter.lineWrap(2);

    // Invoice title
    await SunmiPrinter.printText(
      'Invoice',
      style: SunmiStyle(fontSize: SunmiFontSize.LG, bold: true),
    );

    await SunmiPrinter.lineWrap(1);

    // Customer Information
    await SunmiPrinter.setAlignment(SunmiPrintAlign.LEFT);
    await SunmiPrinter.printText(
      ('${indent('Billed To :')}${invoice.customerName}'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    //
    await SunmiPrinter.printText(
      ('${indent('Invoice No. :')}${invoice.code}'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.printText(
      ('${indent('Date :')}${invoice.date}'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.printText(
      ('${indent('Due Date :')}${invoice.dueDate}'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.line();

    await SunmiPrinter.bold();
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: 'Item', width: 21, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: 'Price', width: 5, align: SunmiPrintAlign.CENTER),
      ColumnMaker(text: 'Qty', width: 4, align: SunmiPrintAlign.RIGHT),
      // ColumnMaker(text: 'Amount', width: 8, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.lineWrap(1);

    for (var i = 0; i < invoice.products.length; i++) {
      final p = invoice.products[i];
      await SunmiPrinter.setFontSize(SunmiFontSize.MD);
      // await SunmiPrinter.bold();
      await SunmiPrinter.printRow(cols: [
        ColumnMaker(text: formatTextForTwoLines(p.name), width: 21, align: SunmiPrintAlign.LEFT),
        ColumnMaker(text: formatter.format(p.salePrice), width: 5, align: SunmiPrintAlign.CENTER),
        ColumnMaker(text: '${p.quantity}', width: 4, align: SunmiPrintAlign.CENTER),
        // ColumnMaker(text: formatter.format(p.amount), width: 8, align: SunmiPrintAlign.RIGHT),
      ]);
      await SunmiPrinter.lineWrap(1);
    }
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 11, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'SubTotal :', width: 10, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(invoice.subtotal), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 11, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'Discount :', width: 10, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(invoice.discount), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 11, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'Tax :', width: 10, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(invoice.tax), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 11, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'Other :', width: 10, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(invoice.otherCharges), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);
    // Subtotal, Discount, Tax, Other Charges, Total
    // await SunmiPrinter.printText(
    //   ('${indent('SubTotal :')}${formatter.format(invoice.subtotal)}'),
    //   style: SunmiStyle(
    //     fontSize: SunmiFontSize.MD,
    //     bold: true,
    //     align: SunmiPrintAlign.RIGHT,
    //   ),
    // );

    // await SunmiPrinter.printText(
    //   ('${indent('Discount :')}${formatter.format(invoice.discount)}'),
    //   style: SunmiStyle(
    //     fontSize: SunmiFontSize.MD,
    //     bold: true,
    //     align: SunmiPrintAlign.RIGHT,
    //   ),
    // );

    // await SunmiPrinter.printText(
    //   ('${indent('Tax :')}${formatter.format(invoice.tax)}'),
    //   style: SunmiStyle(
    //     fontSize: SunmiFontSize.MD,
    //     bold: true,
    //     align: SunmiPrintAlign.RIGHT,
    //   ),
    // );

    // await SunmiPrinter.printText(
    //   ('${indent('Other Charges :')}${formatter.format(invoice.otherCharges)}'),
    //   style: SunmiStyle(
    //     fontSize: SunmiFontSize.MD,
    //     bold: true,
    //     align: SunmiPrintAlign.RIGHT,
    //   ),
    // );

    // Separator line
    await SunmiPrinter.line();

    await SunmiPrinter.setAlignment(SunmiPrintAlign.RIGHT);

    // Total
    await SunmiPrinter.printText(
      ('Invoice Grand Total'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.setAlignment(SunmiPrintAlign.RIGHT);

    await SunmiPrinter.printText(
      (formatter.format(invoice.grandTotal)),
      style: SunmiStyle(fontSize: SunmiFontSize.LG, bold: true),
    );

    await SunmiPrinter.lineWrap(2);

    await SunmiPrinter.setAlignment(SunmiPrintAlign.CENTER);

    // Invoice term
    if (invoice.paymentTerm.isNotEmpty) {
      await SunmiPrinter.printText(
        ('Invoice Term'),
        style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
      );

      await SunmiPrinter.printText(
        ('Please Pay your Invoice by\n ${invoice.paymentTerm} days'),
        style: SunmiStyle(
          fontSize: SunmiFontSize.MD,
          bold: true,
          align: SunmiPrintAlign.CENTER,
        ),
      );
    }

    await SunmiPrinter.exitTransactionPrint(true);
  }
}
