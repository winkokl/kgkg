import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_return_print_format.freezed.dart';

@freezed
class SaleReturnPrintFormat with _$SaleReturnPrintFormat {
  factory SaleReturnPrintFormat({
    @Default('') String code,
    @Default('') String invoiceCode,
    @Default('') String contractCode,
    @Default('') String date,
    @Default(0) double subtotal,
    @Default(0) double otherCharges,
    @Default(0) double grandTotal,
    @Default(0) double returnDeductAmount,
    @Default(0) double totalReturnAmount,
    @Default([]) List<Product> products,
  }) = _SaleReturnPrintFormat;
}
