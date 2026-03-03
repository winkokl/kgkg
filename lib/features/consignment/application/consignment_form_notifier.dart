import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
part 'consignment_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class ConsignmentFormNotifier extends _$ConsignmentFormNotifier {
  ConsignmentFormNotifier([this._saleOrder]);

  @override
  Consignment build() => _saleOrder ?? const Consignment();

  final Consignment? _saleOrder;

  void setId(int val) => state = state.copyWith(id: val);

  void setDate(String val) => state = state.copyWith(date: val);

  void setCustomer(Customer val) => state = state.copyWith(customer: val);

  void setBusinessUnit(BusinessUnit val) => state = state.copyWith(businessUnit: val);

  void setRegion(Region val) => state = state.copyWith(region: val);

  void setConsignmentContractId(int val) => state = state.copyWith(consignmentContractId: val);

  void setConsignmentMethod(ConsignmentMethod val) => state = state.copyWith(consignmentMethod: val);

  void setConsignmentContractCode(String val) => state = state.copyWith(consignmentContractCode: val);

  void setProducts(List<Product> val) => state = state.copyWith(products: val);

  void setPaymentType(PaymentType val) => state = state.copyWith(paymentType: val);

  void setPaymentTerm(PaymentTerm val) => state = state.copyWith(paymentTerm: val);

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);

  void setDiscountAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(discountAmount: val.toDouble());
  }

  void setConsignmentContract(ConsignmentContract val) {
    state = state.copyWith(consignmentContract: val);
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
