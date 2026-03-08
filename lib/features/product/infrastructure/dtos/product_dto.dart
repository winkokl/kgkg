import "package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart";
import "package:mgkaung_dms_mobile/features/product/domain/product.dart";
import "package:mgkaung_dms_mobile/features/product/domain/unit.dart";
import "package:mgkaung_dms_mobile/features/product/infrastructure/dtos/unit_type_dto.dart";
import "package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:mgkaung_dms_mobile/features/sale_promotion/domain/info.dart";
import "package:mgkaung_dms_mobile/features/sale_promotion/domain/promotion_detail.dart";
import "package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/info_dto.dart";
import "package:mgkaung_dms_mobile/features/sale_promotion/infrastructure/dtos/promotion_detail.dto.dart";

part "product_dto.freezed.dart";
part "product_dto.g.dart";

int _booltoJson(dynamic value) {
  if (value == true) return 1;
  if (value == false) return 0;
  if (value is int) return value;
  return 0;
}

bool _boolfromJson(dynamic value) {
  if (value is int) {
    return value == 1;
  }
  if (value is String) {
    return value == "1" || value.toLowerCase() == "true";
  }
  if (value is bool) {
    return value;
  }
  if (value == null) {
    return false;
  }
  return false;
}

@freezed
class ProductDTO with _$ProductDTO {
  const ProductDTO._();
  const factory ProductDTO({
    @JsonKey(name: "product_id") @Default(-1) int id,
    @JsonKey(name: "secondary_sales_return_detail_id", includeIfNull: false) int? secondarySaleReturnDetailId,
    @JsonKey(name: "product_code", includeToJson: false) @Default("") String code,
    @JsonKey(name: "product_category_name", includeToJson: false) @Default("") String categoryName,
    @JsonKey(name: "api_level", includeToJson: false) @Default("") String apiLevel,
    @JsonKey(name: "product_type_name", includeToJson: false) @Default("") String typeName,
    @JsonKey(name: "barcode", includeToJson: false) @Default("") String barcode,
    @JsonKey(name: "product_name", includeToJson: false) @Default("") String name,
    @JsonKey(name: "unit_id") @Default(-1) int unitId,
    @JsonKey(name: "unit_type_id", includeToJson: false) @Default(-1) int unitTypeId,
    @JsonKey(name: "unit_name", includeToJson: false) @Default("") String unitName,
    @JsonKey(name: "qty") @Default(0) int quantity,
    @JsonKey(name: "consignment_contract_qty", includeIfNull: false) @Default(0) int? consignmentContractQty,
    @JsonKey(name: "consignment_contract_amount", includeToJson: false) @Default(0) double? consignmentContractAmount,
    @JsonKey(name: "sales_price") @Default(0) double salePrice,
    @JsonKey(name: "primary_sales_price", includeToJson: false) @Default(0) double primarySalePrice,
    @JsonKey(name: "secondary_sales_price", includeToJson: false) @Default(0) double secondarySalePrice,
    @JsonKey(name: "consignment_sales_price", includeToJson: false) @Default(0) double consignmentSalePrice,
    @Default(0) double amount,
    @JsonKey(name: "discount_amount") @Default(0) double discountAmount,
    @JsonKey(name: "discount") @Default(0) double discount,
    @JsonKey(name: "discount_type") @Default("") String discountType,
    @JsonKey(name: "normal_discount", includeIfNull: false) double? normalDiscount,
    @JsonKey(name: "normal_discount_type", includeIfNull: false) String? normalDiscountType,
    @JsonKey(name: "tax_amount") @Default(0) double taxAmount,
    @JsonKey(name: "tax") @Default(0) double tax,
    @JsonKey(name: "tax_type") @Default("") String taxType,
    @JsonKey(name: "secondary_sales_tax", includeToJson: false) @Default(0) double saleTax,
    @JsonKey(name: "secondary_sales_tax_type", includeToJson: false) @Default("") String saleTaxType,
    @JsonKey(name: "total_amount") @Default(0) double totalAmount,
    @JsonKey(name: "return_qty", includeIfNull: false) int? returnQty,
    @JsonKey(name: "available_return_qty", includeToJson: false) @Default(0) int availableReturnQty,
    @JsonKey(name: "available_qty") @Default(0) int? availableQty,
    @JsonKey(name: "return_amount", includeIfNull: false) double? returnAmount,
    @JsonKey(name: "warehouse_id") int? warehouseId,
    @JsonKey(name: "warehouse_name", includeToJson: false) String? warehouseName,
    @JsonKey(name: "proposal_qty", includeToJson: false) int? proposalQty,
    @JsonKey(name: "total_issued_qty", includeToJson: false) @Default(0) int totalIssuedQty,
    @JsonKey(name: "issued_balance_qty", includeToJson: false) @Default(0) int issuedBalanceQty,
    @JsonKey(name: "issue_qty", includeToJson: false) @Default(0) int issueQty,
    @JsonKey(name: "request_qty", includeToJson: false) @Default(0) int requestQty,
    @JsonKey(name: "terminate_sale_qty", includeToJson: false) @Default(0) int terminateSaleQty,
    @JsonKey(name: "unit_type_data", includeToJson: false) @Default([]) List<UnitTypeDTO> unitTypeDTOs,
    @JsonKey(name: "is_promotion_item", includeToJson: false, includeIfNull: false) dynamic isPromotionItem,
    @JsonKey(name: "sale_promotion_detail_id", includeToJson: false, includeIfNull: false) int? salePromotionDetailId,
    @JsonKey(name: "is_promotion_item_list", includeToJson: false, includeIfNull: false) PromotionDetailDTO? promotionDetailDTO,
    @JsonKey(name: "item_back_product", includeIfNull: false) InfoDTO? itemBackProduct,
    @JsonKey(name: "product_code_prefix", includeToJson: false) @Default("") String? productCodePrefix,
    @JsonKey(name: "available_quantity", includeToJson: false) @Default(0) int? availableQtyFromWarehouse,
    @JsonKey(name: "_promo_discount", includeIfNull: false) @Default(null) dynamic promoDiscount, // Renamed for Dart style: _promo_discount -> promoDiscount

    @JsonKey(name: "_promo_discount_type", includeIfNull: false) @Default(null) dynamic promoDiscountType, // Renamed: _promo_discount_type -> promoDiscountType

    @JsonKey(name: "_promo_bonus", includeIfNull: false) @Default(null) dynamic promoBonus, // Renamed: _promo_bonus -> promoBonus

    @JsonKey(name: "_promo_cashback", includeIfNull: false) @Default(null) dynamic promoCashback, // Renamed: _promo_cashback -> promoCashback

    // The existing "sale_promotion_detail_id" field
    // @JsonKey(name: "sale_promotion_detail_id", includeIfNull: false) @Default(null) int? salePromotionDetailId,

    // The existing "is_promotion_item_list" field (renamed to promotionDetailDTO)
    // @JsonKey(name: "is_promotion_item_list", includeIfNull: false)
    // @Default(null) // Added default(null) to be explicitly nullable
    // PromotionDetailDTO? promotionDetailDTO,
  }) = _ProductDTO;

