import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paging_data_item.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';

part 'business_unit.freezed.dart';

@freezed
class BusinessUnit with _$BusinessUnit implements PagingDataItem {
  const factory BusinessUnit({
    @Default(-1) int id,
    @Default("") String name,
    @Default("") String code,
    @Default(-1) int customerId,
    String? buRefId,
    @Default("") String customerName,
    @Default("") String customerCategoryName,
    @Default("") String customerTypeName,
    @Default(-1) int divisionId,
    @Default("") String divisionName,
    @Default(-1) int cityId,
    @Default("") String cityName,
    @Default(-1) int townshipId,
    @Default("") String townshipName,
    @Default(-1) int wayId,
    @Default(0) int createdType,
    @Default("") String wayName,
    @Default("") String address,
    @Default("") String buAddress,
    @Default("") String phoneNumber,
    @Default("") String description,
    // @Default(0) double creditLimit,
    // @Default(CreditType()) CreditType creditType,
  }) = _BusinessUnit;
}
