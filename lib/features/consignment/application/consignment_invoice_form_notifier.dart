import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'consignment_invoice_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class ConsignmentInvoiceFormNotifier extends _$ConsignmentInvoiceFormNotifier {
  ConsignmentInvoiceFormNotifier([this._saleInvoice]);

  @override
  ConsignmentInvoice build() => _saleInvoice ?? const ConsignmentInvoice();

  final ConsignmentInvoice? _saleInvoice;

  void setId(int val) => state = state.copyWith(id: val);

  void setInvoiceDate(String val) => state = state.copyWith(invoiceDate: val);

  void setDueDate(String val) => state = state.copyWith(dueDate: val);

  void setCustomer(Customer val) => state = state.copyWith(customer: val);

  void setPaymentType(PaymentType val) => state = state.copyWith(paymentType: val);

  void setPaymentTerm(PaymentTerm val) => state = state.copyWith(paymentTerm: val);

  void setWarehouse(Warehouse val) => state = state.copyWith(warehouse: val);

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);

  void setRegion(Region val) => state = state.copyWith(region: val);
}
