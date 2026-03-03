import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/dtos/warehouse_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_detail_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_user_assign_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/vehicle_dto.dart';

part 'trip_proposal_dto.freezed.dart';
part 'trip_proposal_dto.g.dart';

@freezed
class TripProposalDTO with _$TripProposalDTO {
  const TripProposalDTO._();
  const factory TripProposalDTO({
    @JsonKey(name: "trip_id") @Default(-1) int id,
    @JsonKey(name: "trip_name") @Default("") String tripName,
    @JsonKey(name: "trip_code") @Default("") String tripCode,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "proposal_date") @Default("") String proposalDate,
    @JsonKey(name: "attachment") @Default("") String attachment,
    @JsonKey(name: "reason") @Default("") String reason,
    @JsonKey(name: "region_name") @Default("") String regionName,
    @JsonKey(name: "trip_warehouse_details") @Default([]) List<WarehouseDTO> tripWarehouseDetails,
    @JsonKey(name: "trip_vehicle") @Default([]) List<VehicleDTO> tripVehicle,
    @JsonKey(name: "assignee_data") @Default([]) List<TripUserAssignDTO> assigneeData,
    @JsonKey(name: "product_detail") @Default([]) List<ProductDTO> productDetail,
    @JsonKey(name: "trip_details") @Default([]) List<TripDetailDTO> tripDetails,
  }) = _TripProposalDTO;

  factory TripProposalDTO.fromJson(Map<String, dynamic> json) => _$TripProposalDTOFromJson(json);

  TripProposal toDomain() {
    return TripProposal(
      id: id,
      tripName: tripName,
      tripCode: tripCode,
      description: description,
      proposalDate: proposalDate,
      attachment: attachment,
      reason: reason,
      regionName: regionName,
      tripWarehouseDetails: tripWarehouseDetails.map((e) => e.toDomain()).toList(),
      tripVehicle: tripVehicle.map((e) => e.toDomain()).toList(),
      assigneeData: assigneeData.map((e) => e.toDomain()).toList(),
      productDetail: productDetail.map((e) => e.toDomain()).toList(),
      tripDetails: tripDetails.map((e) => e.toDomain()).toList(),
    );
  }
}
