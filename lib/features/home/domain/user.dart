import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/domain/module.dart';
import 'package:mgkaung_dms_mobile/features/home/domain/sale_rank.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const factory User({
    @Default(-1) int id,
    @Default("") String name,
    @Default("") String userName,
    @Default("") String email,
    @Default("") String phone1,
    @Default("") String phone2,
    @Default("") String phone3,
    @Default("") String phone4,
    @Default(false) bool firstLogin,
    @Default(false) bool status,
    @Default(-1) int roleId,
    @Default('') String role,
    @Default(SaleRank()) SaleRank saleRank,
    @Default([]) List<Module> modules,
  }) = _User;
}
