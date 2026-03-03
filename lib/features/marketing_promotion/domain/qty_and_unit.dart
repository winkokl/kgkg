import 'package:mgkaung_dms_mobile/features/marketing_promotion/domain/promotion_product_unit.dart';

abstract class QtyAndUnit {
  int get requestedQty;
  int get currentQty;
  PromotionProductUnit? get currentQtyUnit;
  List<PromotionProductUnit> get convertedUnits;
  QtyAndUnit qtyAmdUnitcopyWith({int? currentQty, PromotionProductUnit? currentQtyUnit});
}
