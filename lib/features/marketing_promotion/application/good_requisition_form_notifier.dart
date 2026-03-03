import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/good_requisition.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'good_requisition_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class GoodRequisitionFormNotifier extends _$GoodRequisitionFormNotifier {
  GoodRequisitionFormNotifier([this._goodRequisition]);

  @override
  GoodRequisition build() => _goodRequisition ?? const GoodRequisition();

  final GoodRequisition? _goodRequisition;

  void setGoodRequisitionDate(String val) => state = state.copyWith(goodRequisitionDate: val);

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
        if (v.giftItemId == val.giftItemId) val else v,
    ]);
  }
}
