import 'package:mgkaung_dms_mobile/core/enums/vip_status.dart';
import 'package:mgkaung_dms_mobile/core/helpers/numb_converter.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/city.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/country.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/township.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'customer_form_notifier.g.dart';

@Riverpod(keepAlive: false, dependencies: [])
class CustomerFormNotifier extends _$CustomerFormNotifier {
  CustomerFormNotifier([this._customer]);

  @override
  Customer build() => _customer ?? const Customer();

  final Customer? _customer;

  void setName(String val) => state = state.copyWith(name: val);

  void setCustomerCode(String val) => state = state.copyWith(customerCode: val);

  void setDealingDate(String val) => state = state.copyWith(dealingDate: val);

  void setEmail(String val) => state = state.copyWith(email: val);

  void setPhone1(String val) => state = state.copyWith(phone1: val);

  void setPhone2(String? val) => state = state.copyWith(phone2: val);

  void setPhone3(String? val) => state = state.copyWith(phone3: val);

  void setPhone4(String? val) => state = state.copyWith(phone4: val);

  void setContactPersonFirstName(String val) => state = state.copyWith(contactPersonFirstName: val);

  void setContactPersonLastName(String val) => state = state.copyWith(contactPersonLastName: val);

  void setContactPersonPhoneNumber(String val) => state = state.copyWith(contactPersonPhoneNumber: val);

  void setContactPersonEmail(String val) => state = state.copyWith(contactPersonEmail: val);

  void setCountry(Country val) => state = state.copyWith(country: val);

  void setDivision(Division val) => state = state.copyWith(division: val);

  void setCity(City val) => state = state.copyWith(city: val);

  void setTownship(Township val) => state = state.copyWith(township: val);

  void setAddress(String val) => state = state.copyWith(address: val);

  void setCustomerCategory(CustomerCategory val) => state = state.copyWith(customerCategory: val);

  void setCustomerType(CustomerType val) => state = state.copyWith(customerType: val);

  void setCreditType(CreditType val) => state = state.copyWith(creditType: val);

  void setRegionWayId(int? val) => state = state.copyWith(regionWayId: val);

  void setRegionWayName(String val) => state = state.copyWith(regionWayName: val);

  void setBusinessUnitName(String? val) => state = state.copyWith(businessUnitName: val == null || val.isEmpty ? null : val);

  void setBusinessUnitAddress(String val) => state = state.copyWith(buAddress: val);

  void setBusinessUnitRefId(String? val) => state = state.copyWith(buRefId: val);

  void setCreditLimit(String val) => state = state.copyWith(creditLimit: double.tryParse(val) ?? 0);

  void setConsignmentLimit(String val) => state = state.copyWith(consignmentLimit: val.toDouble());

  void setVIPStatus(VIPStatus val) => state = state.copyWith(vipStatus: val);

  void setRemark(String val) => state = state.copyWith(remark: val);

  void setDescription(String val) => state = state.copyWith(description: val);
}
