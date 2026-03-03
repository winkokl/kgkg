import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/contract_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product_category.dart';

part 'consignment_contract.freezed.dart';

@freezed
class ConsignmentContract with _$ConsignmentContract implements PagingDataItem {
  const factory ConsignmentContract({
    @Default(-1) int id,
    @Default("") String code,
    @Default("") String date,
    @Default('') String customerName,
    @Default(0) int consignmentDuration,
    @Default(-1) int businessUnitId,
    @Default("") String businessUnitName,
    @Default("") String warehouseName,
    @Default(ContractStatus.none) ContractStatus status,
    @Default([]) List<ProductCategory> productCategory,
    @Default("") String description,
    @Default([]) List<Product> products,
  }) = _ConsignmentContract;
}
