// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketing_promotion_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketingPromotionPlanDTO _$MarketingPromotionPlanDTOFromJson(
    Map<String, dynamic> json) {
  return _MarketingPromotionPlanDTO.fromJson(json);
}

/// @nodoc
mixin _$MarketingPromotionPlanDTO {
  @JsonKey(name: 'marketing_promotion_plan_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_name')
  String get name2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_rule')
  int get productRule => throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_rule')
  int get giftRule => throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus_duration')
  int get bonusDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback_duration')
  int get cashbackDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus_reason')
  String get bonusReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback_reason')
  String get cashbackReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_id')
  int get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get planCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'way_id')
  int get wayId => throw _privateConstructorUsedError;
  @JsonKey(name: 'way_name')
  String get wayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name')
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketingPromotionPlanDTOCopyWith<MarketingPromotionPlanDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketingPromotionPlanDTOCopyWith<$Res> {
  factory $MarketingPromotionPlanDTOCopyWith(MarketingPromotionPlanDTO value,
          $Res Function(MarketingPromotionPlanDTO) then) =
      _$MarketingPromotionPlanDTOCopyWithImpl<$Res, MarketingPromotionPlanDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketing_promotion_plan_id') int id,
      @JsonKey(name: 'marketing_promotion_name') String name,
      @JsonKey(name: 'marketing_promotion_plan_name') String name2,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      int status,
      @JsonKey(name: 'product_rule') int productRule,
      @JsonKey(name: 'gift_rule') int giftRule,
      @JsonKey(name: 'bonus_duration') int bonusDuration,
      @JsonKey(name: 'cashback_duration') int cashbackDuration,
      @JsonKey(name: 'bonus_reason') String bonusReason,
      @JsonKey(name: 'cashback_reason') String cashbackReason,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'business_unit_id') int businessUnitId,
      @JsonKey(name: 'marketing_promotion_plan_code') String planCode,
      @JsonKey(name: 'way_id') int wayId,
      @JsonKey(name: 'way_name') String wayName,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items') List<GiftItemDTO> giftItemDtos});
}

/// @nodoc
class _$MarketingPromotionPlanDTOCopyWithImpl<$Res,
        $Val extends MarketingPromotionPlanDTO>
    implements $MarketingPromotionPlanDTOCopyWith<$Res> {
  _$MarketingPromotionPlanDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? name2 = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? productRule = null,
    Object? giftRule = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? bonusReason = null,
    Object? cashbackReason = null,
    Object? customerId = null,
    Object? businessUnitId = null,
    Object? planCode = null,
    Object? wayId = null,
    Object? wayName = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? productDtos = null,
    Object? giftItemDtos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name2: null == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      productRule: null == productRule
          ? _value.productRule
          : productRule // ignore: cast_nullable_to_non_nullable
              as int,
      giftRule: null == giftRule
          ? _value.giftRule
          : giftRule // ignore: cast_nullable_to_non_nullable
              as int,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      bonusReason: null == bonusReason
          ? _value.bonusReason
          : bonusReason // ignore: cast_nullable_to_non_nullable
              as String,
      cashbackReason: null == cashbackReason
          ? _value.cashbackReason
          : cashbackReason // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      wayId: null == wayId
          ? _value.wayId
          : wayId // ignore: cast_nullable_to_non_nullable
              as int,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value.productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductDTO>,
      giftItemDtos: null == giftItemDtos
          ? _value.giftItemDtos
          : giftItemDtos // ignore: cast_nullable_to_non_nullable
              as List<GiftItemDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketingPromotionPlanDTOImplCopyWith<$Res>
    implements $MarketingPromotionPlanDTOCopyWith<$Res> {
  factory _$$MarketingPromotionPlanDTOImplCopyWith(
          _$MarketingPromotionPlanDTOImpl value,
          $Res Function(_$MarketingPromotionPlanDTOImpl) then) =
      __$$MarketingPromotionPlanDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketing_promotion_plan_id') int id,
      @JsonKey(name: 'marketing_promotion_name') String name,
      @JsonKey(name: 'marketing_promotion_plan_name') String name2,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      int status,
      @JsonKey(name: 'product_rule') int productRule,
      @JsonKey(name: 'gift_rule') int giftRule,
      @JsonKey(name: 'bonus_duration') int bonusDuration,
      @JsonKey(name: 'cashback_duration') int cashbackDuration,
      @JsonKey(name: 'bonus_reason') String bonusReason,
      @JsonKey(name: 'cashback_reason') String cashbackReason,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'business_unit_id') int businessUnitId,
      @JsonKey(name: 'marketing_promotion_plan_code') String planCode,
      @JsonKey(name: 'way_id') int wayId,
      @JsonKey(name: 'way_name') String wayName,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items') List<GiftItemDTO> giftItemDtos});
}

