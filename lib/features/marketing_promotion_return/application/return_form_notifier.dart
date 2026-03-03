import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/marketing_promotion_plan.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion_return/domain/marketing_promotion_return.dart';
part 'return_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class ReturnFormNotifier extends _$ReturnFormNotifier {
  ReturnFormNotifier([this._invoice]);

  @override
  MarketingPromotionReturn build() => _invoice ?? const MarketingPromotionReturn();

  final MarketingPromotionReturn? _invoice;

  void setReturnDate(String val) => state = state.copyWith(returnDate: val);

  void setPromotion(MarketingPromotionPlan val) => state = state.copyWith(marketingPromotionPlan: val);

  void setDescription(String val) => state = state.copyWith(description: val);

  void setProducts(List<PromotionProduct> val) {
    state = state.copyWith(products: val);
  }

  void setGiftItems(List<GiftItem> val) {
    state = state.copyWith(giftItems: val);
  }

  void updateProduct(PromotionProduct val) {
    final currentProducts = state.products;
    state = state.copyWith(products: [
      for (final v in currentProducts)
        if (v.productId == val.productId) val else v
    ]);
  }

  void updateGiftItems(GiftItem val) {
    final currentGiftItems = state.giftItems;
    state = state.copyWith(giftItems: [
      for (final v in currentGiftItems)
        if (v.productId == val.productId) val else v,
    ]);
  }

  void setOtherChargesAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(otherCharges: val.toDouble());
  }

  void setSubtotal(String? val) {
    if (val == null) return;
    state = state.copyWith(subTotal: val.toDouble());
  }

  void setGrandtotal(String? val) {
    if (val == null) return;
    state = state.copyWith(grandTotal: val.toDouble());
  }

  void setDeductAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(deductAmount: val.toDouble());
  }

  void setTotalReturnAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(total: val.toDouble());
  }
}
