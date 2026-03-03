import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';

enum ProductSalePriceStatus {
  secondarySale(id: 1, name: "Secondary Sale"),
  consignmentSale(id: 2, name: "Consignment Sale"),
  primarySale(id: 3, name: "Primary Sale"),
  tripSale(id: 4, name: "Trip Sale"),
  nothing(id: -1, name: "");

  final int id;
  final String name;

  const ProductSalePriceStatus({required this.id, required this.name});

  @override
  String toString() => name;

  factory ProductSalePriceStatus.fromId(int id) {
    return values.firstWhere((element) => element.id == id);
  }
}

double getSalePrice(Product product, ProductSalePriceStatus productSalePriceStatus) {
  if (productSalePriceStatus == ProductSalePriceStatus.primarySale || productSalePriceStatus == ProductSalePriceStatus.tripSale) {
    return product.primarySalePrice;
  }
  if (productSalePriceStatus == ProductSalePriceStatus.secondarySale) {
    return product.secondarySalePrice;
  }
  if (productSalePriceStatus == ProductSalePriceStatus.consignmentSale) {
    return product.consignmentSalePrice;
  }
  return 0;
}
