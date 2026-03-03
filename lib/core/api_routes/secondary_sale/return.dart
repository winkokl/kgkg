class SecondarySaleReturnApiRoutes {
  const SecondarySaleReturnApiRoutes(); // prevent instantiation

  // ======================================================
  // =============== SECONDARY SALE RETURN =================
  // ======================================================

  final returnList = '/mobile/secondary-sale-return';

  final returnById = '/mobile/secondary-sale-return/edit';

  final returnCreate = '/mobile/secondary-sale-return/create';

  final returnUpdate = '/mobile/secondary-sale-return/update';

  final returnDelete = '/mobile/secondary-sale-return/delete';

  // ======================================================
  // ===== SECONDARY SALE RETURN PAYMENT RECEIVE ==========
  // ======================================================

  final returnPayment = '/mobile/secondary-sale-return/payment';

  final returnPaymentById = '/mobile/secondary-sale-return/payment/edit';

  final returnPaymentCreate = '/mobile/secondary-sale-return/payment/create';

  final returnPaymentDelete = '/mobile/secondary-sale-return/payment/delete';
}