/// @nodoc
class __$$MarketingPromotionPlanDTOImplCopyWithImpl<$Res>
    extends _$MarketingPromotionPlanDTOCopyWithImpl<$Res,
        _$MarketingPromotionPlanDTOImpl>
    implements _$$MarketingPromotionPlanDTOImplCopyWith<$Res> {
  __$$MarketingPromotionPlanDTOImplCopyWithImpl(
      _$MarketingPromotionPlanDTOImpl _value,
      $Res Function(_$MarketingPromotionPlanDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? name2 = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? status = null,
    Object? productRule = null,
    Object? giftRule = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? bonusReason = null,
    Object? cashbackReason = null,
    Object? customerId = null,
    Object? businessUnitId = null,
    Object? planCode = null,
    Object? wayId = null,
    Object? wayName = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? productDtos = null,
    Object? giftItemDtos = null,
  }) {
    return _then(_$MarketingPromotionPlanDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name2: null == name2
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      productRule: null == productRule
          ? _value.productRule
          : productRule // ignore: cast_nullable_to_non_nullable
              as int,
      giftRule: null == giftRule
          ? _value.giftRule
          : giftRule // ignore: cast_nullable_to_non_nullable
              as int,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      bonusReason: null == bonusReason
          ? _value.bonusReason
          : bonusReason // ignore: cast_nullable_to_non_nullable
              as String,
      cashbackReason: null == cashbackReason
          ? _value.cashbackReason
          : cashbackReason // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      wayId: null == wayId
          ? _value.wayId
          : wayId // ignore: cast_nullable_to_non_nullable
              as int,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value._productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductDTO>,
      giftItemDtos: null == giftItemDtos
          ? _value._giftItemDtos
          : giftItemDtos // ignore: cast_nullable_to_non_nullable
              as List<GiftItemDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketingPromotionPlanDTOImpl extends _MarketingPromotionPlanDTO {
  const _$MarketingPromotionPlanDTOImpl(
      {@JsonKey(name: 'marketing_promotion_plan_id') this.id = -1,
      @JsonKey(name: 'marketing_promotion_name') this.name = '',
      @JsonKey(name: 'marketing_promotion_plan_name') this.name2 = '',
      @JsonKey(name: 'start_date') this.startDate = '',
      @JsonKey(name: 'end_date') this.endDate = '',
      this.status = 0,
      @JsonKey(name: 'product_rule') this.productRule = 0,
      @JsonKey(name: 'gift_rule') this.giftRule = 0,
      @JsonKey(name: 'bonus_duration') this.bonusDuration = 0,
      @JsonKey(name: 'cashback_duration') this.cashbackDuration = 0,
      @JsonKey(name: 'bonus_reason') this.bonusReason = '',
      @JsonKey(name: 'cashback_reason') this.cashbackReason = '',
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'business_unit_id') this.businessUnitId = -1,
      @JsonKey(name: 'marketing_promotion_plan_code') this.planCode = '',
      @JsonKey(name: 'way_id') this.wayId = -1,
      @JsonKey(name: 'way_name') this.wayName = '',
      @JsonKey(name: 'customer_name') this.customerName = '',
      @JsonKey(name: 'business_unit_name') this.businessUnitName = '',
      @JsonKey(name: 'products')
      final List<PromotionProductDTO> productDtos = const [],
      @JsonKey(name: 'gift_items')
      final List<GiftItemDTO> giftItemDtos = const []})
      : _productDtos = productDtos,
        _giftItemDtos = giftItemDtos,
        super._();

  factory _$MarketingPromotionPlanDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketingPromotionPlanDTOImplFromJson(json);

  @override
  @JsonKey(name: 'marketing_promotion_plan_id')
  final int id;
  @override
  @JsonKey(name: 'marketing_promotion_name')
  final String name;
  @override
  @JsonKey(name: 'marketing_promotion_plan_name')
  final String name2;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: 'product_rule')
  final int productRule;
  @override
  @JsonKey(name: 'gift_rule')
  final int giftRule;
  @override
  @JsonKey(name: 'bonus_duration')
  final int bonusDuration;
  @override
  @JsonKey(name: 'cashback_duration')
  final int cashbackDuration;
  @override
  @JsonKey(name: 'bonus_reason')
  final String bonusReason;
  @override
  @JsonKey(name: 'cashback_reason')
  final String cashbackReason;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'business_unit_id')
  final int businessUnitId;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  final String planCode;
  @override
  @JsonKey(name: 'way_id')
  final int wayId;
  @override
  @JsonKey(name: 'way_name')
  final String wayName;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'business_unit_name')
  final String businessUnitName;
  final List<PromotionProductDTO> _productDtos;
  @override
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos {
    if (_productDtos is EqualUnmodifiableListView) return _productDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDtos);
  }

  final List<GiftItemDTO> _giftItemDtos;
  @override
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos {
    if (_giftItemDtos is EqualUnmodifiableListView) return _giftItemDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftItemDtos);
  }

  @override
  String toString() {
    return 'MarketingPromotionPlanDTO(id: $id, name: $name, name2: $name2, startDate: $startDate, endDate: $endDate, status: $status, productRule: $productRule, giftRule: $giftRule, bonusDuration: $bonusDuration, cashbackDuration: $cashbackDuration, bonusReason: $bonusReason, cashbackReason: $cashbackReason, customerId: $customerId, businessUnitId: $businessUnitId, planCode: $planCode, wayId: $wayId, wayName: $wayName, customerName: $customerName, businessUnitName: $businessUnitName, productDtos: $productDtos, giftItemDtos: $giftItemDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingPromotionPlanDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name2, name2) || other.name2 == name2) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.productRule, productRule) ||
                other.productRule == productRule) &&
            (identical(other.giftRule, giftRule) ||
                other.giftRule == giftRule) &&
            (identical(other.bonusDuration, bonusDuration) ||
                other.bonusDuration == bonusDuration) &&
            (identical(other.cashbackDuration, cashbackDuration) ||
                other.cashbackDuration == cashbackDuration) &&
            (identical(other.bonusReason, bonusReason) ||
                other.bonusReason == bonusReason) &&
            (identical(other.cashbackReason, cashbackReason) ||
                other.cashbackReason == cashbackReason) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.planCode, planCode) ||
                other.planCode == planCode) &&
            (identical(other.wayId, wayId) || other.wayId == wayId) &&
            (identical(other.wayName, wayName) || other.wayName == wayName) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            const DeepCollectionEquality()
                .equals(other._productDtos, _productDtos) &&
            const DeepCollectionEquality()
                .equals(other._giftItemDtos, _giftItemDtos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        name2,
        startDate,
        endDate,
        status,
        productRule,
        giftRule,
        bonusDuration,
        cashbackDuration,
        bonusReason,
        cashbackReason,
        customerId,
        businessUnitId,
        planCode,
        wayId,
        wayName,
        customerName,
        businessUnitName,
        const DeepCollectionEquality().hash(_productDtos),
        const DeepCollectionEquality().hash(_giftItemDtos)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingPromotionPlanDTOImplCopyWith<_$MarketingPromotionPlanDTOImpl>
      get copyWith => __$$MarketingPromotionPlanDTOImplCopyWithImpl<
          _$MarketingPromotionPlanDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketingPromotionPlanDTOImplToJson(
      this,
    );
  }
}

