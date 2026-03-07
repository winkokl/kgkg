import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';

List<Product> getModifiedProducts(TripSaleRequest tripSaleRequest, [bool isTripSale = false]) {
  List<Product> tmpPrductList = [];
  for (var i = 0; i < tripSaleRequest.products.length; i++) {
    final currentProduct = tripSaleRequest.products[i];
    final quantity = isTripSale ? 0 : currentProduct.quantity;
    final currentProductAmount = quantity * currentProduct.salePrice;

    final tax = currentProduct.secondarySaleTaxType == AmountOrPercentStatus.amount ? currentProduct.secondarySaleTax : (currentProduct.secondarySaleTax / 100) * currentProductAmount;

    final product = currentProduct.copyWith(
        amount: currentProductAmount,
        totalAmount: currentProductAmount + tax,
        availableQty: !isTripSale ? 0 : currentProduct.availableQty,
        isTrip: true,
        isViewOnly: !isTripSale,
        quantity: quantity,
        taxAmount: currentProduct.secondarySaleTax,
        taxType: currentProduct.secondarySaleTaxType,
        warehouse: Warehouse(
          id: tripSaleRequest.warehouse.id,
          name: tripSaleRequest.warehouse.name,
        ),
        isPromotionItem: false);
    tmpPrductList.add(product);
  }
  return tmpPrductList;
}

// bool isQunatityValidForTripSaleOrder(List<Product> products) {
//   for (final product in products) {
//     if (product.quantity > product.availableQty) {
//       return false;
//     } else {
//       continue;
//     }
//   }
//   return true;
// }
