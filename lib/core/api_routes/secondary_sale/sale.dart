class SecondarySaleSaleApiRoutes {
  const SecondarySaleSaleApiRoutes(); // prevent instantiation

  // ======================================================
  // =============== SECONDARY SALE ORDER =================
  // ======================================================

  final saleOrder = '/mobile/secondary-sale-order/sale-order';
  final saleOrderById = '/mobile/secondary-sale-order/sale-order/edit';
  final saleOrderCreate = '/mobile/secondary-sale-order/sale-order';
  final saleOrderUpdate = '/mobile/secondary-sale-order/sale-order/update';
  final saleOrderDelete = '/mobile/secondary-sale-order/sale-order/delete';

  // Order Approval
  final saleOrderApproval = '/mobile/secondary-sale-order/sale-order-approval';

  // ======================================================
  // ================== SECONDARY INVOICE =================
  // ======================================================

  final invoice = '/mobile/secondary-sale-order/invoice';
  final invoiceById = '/mobile/secondary-sale-order/invoice/edit';
  final invoiceCreate = '/mobile/secondary-sale-order/invoice'; // convert to invoice
  final invoiceUpdate = '/mobile/secondary-sale-order/invoice/update';
  final invoiceDelete = '/mobile/secondary-sale-order/invoice/delete';

  // Promotion Eligible
  final promotionEligible = '/common/sale-promotion/check';

  // ======================================================
  // ============== SECONDARY PAYMENT RECEIVE =============
  // ======================================================

  final paymentReceive = '/mobile/secondary-sale-order/payment-receive';
  final paymentReceiveById = '/mobile/secondary-sale-order/payment-receive/edit';
  final paymentReceiveCreate = '/mobile/secondary-sale-order/payment-receive/create';
  final paymentReceiveDelete = '/mobile/secondary-sale-order/payment-receive/delete';
}
