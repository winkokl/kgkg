import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/domain/secondary_sale_invoice.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'secondary_sale_invoice_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class SecondarySaleInvoiceFormNotifier extends _$SecondarySaleInvoiceFormNotifier {
  SecondarySaleInvoiceFormNotifier([this._saleInvoice]);

  @override
  SecondarySaleInvoice build() => _saleInvoice ?? const SecondarySaleInvoice();

  final SecondarySaleInvoice? _saleInvoice;

  void setId(int val) => state = state.copyWith(id: val);

  void setInvoiceDate(String val) => state = state.copyWith(invoiceDate: val);

  void setDueDate(String val) => state = state.copyWith(dueDate: val);

  void setCustomer(Customer val) => state = state.copyWith(customer: val);

  void setPaymentType(PaymentType val) => state = state.copyWith(paymentType: val);

  void setPaymentTerm(PaymentTerm val) => state = state.copyWith(paymentTerm: val);

  // void setWarehouse(Warehouse val) => state = state.copyWith(warehouse: val);

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);
}