abstract class _MarketingPromotionPlanDTO extends MarketingPromotionPlanDTO {
  const factory _MarketingPromotionPlanDTO(
      {@JsonKey(name: 'marketing_promotion_plan_id') final int id,
      @JsonKey(name: 'marketing_promotion_name') final String name,
      @JsonKey(name: 'marketing_promotion_plan_name') final String name2,
      @JsonKey(name: 'start_date') final String startDate,
      @JsonKey(name: 'end_date') final String endDate,
      final int status,
      @JsonKey(name: 'product_rule') final int productRule,
      @JsonKey(name: 'gift_rule') final int giftRule,
      @JsonKey(name: 'bonus_duration') final int bonusDuration,
      @JsonKey(name: 'cashback_duration') final int cashbackDuration,
      @JsonKey(name: 'bonus_reason') final String bonusReason,
      @JsonKey(name: 'cashback_reason') final String cashbackReason,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'business_unit_id') final int businessUnitId,
      @JsonKey(name: 'marketing_promotion_plan_code') final String planCode,
      @JsonKey(name: 'way_id') final int wayId,
      @JsonKey(name: 'way_name') final String wayName,
      @JsonKey(name: 'customer_name') final String customerName,
      @JsonKey(name: 'business_unit_name') final String businessUnitName,
      @JsonKey(name: 'products') final List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items')
      final List<GiftItemDTO> giftItemDtos}) = _$MarketingPromotionPlanDTOImpl;
  const _MarketingPromotionPlanDTO._() : super._();

  factory _MarketingPromotionPlanDTO.fromJson(Map<String, dynamic> json) =
      _$MarketingPromotionPlanDTOImpl.fromJson;

  @override
  @JsonKey(name: 'marketing_promotion_plan_id')
  int get id;
  @override
  @JsonKey(name: 'marketing_promotion_name')
  String get name;
  @override
  @JsonKey(name: 'marketing_promotion_plan_name')
  String get name2;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  int get status;
  @override
  @JsonKey(name: 'product_rule')
  int get productRule;
  @override
  @JsonKey(name: 'gift_rule')
  int get giftRule;
  @override
  @JsonKey(name: 'bonus_duration')
  int get bonusDuration;
  @override
  @JsonKey(name: 'cashback_duration')
  int get cashbackDuration;
  @override
  @JsonKey(name: 'bonus_reason')
  String get bonusReason;
  @override
  @JsonKey(name: 'cashback_reason')
  String get cashbackReason;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'business_unit_id')
  int get businessUnitId;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get planCode;
  @override
  @JsonKey(name: 'way_id')
  int get wayId;
  @override
  @JsonKey(name: 'way_name')
  String get wayName;
  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'business_unit_name')
  String get businessUnitName;
  @override
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos;
  @override
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos;
  @override
  @JsonKey(ignore: true)
  _$$MarketingPromotionPlanDTOImplCopyWith<_$MarketingPromotionPlanDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
