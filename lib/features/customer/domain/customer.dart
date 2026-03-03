import 'package:mgkaung_dms_mobile/core/enums/vip_status.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/city.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/country.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/township.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer implements PagingDataItem {
  const factory Customer({
    @Default(-1) int id,
    @Default(-1) int consignmentContractId,
    @Default("") String name,
    @Default("") String customerCode,
    @Default("") String dealingDate,
    @Default("") String phone1,
    String? phone2,
    String? phone3,
    String? phone4,
    @Default("") String email,
    @Default("") String contactPersonFirstName,
    @Default("") String contactPersonLastName,
    @Default("") String contactPersonPhoneNumber,
    @Default("") String contactPersonEmail,
    @Default(Country()) Country country,
    @Default(Division()) Division division,
    @Default(City()) City city,
    @Default(Township()) Township township,
    @Default("") String address,
    @Default(CustomerCategory()) CustomerCategory customerCategory,
    @Default(CustomerType()) CustomerType customerType,
    @Default(0) double creditLimit,
    @Default(CreditType()) CreditType creditType,
    int? regionWayId,
    @Default("") String regionWayName,
    @Default(-1) int businessUnitId,
    String? buRefId,
    String? businessUnitName,
    @Default("") String buAddress,
    @Default(0) double consignmentLimit,
    @Default(VIPStatus.none) VIPStatus vipStatus,
    @Default(0) int status,
    @Default("") String remark,
    @Default("") String description,
    @Default([]) List<BusinessUnit> businessUnits,
  }) = _Customer;
}
