import 'package:intl/intl.dart';
import 'package:mgkaung_dms_mobile/features/core/helpers/get_image_from_asset.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:flutter/services.dart';
import 'package:sunmi_printer_plus/enums.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';
import 'package:sunmi_printer_plus/sunmi_style.dart';

class PrintPayment {
  static final formatter = NumberFormat.decimalPatternDigits(locale: 'en_us');

  static Future<void> print(PaymentPrintFormat payment) async {
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

    // Payment title
    await SunmiPrinter.printText(
      'Payment',
      style: SunmiStyle(fontSize: SunmiFontSize.LG, bold: true),
    );

    await SunmiPrinter.lineWrap(1);

    // Customer Information
    await SunmiPrinter.setAlignment(SunmiPrintAlign.LEFT);
    await SunmiPrinter.printText(
      ('Payment Receive ID'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD),
    );
    await SunmiPrinter.printText(
      (payment.receiveID),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.lineWrap(1);

    await SunmiPrinter.printText(
      ('Payment Receive Date'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD),
    );
    await SunmiPrinter.printText(
      (payment.receiveDate),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.lineWrap(1);

    if (payment.paymentMethod.isNotEmpty) {
      await SunmiPrinter.printText(
        ('Payment Method'),
        style: SunmiStyle(fontSize: SunmiFontSize.MD),
      );
      await SunmiPrinter.printText(
        (payment.paymentMethod),
        style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
      );
      await SunmiPrinter.lineWrap(1);
    }

    if (payment.invoiceID.isNotEmpty) {
      await SunmiPrinter.printText(
        ('Invoice ID'),
        style: SunmiStyle(fontSize: SunmiFontSize.MD),
      );
      await SunmiPrinter.printText(
        (payment.invoiceID),
        style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
      );
      await SunmiPrinter.lineWrap(1);
    }

    await SunmiPrinter.printText(
      ('Payment Receive Amount'),
      style: SunmiStyle(fontSize: SunmiFontSize.MD),
    );
    await SunmiPrinter.printText(
      (formatter.format(payment.paymentAmount)),
      style: SunmiStyle(fontSize: SunmiFontSize.MD, bold: true),
    );
    await SunmiPrinter.lineWrap(1);

    await SunmiPrinter.exitTransactionPrint(true);
  }
}
