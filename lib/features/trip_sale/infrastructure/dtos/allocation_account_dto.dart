import 'package:mgkaung_dms_mobile/features/trip_sale/domain/allocation_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'allocation_account_dto.freezed.dart';
part 'allocation_account_dto.g.dart';

@freezed
class AllocationAccountDTO with _$AllocationAccountDTO {
  const AllocationAccountDTO._();
  const factory AllocationAccountDTO({
    @Default(-1) int id,
    @Default("") String name,
  }) = _AllocationAccountDTO;

  factory AllocationAccountDTO.fromJson(Map<String, dynamic> json) => _$AllocationAccountDTOFromJson(json);

  AllocationAccount toDomain() => AllocationAccount(id: id, name: name);
}
