import 'package:intl/intl.dart';
import 'package:mgkaung_dms_mobile/features/core/helpers/get_image_from_asset.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_return_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_service.dart';
import 'package:flutter/services.dart';
import 'package:sunmi_printer_plus/column_maker.dart';
import 'package:sunmi_printer_plus/enums.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';
import 'package:sunmi_printer_plus/sunmi_style.dart';

class PrintSaleReturn {
  static final formatter = NumberFormat.decimalPatternDigits(locale: 'en_us');

  static Future<void> print(SaleReturnPrintFormat saleReturn) async {
    await SunmiPrinter.bindingPrinter();
    await SunmiPrinter.initPrinter();
    Uint8List byte = await getImageFromAsset('assets/images/logo.png');
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

    // SaleReturn title
    await SunmiPrinter.printText(
      'Sale Return',
      style: SunmiStyle(fontSize: SunmiFontSize.LG, bold: true),
    );

    await SunmiPrinter.lineWrap(1);

    await SunmiPrinter.setAlignment(SunmiPrintAlign.LEFT);
    await SunmiPrinter.printText(
      ('${indent('Return ID :')}${saleReturn.code}'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.printText(
      ('${indent('Date :')}${saleReturn.date}'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );

    if (saleReturn.invoiceCode.isNotEmpty) {
      await SunmiPrinter.printText(
        ('${indent('Invoice ID :')}${saleReturn.invoiceCode}'),
        style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
      );
    }

    if (saleReturn.contractCode.isNotEmpty) {
      await SunmiPrinter.printText(
        ('${indent('Contract ID :')}${saleReturn.contractCode}'),
        style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
      );
    }

    await SunmiPrinter.line();

    await SunmiPrinter.bold();
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: 'Item', width: 21, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: 'Price', width: 5, align: SunmiPrintAlign.CENTER),
      ColumnMaker(text: 'Qty', width: 4, align: SunmiPrintAlign.RIGHT),
      // ColumnMaker(text: 'Amount', width: 8, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.lineWrap(1);

    for (var i = 0; i < saleReturn.products.length; i++) {
      final p = saleReturn.products[i];
      await SunmiPrinter.setFontSize(SunmiFontSize.MD);
      // await SunmiPrinter.bold();
      await SunmiPrinter.printRow(cols: [
        ColumnMaker(text: formatTextForTwoLines(p.name), width: 21, align: SunmiPrintAlign.LEFT),
        ColumnMaker(text: formatter.format(p.salePrice), width: 5, align: SunmiPrintAlign.CENTER),
        ColumnMaker(text: '${p.returnQty}', width: 4, align: SunmiPrintAlign.CENTER),
        // ColumnMaker(text: formatter.format(p.salePrice * p.returnQty), width: 8, align: SunmiPrintAlign.RIGHT),
      ]);
      await SunmiPrinter.lineWrap(1);
    }
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 6, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'SubTotal :', width: 15, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(saleReturn.subtotal), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 6, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'Other :', width: 15, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(saleReturn.otherCharges), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 6, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'Grand Total :', width: 15, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(saleReturn.grandTotal), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);
    await SunmiPrinter.printRow(cols: [
      ColumnMaker(text: '', width: 6, align: SunmiPrintAlign.RIGHT),
      ColumnMaker(text: 'Return Deduct :', width: 15, align: SunmiPrintAlign.LEFT),
      ColumnMaker(text: formatter.format(saleReturn.returnDeductAmount), width: 10, align: SunmiPrintAlign.RIGHT),
    ]);

    await SunmiPrinter.line();

    await SunmiPrinter.printText(
      ('Return Total'),
      style: SunmiStyle(
        fontSize: SunmiFontSize.MD,
        bold: true,
        align: SunmiPrintAlign.RIGHT,
      ),
    );

    await SunmiPrinter.printText(
      (formatter.format(saleReturn.totalReturnAmount)),
      style: SunmiStyle(
        fontSize: SunmiFontSize.LG,
        bold: true,
        align: SunmiPrintAlign.RIGHT,
      ),
    );
    await SunmiPrinter.lineWrap(2);

    await SunmiPrinter.setAlignment(SunmiPrintAlign.CENTER);

    // SaleOrder term
    await SunmiPrinter.printText(
      ('Thank you!'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.exitTransactionPrint(true);
  }
}
