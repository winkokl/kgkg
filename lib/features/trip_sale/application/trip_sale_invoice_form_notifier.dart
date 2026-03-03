import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'trip_sale_invoice_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class TripSaleInvoiceFormNotifier extends _$TripSaleInvoiceFormNotifier {
  TripSaleInvoiceFormNotifier([this._saleInvoice]);

  @override
  TripSaleInvoice build() => _saleInvoice ?? const TripSaleInvoice();

  final TripSaleInvoice? _saleInvoice;

  void setId(int val) => state = state.copyWith(id: val);

  void setInvoiceDate(String val) => state = state.copyWith(invoiceDate: val);

  void setDueDate(String val) => state = state.copyWith(dueDate: val);

  void setCustomer(Customer val) => state = state.copyWith(customer: val);

  void setPaymentType(PaymentType val) => state = state.copyWith(paymentType: val);

  void setPaymentTerm(PaymentTerm val) => state = state.copyWith(paymentTerm: val);

  void setWarehouse(Warehouse val) => state = state.copyWith(warehouse: val);

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);
}
