import 'package:mgkaung_dms_mobile/core/enums/contract_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/delivery_note_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/order_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_request_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/core/enums/expense_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/way.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_name.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_filter_provider.g.dart';

@Riverpod(dependencies: [])
class AllFilters extends _$AllFilters {
  final Allfilter? _allFilter;

  AllFilters([this._allFilter]);
  @override
  Allfilter build() => _allFilter ?? const Allfilter();

  void resetState() => state = const Allfilter();

  void setFromDate(String? date) {
    if (date == null) return;
    state = state.copyWith(fromDate: date);
  }

  void setToDate(String? date) {
    if (date == null) return;
    state = state.copyWith(toDate: date);
  }

  void setCustomer(Customer customer) {
    state = state.copyWith(customer: customer);
  }

  void setBusinessUnit(BusinessUnit businessUnit) {
    state = state.copyWith(businessUnit: businessUnit);
  }

  void setTripName(TripName val) {
    state = state.copyWith(tripName: val);
  }

  void setCustomerType(CustomerType customerType) {
    state = state.copyWith(
      customerType: customerType.id == state.customerType.id ? const CustomerType() : customerType,
    );
  }

  void setDistributionRegion(Region region) {
    state = state.copyWith(
      distributionRegion: region.id == state.distributionRegion.id ? const Region() : region,
    );
  }

  void setContractStatus(ContractStatus contractStatus) {
    state = state.copyWith(
      contractStatus: contractStatus.id == state.contractStatus.id ? ContractStatus.none : contractStatus,
    );
  }

  void setCustomerCategory(CustomerCategory customerCategory) {
    state = state.copyWith(customerCategory: customerCategory);
  }

  void clearCustomer() {
    state = state.copyWith(customer: const Customer());
  }

  void clearCustomerCategory() {
    state = state.copyWith(customerCategory: const CustomerCategory());
  }

  void clearDistributionRegion() {
    state = state.copyWith(distributionRegion: const Region());
  }

  void setPaymentStatus(PaymentStatus status) {
    state = state.copyWith(
      paymentStatus: status.id == state.paymentStatus.id ? PaymentStatus.none : status,
    );
  }

  void setOrderStatus(OrderStatus status) {
    state = state.copyWith(
      orderStatus: status.id == state.orderStatus.id ? OrderStatus.all : status,
    );
  }

  void setTripSaleRequestStatus(TripSaleRequestStatus status) {
    state = state.copyWith(
      tripSaleRequestStatus: status.id == state.tripSaleRequestStatus.id ? TripSaleRequestStatus.all : status,
    );
  }

  void setExpenseStatus(ExpenseStatus status) {
    state = state.copyWith(
      expenseStatus: status.id == state.expenseStatus.id ? ExpenseStatus.all : status,
    );
  }

  void setPaymentType(PaymentType type) {
    state = state.copyWith(
      paymentType: type.id == state.paymentType.id ? const PaymentType() : type,
    );
  }

  void setDeliveryNoteStatus(DeliveryNoteStatus deliveryNoteStatus) {
    state = state.copyWith(
      deliveryNoteStatus: deliveryNoteStatus.id == state.deliveryNoteStatus.id ? DeliveryNoteStatus.none : deliveryNoteStatus,
    );
  }

  void setSaleType(SaleType type) {
    state = state.copyWith(
      saleType: type.id == state.saleType.id ? const SaleType() : type,
    );
  }

  void updateRegions(List<Region> val) {
    state = state.copyWith(regions: val);
  }

  void setCity(Division division, int cityId) {
    final city = division.cities.where((e) => e.id == cityId).firstOrNull;

    state = state.copyWith(
      cityId: city == null ? -1 : cityId,
    );
  }

  void setWay(Way way) {
    state = state.copyWith(way: way);
  }

  void clearWay() {
    state = state.copyWith(way: const Way());
  }

  void clearBusinessUnit() {
    state = state.copyWith(businessUnit: const BusinessUnit());
  }

  void clearTripNames() => state = state.copyWith(tripName: const TripName());

  void clearRegions() => state = state.copyWith(regions: []);
}

@riverpod
class FilterApply extends _$FilterApply {
  @override
  Allfilter? build([String? title]) => null;

  void setFilterApply(Allfilter? allFilter) => state = allFilter;

  bool isInitial() => state == null || state == const Allfilter();
}
