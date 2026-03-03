import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale_return/domain/trip_sale_return.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'trip_sale_return_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class TripSaleReturnFormNotifier extends _$TripSaleReturnFormNotifier {
  TripSaleReturnFormNotifier([this._tripSaleReturn]);

  @override
  TripSaleReturn build() => _tripSaleReturn ?? const TripSaleReturn();

  final TripSaleReturn? _tripSaleReturn;

  void setId(int val) => state = state.copyWith(id: val);

  void setReturnDate(String val) => state = state.copyWith(returnDate: val);

  void setReturnType(int val) => state = state.copyWith(returnType: val);

  void setReturnReason(ReturnReason val) => state = state.copyWith(returnReason: val);

  void setTripSaleInvoice(TripSaleInvoice val) => state = state.copyWith(tripSaleInvoice: val);

  void setTripSaleRequest(TripSaleRequest val) => state = state.copyWith(tripSaleRequest: val);

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
