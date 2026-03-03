import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'product_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProductListNotifier extends _$ProductListNotifier {
  ProductListNotifier([this._products]);

  @override
  List<Product> build() => _products ?? [];

  final List<Product>? _products;

  void setProductList(List<Product> productList) => state = productList;

  void removeProduct(Product product) => state = [
        for (final v in state)
          if (v.id != product.id) v,
      ];

  void removeSelectedProducts() => state = [
        for (final v in state)
          if (!v.isSelected) v,
      ];

  void addProduct(Product product) {
    if (!state.map((element) => element.id).contains(product.id)) {
      state = [...state, product];
    }
  }

  void editProduct(Product product) {
    state = [
      for (final v in state)
        if (v.id == product.id) product else v
    ];
  }

  void increaseReturnQuantity(Product product) {
    if (product.availableReturnQty <= product.returnQty) return;
    state = [
      for (final v in state)
        if (v.id == product.id)
          product.copyWith(
            returnQty: product.returnQty + 1,
            returnAmount: product.salePrice * (product.returnQty + 1),
          )
        else
          v
    ];
  }

  void decreaseReturnQuantity(Product product) {
    if (product.returnQty == 0) return;

    state = [
      for (final v in state)
        if (v.id == product.id)
          product.copyWith(
            returnQty: product.returnQty - 1,
            returnAmount: product.salePrice * (product.returnQty - 1),
          )
        else
          v
    ];
  }

  void select(Product product) {
    state = [
      for (final v in state)
        if (v.id == product.id) product.copyWith(isSelected: !product.isSelected) else v
    ];
  }

  void selectAll() => state = [for (final v in state) v.copyWith(isSelected: true)];

  void deselectAll() => state = [for (final v in state) v.copyWith(isSelected: false)];
}
