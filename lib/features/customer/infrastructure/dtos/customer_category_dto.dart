import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_category_dto.freezed.dart';
part 'customer_category_dto.g.dart';

@freezed
class CustomerCategoryDTO with _$CustomerCategoryDTO {
  const CustomerCategoryDTO._();
  const factory CustomerCategoryDTO({
    @JsonKey(name: 'customer_category_id') @Default(-1) int id,
    @JsonKey(name: 'customer_category_name') @Default("") String name,
    @JsonKey(name: 'status') @Default(-1) int status,
  }) = _CustomerCategoryDTO;

  factory CustomerCategoryDTO.fromJson(Map<String, dynamic> json) => _$CustomerCategoryDTOFromJson(json);

  CustomerCategory toDomain() => CustomerCategory(
        id: id,
        name: name,
        status: status,
      );
}
