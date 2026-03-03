// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllFilterDTOImpl _$$AllFilterDTOImplFromJson(Map<String, dynamic> json) =>
    _$AllFilterDTOImpl(
      fromDate: json['from_date'] as String? ?? "",
      toDate: json['to_date'] as String? ?? "",
      customerId: json['customer_id'] as String? ?? "",
      customerType: json['customer_type_id'] as String? ?? "",
      customerCategory: json['customer_category_id'] as String? ?? "",
      paymentStatus: json['status'] as String? ?? "",
      orderApprovalStatus: json['order_approval_status'] as String? ?? "",
      expenseStatus: json['expense_status'] as String? ?? "",
      paymentType: json['payment_type_id'] as String? ?? "",
      saleType: json['sale_type_id'] as String? ?? "",
      trip: json['trip_id'] as String? ?? "",
      wayId: json['region_way_id'] as String? ?? "",
      businessUnitName: json['business_unit_id'] as String? ?? "",
      regions: json['region_ids'] as String? ?? "",
      region: json['region_id'] as String? ?? "",
      cityId: json['city_id'] as String? ?? "",
    );

Map<String, dynamic> _$$AllFilterDTOImplToJson(_$AllFilterDTOImpl instance) =>
    <String, dynamic>{
      'from_date': instance.fromDate,
      'to_date': instance.toDate,
      'customer_id': instance.customerId,
      'customer_type_id': instance.customerType,
      'customer_category_id': instance.customerCategory,
      'status': instance.paymentStatus,
      'order_approval_status': instance.orderApprovalStatus,
      'expense_status': instance.expenseStatus,
      'payment_type_id': instance.paymentType,
      'sale_type_id': instance.saleType,
      'trip_id': instance.trip,
      'region_way_id': instance.wayId,
      'business_unit_id': instance.businessUnitName,
      'region_ids': instance.regions,
      'region_id': instance.region,
      'city_id': instance.cityId,
    };
