import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale_return/domain/secondary_sale_return.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'secondary_sale_return_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class SecondarySaleReturnFormNotifier extends _$SecondarySaleReturnFormNotifier {
  SecondarySaleReturnFormNotifier([this._secondarySaleReturn]);

  @override
  SecondarySaleReturn build() => _secondarySaleReturn ?? const SecondarySaleReturn();

  final SecondarySaleReturn? _secondarySaleReturn;

  void setId(int val) => state = state.copyWith(id: val);

  void setReturnDate(String val) => state = state.copyWith(returnDate: val);

  void setSecondarySaleInvoice(SecondarySaleInvoice val) => state = state.copyWith(secondarySaleInvoice: val);

  void setReturnReason(ReturnReason val) => state = state.copyWith(returnReason: val);

  void setProducts(List<Product> val) => state = state.copyWith(products: val);

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);

  void setOtherChargesAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(otherChargesAmount: val.toDouble());
  }

  void setSubtotal(String? val) {
    if (val == null) return;
    state = state.copyWith(subtotal: val.toDouble());
  }

  void setReturnDeductType(AmountOrPercentStatus val) {
    state = state.copyWith(returnDeductType: val);
  }

  void setReturnDeductAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(returnDeductAmount: val.toDouble());
  }

  void setGrandtotal(String? val) {
    if (val == null) return;
    state = state.copyWith(grandtotal: val.toDouble());
  }

  void setTotalReturnAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(totalReturnAmount: val.toDouble());
  }
}
