// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_proposal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripProposalDTOImpl _$$TripProposalDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripProposalDTOImpl(
      id: (json['trip_id'] as num?)?.toInt() ?? -1,
      tripName: json['trip_name'] as String? ?? "",
      tripCode: json['trip_code'] as String? ?? "",
      description: json['description'] as String? ?? "",
      proposalDate: json['proposal_date'] as String? ?? "",
      attachment: json['attachment'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
      regionName: json['region_name'] as String? ?? "",
      tripWarehouseDetails: (json['trip_warehouse_details'] as List<dynamic>?)
              ?.map((e) => WarehouseDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tripVehicle: (json['trip_vehicle'] as List<dynamic>?)
              ?.map((e) => VehicleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      assigneeData: (json['assignee_data'] as List<dynamic>?)
              ?.map(
                  (e) => TripUserAssignDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      productDetail: (json['product_detail'] as List<dynamic>?)
              ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tripDetails: (json['trip_details'] as List<dynamic>?)
              ?.map((e) => TripDetailDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TripProposalDTOImplToJson(
        _$TripProposalDTOImpl instance) =>
    <String, dynamic>{
      'trip_id': instance.id,
      'trip_name': instance.tripName,
      'trip_code': instance.tripCode,
      'description': instance.description,
      'proposal_date': instance.proposalDate,
      'attachment': instance.attachment,
      'reason': instance.reason,
      'region_name': instance.regionName,
      'trip_warehouse_details':
          instance.tripWarehouseDetails.map((e) => e.toJson()).toList(),
      'trip_vehicle': instance.tripVehicle.map((e) => e.toJson()).toList(),
      'assignee_data': instance.assigneeData.map((e) => e.toJson()).toList(),
      'product_detail': instance.productDetail.map((e) => e.toJson()).toList(),
      'trip_details': instance.tripDetails.map((e) => e.toJson()).toList(),
    };
