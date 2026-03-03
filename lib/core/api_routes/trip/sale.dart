class TripSaleApiRoutes {
  const TripSaleApiRoutes();
  // ---------------- VEHICLE ----------------
  final String vehicleManagement = '/trip/vehicle-management';

  // ---------------- TRIP PROPOSAL ----------------
  final String tripProposal = '/mobile/trip';
  final String tripProposalById = '/mobile/trip/edit';

  // ---------------- TRIP NAMES ----------------
  final String tripNames = '/mobile/trip';

  // ---------------- TRIP MANAGEMENT ----------------
  final String tripManagement = '/mobile/trip';
  final String tripManagementById = '/mobile/trip/edit';
  final String tripManagementDelete = '/mobile/trip/delete';

  // ---------------- TRIP USER ASSIGN ----------------
  final String tripUserAssign = '/mobile/trip/user-assign';
  final String tripUserAssignDelete = '/mobile/trip/user-assign/delete';

  // ---------------- TRIP SALE ----------------
  final String tripSale = '/mobile/trip/sale';
  final String tripSaleById = '/mobile/trip/sale/edit';
  final String tripSaleCreate = '/mobile/trip/sale/create';
  final String tripSaleUpdate = '/mobile/trip/sale/update';
  final String tripSaleDelete = '/mobile/trip/sale/delete';

  // ---------------- TRIP SALE REQUEST ----------------
  final String tripSaleRequest = '/mobile/trip/sale-request';
  final String tripSaleRequestById = '/mobile/trip/sale-request/edit';
  final String tripSaleRequestDelete = '/mobile/trip/sale-request/delete';

  // ---------------- INVOICE ----------------
  final String invoice = '/mobile/trip/invoice';
  final String invoiceById = '/mobile/trip/invoice/edit';
  final String invoiceCreate = '/mobile/trip/invoice/create';
  final String invoiceUpdate = '/mobile/trip/invoice/update';
  final String invoiceDelete = '/mobile/trip/invoice/delete';

  // ---------------- PAYMENT RECEIVE ----------------
  final String paymentReceive = '/mobile/trip/payment-receive';
  final String paymentReceiveById = '/mobile/trip/payment-receive/edit';
  final String paymentReceiveCreate = '/mobile/trip/payment-receive/create';
  final String paymentReceiveDelete = '/mobile/trip/payment-receive/delete';

  // ---------------- TRIP PROPOSAL PRODUCT ----------------
  final String tripProposalProduct = '/common/trip-proposal-product-list';
}
