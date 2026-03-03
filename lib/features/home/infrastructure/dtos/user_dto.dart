import 'package:mgkaung_dms_mobile/core/infrastructure/dtos/module_dto.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/home/infrastructure/dtos/sale_rank_dto.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(name: "user_id") @Default(-1) int id,
    @JsonKey(name: "first_name") @Default("") String firstName,
    @JsonKey(name: "last_name") @Default("") String lastName,
    @JsonKey(name: "username") @Default("") String userName,
    @Default("") String email,
    @Default("") String phone1,
    @Default("") String phone2,
    @Default("") String phone3,
    @Default("") String phone4,
    @JsonKey(name: "first_login") @Default(-1) int firstLogin,
    @Default(-1) int status,
    @JsonKey(name: "user_role_id") @Default(-1) int userRoleId,
    @JsonKey(name: 'user_role_name') @Default('') String userRoleName,
    @JsonKey(name: "userInfo") @Default([]) List<SaleRankDTO> saleRankDTOs,
    @JsonKey(name: "userAccessibleModules") @Default([]) List<ModuleDTO> moduleDTOs,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  User toDomain() {
    final saleRanks = saleRankDTOs.map((saleRankDto) => saleRankDto.toDomain()).toList();
    return User(
      id: id,
      name: firstName + lastName,
      email: email,
      phone1: phone1,
      phone2: phone2,
      phone3: phone3,
      phone4: phone4,
      userName: userName,
      firstLogin: firstLogin != 0,
      status: status != 0,
      roleId: userRoleId,
      role: userRoleName,
      saleRank: saleRanks.isEmpty ? const SaleRank() : saleRanks.first,
      modules: moduleDTOs.map((e) => e.toDomain()).toList(),
    );
  }
}
