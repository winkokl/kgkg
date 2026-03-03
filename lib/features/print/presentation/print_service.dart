import 'package:mgkaung_dms_mobile/core/presentation/widgets/loading_overlay.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/invoice_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/payment_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_order_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/domain/sale_return_print_format.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_invoice.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_payment_receive.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_sale_order.dart';
import 'package:mgkaung_dms_mobile/features/print/presentation/print_sale_return.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

String indent(String text, {int level = 13}) {
  return text + " " * (level - text.length);
}

String formatTextForTwoLines(String text, [int maxWidth = 8, int maxLines = 2]) {
  // Estimate the character capacity per line.
  const int charWidthEstimate = 1;
  int maxCharsPerLine = maxWidth ~/ charWidthEstimate;

  if (text.length <= maxCharsPerLine) {
    // Text fits in one line.
    return text;
  } else {
    // Split the text into two lines if it exceeds one line.
    int firstLineEnd = maxCharsPerLine;
    int secondLineEnd = maxCharsPerLine * 2;

    String firstLine = text.substring(0, firstLineEnd);

    if (text.length <= secondLineEnd) {
      // If the text fits within two lines, return it as is.
      String secondLine = text.substring(firstLineEnd);
      return '$firstLine$secondLine';
    } else {
      // If the text exceeds two lines, truncate the second line.
      String secondLine = '${text.substring(firstLineEnd, secondLineEnd - 2)}..';
      return '$firstLine$secondLine';
    }
  }
}

class PrintService {
  static Future<void> _printCutLine() async {
    await SunmiPrinter.bindingPrinter();
    await SunmiPrinter.initPrinter();
    await SunmiPrinter.startTransactionPrint(true);
    await SunmiPrinter.line();
    await SunmiPrinter.lineWrap(3);
    await SunmiPrinter.exitTransactionPrint(true);
  }

  static Future<void> excuteSaleOrder(SaleOrderPrintFormat saleOrderPrintFormat) async {
    LoadingOverlay.show();
    await PrintSaleOrder.print(saleOrderPrintFormat);
    await _printCutLine();
    LoadingOverlay.hide();
  }

  static Future<void> excuteInvoice(InvoicePrintFormat invoicePrintFormat) async {
    LoadingOverlay.show();
    await PrintInvoice.print(invoicePrintFormat);
    await _printCutLine();
    LoadingOverlay.hide();
  }

  static Future<void> excutePayment(PaymentPrintFormat paymentPrintFormat) async {
    LoadingOverlay.show();
    await PrintPayment.print(paymentPrintFormat);
    await _printCutLine();
    LoadingOverlay.hide();
  }

  static Future<void> excuteSaleReturn(SaleReturnPrintFormat saleReturnPrintFormat) async {
    LoadingOverlay.show();
    await PrintSaleReturn.print(saleReturnPrintFormat);
    await _printCutLine();
    LoadingOverlay.hide();
  }
}
