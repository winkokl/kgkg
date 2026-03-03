import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_method.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'trip_sale_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class TripSaleFormNotifier extends _$TripSaleFormNotifier {
  TripSaleFormNotifier([this._saleOrder]);

  @override
  TripSale build() => _saleOrder ?? const TripSale();

  final TripSale? _saleOrder;

  void setId(int val) => state = state.copyWith(id: val);

  void setTripSaleMethod(TripSaleMethod val) => state = state.copyWith(tripSaleMethod: val);

  void setTripSaleRequest(TripSaleRequest val) => state = state.copyWith(tripSaleRequest: val);

  void setTripProposal(TripProposal val) => state = state.copyWith(tripProposal: val);

  void setWarehouse(Warehouse? val) => state = state.copyWith(warehouse: val);

  void setDate(String val) => state = state.copyWith(date: val);

  void setCustomer(Customer val) => state = state.copyWith(customer: val);

  void setBusinessUnit(BusinessUnit val) => state = state.copyWith(businessUnit: val);

  void setProducts(List<Product> val) => state = state.copyWith(products: val);

  void setPaymentType(PaymentType val) => state = state.copyWith(paymentType: val);

  void setPaymentTerm(PaymentTerm val) => state = state.copyWith(paymentTerm: val);

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);

  void setPromotion(SalePromotion salePromotion) {
    state = state.copyWith(salePromotion: salePromotion);
  }

  void setDiscountAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(discountAmount: val.toDouble());
  }

  void setDiscountType(AmountOrPercentStatus val) => state = state.copyWith(discountType: val);

  void setTaxAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(taxAmount: val.toDouble());
  }

  void setTaxType(AmountOrPercentStatus val) => state = state.copyWith(taxType: val);

  void setOtherChargesAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(otherChargesAmount: val.toDouble());
  }

  void setSubtotal(String? val) {
    if (val == null) return;
    state = state.copyWith(subtotal: val.toDouble());
  }

  void setGrandtotal(String? val) {
    if (val == null) return;
    state = state.copyWith(grandtotal: val.toDouble());
  }
}
