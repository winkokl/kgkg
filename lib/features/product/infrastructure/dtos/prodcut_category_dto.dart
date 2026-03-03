import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product_category.dart';

part 'prodcut_category_dto.freezed.dart';
part 'prodcut_category_dto.g.dart';

@freezed
class ProductCategoryDTO with _$ProductCategoryDTO {
  const ProductCategoryDTO._();
  const factory ProductCategoryDTO({
    @JsonKey(name: "product_category_id") @Default(-1) int id,
    @JsonKey(name: "product_category_name") @Default("") String name,
    @JsonKey(name: "consignment_contract_id") int? consignmentContractId,
  }) = _ProductCategoryDTO;

  factory ProductCategoryDTO.fromJson(Map<String, dynamic> json) => _$ProductCategoryDTOFromJson(json);

  factory ProductCategoryDTO.fromDomain(ProductCategory productCategory) {
    return ProductCategoryDTO(
      id: productCategory.id,
      name: productCategory.name,
      consignmentContractId: productCategory.consignmentContractId == -1 ? null : productCategory.consignmentContractId,
    );
  }

  ProductCategory toDomain() {
    return ProductCategory(
      id: id,
      name: name,
      consignmentContractId: consignmentContractId ?? -1,
    );
  }
}
