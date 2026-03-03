import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/unit.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'product_notifier.g.dart';

@Riverpod()
class ProductNotifier extends _$ProductNotifier {
  @override
  Product build() => const Product();
  void setProduct(Product product) => state = product;
}

@Riverpod(keepAlive: true)
class NewProductNotifier extends _$NewProductNotifier {
  @override
  Product build() => const Product();

  void setProduct(Product product) => state = product;

  void setSalePrice(String? val) {
    if (val == null) return;
    state = state.copyWith(salePrice: val.toDouble());
  }

  void setUnit(Unit val) => state = state.copyWith(unit: val);

  void setQuantity(String? quantity) {
    if (quantity == null) return;
    state = state.copyWith(quantity: int.parse(quantity));
  }

  void setAvailableQuantity(String? quantity) {
    if (quantity == null) return;
    var newavailableQty = int.tryParse(quantity);
    if (newavailableQty == null) {
      print("Invalid available quantity input , cannot parse to int : $quantity");
      return;
    }
    state = state.copyWith(availableQty: int.parse(quantity));
    print("new updated state is : ${state.availableQty}");
  }

  void setDiscount(String? val) {
    if (val == null) return;
    state = state.copyWith(discountAmount: val.toDouble());
  }

  void setDiscountType(AmountOrPercentStatus val) {
    state = state.copyWith(discountType: val);
  }

  void setTax(String? val) {
    if (val == null) return;
    state = state.copyWith(taxAmount: val.toDouble());
  }

  void setTaxType(AmountOrPercentStatus val) {
    state = state.copyWith(taxType: val);
  }

  void setAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(amount: val.toDouble());
  }

  void setTotalAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(totalAmount: val.toDouble());
  }

  void setReturnQty(String? val) {
    if (val == null) return;
    state = state.copyWith(returnQty: int.parse(val));
  }

  void setReturnAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(returnAmount: val.toDouble());
  }

  void setWarehouse(Warehouse val) {
    state = state.copyWith(warehouse: val);
  }
}

@Riverpod()
class ProductSearchQueryNotifier extends _$ProductSearchQueryNotifier {
  @override
  String build() {
    return '';
  }

  void setQuery(String query) {
    state = query;
  }
}
