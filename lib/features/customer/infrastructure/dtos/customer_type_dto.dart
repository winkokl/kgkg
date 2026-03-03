import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_type_dto.freezed.dart';
part 'customer_type_dto.g.dart';

@freezed
class CustomerTypeDTO with _$CustomerTypeDTO {
  const CustomerTypeDTO._();
  const factory CustomerTypeDTO({
    @JsonKey(name: 'customer_type_id') @Default(-1) int id,
    @JsonKey(name: 'customer_type_name') @Default("") String name,
    @JsonKey(name: 'status') @Default(-1) int status,
  }) = _CustomerTypeDTO;

  factory CustomerTypeDTO.fromJson(Map<String, dynamic> json) => _$CustomerTypeDTOFromJson(json);

  CustomerType toDomain() => CustomerType(id: id, name: name, status: status);
}
