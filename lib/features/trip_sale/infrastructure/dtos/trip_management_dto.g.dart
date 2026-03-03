// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_management_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripManagementDTOImpl _$$TripManagementDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$TripManagementDTOImpl(
      id: (json['trip_id'] as num?)?.toInt() ?? -1,
      code: json['trip_code'] as String? ?? "",
      tripName: json['trip_name'] as String? ?? "",
      allocationAccountName: json['warehouse_name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      remark: json['remark'] as String? ?? "",
      regionName: json['regionName'] as String? ?? "",
      wayName: json['wayName'] as String? ?? "",
      divisionName: json['divisionName'] as String? ?? "",
      cityName: json['cityName'] as String? ?? "",
      townshipName: json['townshipName'] as String? ?? "",
      tripWarehouseList: (json['trip_warehouse_details'] as List<dynamic>?)
              ?.map((e) => WarehouseDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tripDetails: (json['trip_details'] as List<dynamic>?)
              ?.map((e) => TripDetailDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TripManagementDTOImplToJson(
        _$TripManagementDTOImpl instance) =>
    <String, dynamic>{
      'trip_id': instance.id,
      'trip_code': instance.code,
      'trip_name': instance.tripName,
      'warehouse_name': instance.allocationAccountName,
      'description': instance.description,
      'remark': instance.remark,
      'regionName': instance.regionName,
      'wayName': instance.wayName,
      'divisionName': instance.divisionName,
      'cityName': instance.cityName,
      'townshipName': instance.townshipName,
      'trip_warehouse_details':
          instance.tripWarehouseList.map((e) => e.toJson()).toList(),
      'trip_details': instance.tripDetails.map((e) => e.toJson()).toList(),
    };
