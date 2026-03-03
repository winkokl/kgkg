// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocation_account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllocationAccountDTOImpl _$$AllocationAccountDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$AllocationAccountDTOImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$AllocationAccountDTOImplToJson(
        _$AllocationAccountDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
