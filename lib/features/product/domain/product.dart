import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/consignment_method.dart';
import 'package:mgkaung_dms_mobile/core/enums/product_sale_price_status.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/unit.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/unit_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sku.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @Default(-1) int id,
    int? secondarySaleReturnDetailId,
    @Default("") String code,
    @Default("") String apiLevel,
    @Default("") String barcode,
    @Default("") String categoryName,
    @Default("") String name,
    @Default("") String typeName,
    @Default(Unit()) Unit unit,
    @Default(-1) int unitTypeId,
    @Default(0) int quantity,
    @Default(0) double salePrice,
    @Default(0) double primarySalePrice,
    @Default(0) double secondarySalePrice,
    @Default(0) double secondarySaleTax,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus secondarySaleTaxType,
    @Default(0) double consignmentSalePrice,
    @Default(0) double amount,
    @Default(0) double discountAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus discountType,
    double? normalDiscount,
    AmountOrPercentStatus? normalDiscountType,
    @Default(0) double taxAmount,
    @Default(AmountOrPercentStatus.amount) AmountOrPercentStatus taxType,
    @Default(0) double totalAmount,
    @Default(false) bool isSelected,
    @Default(false) bool isViewOnly,
    @Default(0) int returnQty,
    @Default(0) int consignmentContractQty,
    @Default(0) double consignmentContractAmount,
    @Default(0) int availableReturnQty,
    @Default(0) double returnAmount,
    @Default(ProductSalePriceStatus.nothing) ProductSalePriceStatus productSalePriceStatus,
    @Default(Warehouse()) Warehouse warehouse,
    @Default(0) int availableQty,
    @Default(false) bool isTrip,
    @Default(false) bool isConsignment,
    @Default(false) bool isConsignmentContract,
    int? proposalQty,
    @Default(0) int totalIssuedQty,
    @Default(0) int issuedBalanceQty,
    @Default(0) int issueQty,
    @Default(0) int requestQty,
    @Default([]) List<UnitType> unitTypes,
    @Default(false) bool isPromotionItem,
    @Default(PromotionDetail()) PromotionDetail promotionDetail,
    @Default(Info()) Info promotionInfo,
    @Default(Sku()) Sku promotionSku,
    @Default(ConsignmentMethod.stockRefill) ConsignmentMethod consignmentMethod,
    @Default(0) int terminateSaleQty,
    @Default('') String? prefix,
    @Default(null) dynamic promoDiscount,
    @Default(null) dynamic promoDiscountType,
    @Default(null) dynamic promoCashback,
    @Default(null) dynamic promoBonus,
    @Default(Info()) Info itemBackProduct,
  }) = _Product;
}
