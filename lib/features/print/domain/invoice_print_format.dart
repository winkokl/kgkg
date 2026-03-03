import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_print_format.freezed.dart';

@freezed
class InvoicePrintFormat with _$InvoicePrintFormat {
  factory InvoicePrintFormat({
    @Default('') String customerName,
    @Default('') String code,
    @Default('') String date,
    @Default('') String dueDate,
    @Default([]) List<Product> products,
    @Default(0) double subtotal,
    @Default(0) double discount,
    @Default(0) double tax,
    @Default(0) double otherCharges,
    @Default(0) double grandTotal,
    @Default('') String paymentTerm,
  }) = _InvoicePrintFormat;
}