  factory ProductDTO.fromJson(Map<String, dynamic> json) => _$ProductDTOFromJson(json);

  factory ProductDTO.fromDomain(Product product, [bool isConsignment = false, bool isReturn = false, bool isTrip = false]) {
    return ProductDTO(
      id: product.id,
      secondarySaleReturnDetailId: product.secondarySaleReturnDetailId,
      salePrice: product.salePrice,
      amount: product.amount,
      normalDiscount: product.normalDiscount,
      normalDiscountType: product.normalDiscountType?.name,
      discountAmount: product.discountAmount,
      discountType: product.discountType.name,
      taxAmount: product.taxAmount,
      tax: product.taxAmount,
      discount: product.discountAmount,
      taxType: product.taxType.name,
      unitId: product.unit.id,
      quantity: product.quantity,
      totalAmount: product.totalAmount,
      returnQty: product.returnQty == 0 ? null : product.returnQty,
      returnAmount: product.returnAmount == 0 ? null : product.returnAmount,
      warehouseId: product.warehouse.id == -1 ? null : product.warehouse.id,
      availableQty: isConsignment || isReturn ? 0 : product.availableQty,
      availableQtyFromWarehouse: isConsignment || isReturn ? 0 : product.availableQty,
      availableReturnQty: product.availableReturnQty,
      consignmentContractQty: isConsignment ? product.consignmentContractQty : null,
      // Don't include promotion fields for trip sales to avoid database column errors
      // Set to null so includeIfNull: false will exclude them from JSON
      isPromotionItem: isTrip ? null : (product.isPromotionItem ? true : null),
      promotionDetailDTO: isTrip ? null : (product.isPromotionItem ? PromotionDetailDTO.fromDomain(product.promotionDetail) : null),
      itemBackProduct: isTrip ? null : (product.itemBackProduct.promotionName.isEmpty ? null : InfoDTO.fromDomain(product.itemBackProduct)),
    );
  }

  Product toDomain() {
    bool checkPromoitionItem() {
      if (isPromotionItem != null && isPromotionItem.runtimeType != int) {
        return false;
      }
      return isPromotionItem == 1;
    }

    return Product(
        id: id,
        secondarySaleReturnDetailId: secondarySaleReturnDetailId,
        secondarySaleTax: saleTax,
        secondarySaleTaxType: AmountOrPercentStatus.fromName(saleTaxType),
        code: code,
        apiLevel: apiLevel,
        categoryName: categoryName,
        typeName: typeName,
        barcode: barcode.isEmpty ? code : barcode,
        name: name,
        unit: Unit(id: unitId, name: unitName),
        unitTypeId: unitTypeId,
        quantity: quantity,
        salePrice: salePrice,
        primarySalePrice: primarySalePrice,
        secondarySalePrice: secondarySalePrice,
        consignmentSalePrice: consignmentSalePrice,
        amount: amount,
        discountAmount: discount,
        discountType: AmountOrPercentStatus.fromName(discountType),
        normalDiscount: normalDiscount,
        normalDiscountType: normalDiscountType == null ? null : AmountOrPercentStatus.fromName(normalDiscountType!),
        taxAmount: tax,
        taxType: AmountOrPercentStatus.fromName(taxType),
        totalAmount: totalAmount,
        consignmentContractQty: consignmentContractQty ?? 0,
        consignmentContractAmount: consignmentContractAmount ?? 0,
        returnQty: returnQty ?? 0,
        returnAmount: returnAmount ?? 0,
        availableReturnQty: availableReturnQty,
        availableQty: availableQtyFromWarehouse ?? 0,
        warehouse: Warehouse(id: warehouseId ?? -1, name: warehouseName ?? ""),
        totalIssuedQty: totalIssuedQty,
        issuedBalanceQty: issuedBalanceQty,
        terminateSaleQty: terminateSaleQty,
        proposalQty: proposalQty,
        issueQty: issueQty,
        requestQty: requestQty,
        unitTypes: unitTypeDTOs.map((e) => e.toDomain()).toList(),
        isPromotionItem: checkPromoitionItem(),
        prefix: productCodePrefix,
        promotionDetail: promotionDetailDTO == null ? PromotionDetail.defaultValue() : promotionDetailDTO!.toDomain(),
        itemBackProduct: itemBackProduct == null ? Info.defaultValue() : itemBackProduct!.toDomain());
  }
}
