import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/gift_item.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/invoice.dart';
import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'invoice_form_notifier.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class InvoiceFormNotifier extends _$InvoiceFormNotifier {
  InvoiceFormNotifier([this._invoice]);

  @override
  Invoice build() => _invoice ?? const Invoice();

  final Invoice? _invoice;

  void setInvoiceDate(String val) => state = state.copyWith(invoiceDate: val);

  void setDueDate(String val) => state = state.copyWith(dueDate: val);

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
        if (v.promotionProductId == val.promotionProductId) val else v
    ]);
  }

  void updateGiftItems(GiftItem val) {
    final currentGiftItems = state.giftItems;
    state = state.copyWith(giftItems: [
      for (final v in currentGiftItems)
        if (v.promotionGiftId == val.promotionGiftId) val else v,
    ]);
  }

  void setDiscountAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(discountAmount: val.toDouble());
  }

  void setDiscountType(AmountOrPercentStatus val) => state = state.copyWith(discountType: val);

  void setTaxAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(taxAmount: val.toDouble());
  }

  void setTaxType(AmountOrPercentStatus val) => state = state.copyWith(taxType: val);

  void setBonusAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(bonusAmt: val.toDouble());
  }

  void setBonusType(AmountOrPercentStatus val) => state = state.copyWith(bonusType: val);

  void setCashBackAmount(String? val) {
    if (val == null) return;
    state = state.copyWith(cashbackAmt: val.toDouble());
  }

  void setCashBackType(AmountOrPercentStatus val) => state = state.copyWith(cashbackType: val);

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
}
