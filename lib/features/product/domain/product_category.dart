import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category.freezed.dart';

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    @Default(-1) int id,
    @Default("") String name,
    @Default(-1) int consignmentContractId,
  }) = _ProductCategory;
}
