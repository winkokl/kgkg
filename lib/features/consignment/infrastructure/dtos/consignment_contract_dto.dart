import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/enums/contract_status.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/prodcut_category_dto.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';

part 'consignment_contract_dto.freezed.dart';
part 'consignment_contract_dto.g.dart';

@freezed
class ConsignmentContractDTO with _$ConsignmentContractDTO {
  const ConsignmentContractDTO._();
  const factory ConsignmentContractDTO({
    @JsonKey(name: "consignment_contract_id") @Default(-1) int id,
    @JsonKey(name: "consignment_contract_code") @Default("") String code,
    @JsonKey(name: "start_date") @Default("") String date,
    @JsonKey(name: "customer_first_name") @Default('') String customerName,
    @JsonKey(name: "consignment_duration") @Default(0) int consignmentDuration,
    @JsonKey(name: "business_unit_id") @Default(-1) int businessUnitId,
    @JsonKey(name: "business_unit_name") @Default("") String businessUnitName,
    @JsonKey(name: "warehouse_name") @Default("") String warehouseName,
    @Default(0) int status,
    @JsonKey(name: "product_categories") @Default([]) List<ProductCategoryDTO> productCategoryDtos,
    @Default("") String description,
    @JsonKey(name: "consignment_contract_details") @Default([]) List<ProductDTO> productDtos,
  }) = _ConsignmentContractDTO;

  factory ConsignmentContractDTO.fromJson(Map<String, dynamic> json) => _$ConsignmentContractDTOFromJson(json);

  ConsignmentContract toDomain() {
    return ConsignmentContract(
      id: id,
      code: code,
      date: date,
      customerName: customerName,
      warehouseName: warehouseName,
      status: ContractStatus.fromId(status),
      consignmentDuration: consignmentDuration,
      businessUnitId: businessUnitId,
      businessUnitName: businessUnitName,
      productCategory: productCategoryDtos.map((c) => c.toDomain()).toList(),
      description: description,
      products: productDtos.map((productDto) => productDto.toDomain()).toList(),
    );
  }
}
