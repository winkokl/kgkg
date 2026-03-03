import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';

bool isQunatityValid(List<Product> products) {
  for (final product in products) {
    if (product.quantity == 0) {
      return false;
    } else {
      continue;
    }
  }
  return true;
}

bool isQunatityValid2(List<Product> products) {
  return products.any((product) => product.quantity != 0);
}
