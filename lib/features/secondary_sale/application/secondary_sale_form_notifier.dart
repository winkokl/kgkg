import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'secondary_sale_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class SecondarySaleFormNotifier extends _$SecondarySaleFormNotifier {
  SecondarySaleFormNotifier([this._saleOrder]);

  @override
  SecondarySale build() => _saleOrder ?? const SecondarySale();

  final SecondarySale? _saleOrder;

  void setId(int val) => state = state.copyWith(id: val);

  void setDate(String val) => state = state.copyWith(date: val);

  void setDeliveryDate(String val) => state = state.copyWith(deliveryDate: val);

  void setCustomer(Customer val) => state = state.copyWith(customer: val);

  void setBusinessUnit(BusinessUnit val) => state = state.copyWith(businessUnit: val);

  void setProducts(List<Product> val) => state = state.copyWith(products: val);

  void setSaleType(SaleType val) => state = state.copyWith(saleType: val);

  void setPaymentType(PaymentType val) => state = state.copyWith(paymentType: val);

  void setPaymentTerm(PaymentTerm val) => state = state.copyWith(paymentTerm: val);

  void setPromotion(SalePromotion salePromotion) {
    state = state.copyWith(salePromotion: salePromotion);
  }

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);

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

  void setDiscount(String? val) {
    if (val == null) return;
    state = state.copyWith(discount: val.toDouble());
  }

  void setTax(String? val) {
    if (val == null) return;
    state = state.copyWith(tax: val.toDouble());
  }
}
