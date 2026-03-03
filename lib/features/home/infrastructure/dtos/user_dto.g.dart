// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      id: (json['user_id'] as num?)?.toInt() ?? -1,
      firstName: json['first_name'] as String? ?? "",
      lastName: json['last_name'] as String? ?? "",
      userName: json['username'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone1: json['phone1'] as String? ?? "",
      phone2: json['phone2'] as String? ?? "",
      phone3: json['phone3'] as String? ?? "",
      phone4: json['phone4'] as String? ?? "",
      firstLogin: (json['first_login'] as num?)?.toInt() ?? -1,
      status: (json['status'] as num?)?.toInt() ?? -1,
      userRoleId: (json['user_role_id'] as num?)?.toInt() ?? -1,
      userRoleName: json['user_role_name'] as String? ?? '',
      saleRankDTOs: (json['userInfo'] as List<dynamic>?)
              ?.map((e) => SaleRankDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      moduleDTOs: (json['userAccessibleModules'] as List<dynamic>?)
              ?.map((e) => ModuleDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'user_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.userName,
      'email': instance.email,
      'phone1': instance.phone1,
      'phone2': instance.phone2,
      'phone3': instance.phone3,
      'phone4': instance.phone4,
      'first_login': instance.firstLogin,
      'status': instance.status,
      'user_role_id': instance.userRoleId,
      'user_role_name': instance.userRoleName,
      'userInfo': instance.saleRankDTOs.map((e) => e.toJson()).toList(),
      'userAccessibleModules':
          instance.moduleDTOs.map((e) => e.toJson()).toList(),
    };
