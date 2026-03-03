import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_control.freezed.dart';

@freezed
class FilterControl with _$FilterControl {
  const factory FilterControl({
    @Default(false) bool hasDate,
    @Default(false) bool hasCustomer,
    @Default(false) bool hasBusinessUnit,
    @Default(false) bool hasPaymentStatus,
    @Default(false) bool hasOrderStatus,
    @Default(false) bool hasDeliveryNoteStatus,
    @Default(false) bool hasContractStatus,
    @Default(false) bool hasTripSaleRequestStatus,
    @Default(false) bool hasPaymentType,
    @Default(false) bool hasCustomerType,
    @Default(false) bool hasCustomerCategory,
    @Default(false) bool hasExpenseStatus,
    @Default(false) bool hasTripName,
    @Default(false) bool hasWayName,
    @Default(false) bool hasRegion,
    @Default(false) bool hasDistributionRegion,
    @Default(false) bool hasDivision,
    @Default(false) bool hasSaleType,
    @Default(false) bool isNeedToChangeStatusName,
  }) = _FilterControl;
}
