// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'good_requisition_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodRequisitionDTO _$GoodRequisitionDTOFromJson(Map<String, dynamic> json) {
  return _GoodRequisitionDTO.fromJson(json);
}

/// @nodoc
mixin _$GoodRequisitionDTO {
  @JsonKey(name: 'marketing_promotion_plan_name')
  String get marketingPromotionPlanName => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get marketingPromotionPlanCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
  MarketingPromotionPlanDTO get marketingPromotionPlanDto =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'good_requisition_date')
  String get goodRequisitionDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_date', includeToJson: false)
  String get requestDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit')
  String get businessUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_id')
  int get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "marketing_promotion_name", includeToJson: false)
  String get marketingPromotionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'bonus_duration', includeToJson: false)
  int get bonusDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashback_duration', includeToJson: false)
  int get cashbackDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos => throw _privateConstructorUsedError;
  @JsonKey(name: 'description', includeToJson: false)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodRequisitionDTOCopyWith<GoodRequisitionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodRequisitionDTOCopyWith<$Res> {
  factory $GoodRequisitionDTOCopyWith(
          GoodRequisitionDTO value, $Res Function(GoodRequisitionDTO) then) =
      _$GoodRequisitionDTOCopyWithImpl<$Res, GoodRequisitionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketing_promotion_plan_name')
      String marketingPromotionPlanName,
      @JsonKey(name: 'marketing_promotion_plan_code')
      String marketingPromotionPlanCode,
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      MarketingPromotionPlanDTO marketingPromotionPlanDto,
      @JsonKey(name: 'good_requisition_date') String goodRequisitionDate,
      @JsonKey(name: 'request_date', includeToJson: false) String requestDate,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'business_unit') String businessUnit,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'business_unit_id') int businessUnitId,
      @JsonKey(name: "marketing_promotion_name", includeToJson: false)
      String marketingPromotionName,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerFirstName,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'bonus_duration', includeToJson: false) int bonusDuration,
      @JsonKey(name: 'cashback_duration', includeToJson: false)
      int cashbackDuration,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items') List<GiftItemDTO> giftItemDtos,
      @JsonKey(name: 'description', includeToJson: false) String description,
      @JsonKey(name: 'status', includeToJson: false) String status});

  $MarketingPromotionPlanDTOCopyWith<$Res> get marketingPromotionPlanDto;
}

/// @nodoc
class _$GoodRequisitionDTOCopyWithImpl<$Res, $Val extends GoodRequisitionDTO>
    implements $GoodRequisitionDTOCopyWith<$Res> {
  _$GoodRequisitionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketingPromotionPlanName = null,
    Object? marketingPromotionPlanCode = null,
    Object? marketingPromotionPlanDto = null,
    Object? goodRequisitionDate = null,
    Object? requestDate = null,
    Object? customerName = null,
    Object? businessUnit = null,
    Object? customerId = null,
    Object? businessUnitId = null,
    Object? marketingPromotionName = null,
    Object? businessUnitName = null,
    Object? customerFirstName = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? productDtos = null,
    Object? giftItemDtos = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      marketingPromotionPlanName: null == marketingPromotionPlanName
          ? _value.marketingPromotionPlanName
          : marketingPromotionPlanName // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanCode: null == marketingPromotionPlanCode
          ? _value.marketingPromotionPlanCode
          : marketingPromotionPlanCode // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanDto: null == marketingPromotionPlanDto
          ? _value.marketingPromotionPlanDto
          : marketingPromotionPlanDto // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlanDTO,
      goodRequisitionDate: null == goodRequisitionDate
          ? _value.goodRequisitionDate
          : goodRequisitionDate // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnit: null == businessUnit
          ? _value.businessUnit
          : businessUnit // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionName: null == marketingPromotionName
          ? _value.marketingPromotionName
          : marketingPromotionName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      productDtos: null == productDtos
          ? _value.productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductDTO>,
      giftItemDtos: null == giftItemDtos
          ? _value.giftItemDtos
          : giftItemDtos // ignore: cast_nullable_to_non_nullable
              as List<GiftItemDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketingPromotionPlanDTOCopyWith<$Res> get marketingPromotionPlanDto {
    return $MarketingPromotionPlanDTOCopyWith<$Res>(
        _value.marketingPromotionPlanDto, (value) {
      return _then(_value.copyWith(marketingPromotionPlanDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodRequisitionDTOImplCopyWith<$Res>
    implements $GoodRequisitionDTOCopyWith<$Res> {
  factory _$$GoodRequisitionDTOImplCopyWith(_$GoodRequisitionDTOImpl value,
          $Res Function(_$GoodRequisitionDTOImpl) then) =
      __$$GoodRequisitionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketing_promotion_plan_name')
      String marketingPromotionPlanName,
      @JsonKey(name: 'marketing_promotion_plan_code')
      String marketingPromotionPlanCode,
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      MarketingPromotionPlanDTO marketingPromotionPlanDto,
      @JsonKey(name: 'good_requisition_date') String goodRequisitionDate,
      @JsonKey(name: 'request_date', includeToJson: false) String requestDate,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'business_unit') String businessUnit,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'business_unit_id') int businessUnitId,
      @JsonKey(name: "marketing_promotion_name", includeToJson: false)
      String marketingPromotionName,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      String businessUnitName,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      String customerFirstName,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'bonus_duration', includeToJson: false) int bonusDuration,
      @JsonKey(name: 'cashback_duration', includeToJson: false)
      int cashbackDuration,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items') List<GiftItemDTO> giftItemDtos,
      @JsonKey(name: 'description', includeToJson: false) String description,
      @JsonKey(name: 'status', includeToJson: false) String status});

  @override
  $MarketingPromotionPlanDTOCopyWith<$Res> get marketingPromotionPlanDto;
}

/// @nodoc
class __$$GoodRequisitionDTOImplCopyWithImpl<$Res>
    extends _$GoodRequisitionDTOCopyWithImpl<$Res, _$GoodRequisitionDTOImpl>
    implements _$$GoodRequisitionDTOImplCopyWith<$Res> {
  __$$GoodRequisitionDTOImplCopyWithImpl(_$GoodRequisitionDTOImpl _value,
      $Res Function(_$GoodRequisitionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketingPromotionPlanName = null,
    Object? marketingPromotionPlanCode = null,
    Object? marketingPromotionPlanDto = null,
    Object? goodRequisitionDate = null,
    Object? requestDate = null,
    Object? customerName = null,
    Object? businessUnit = null,
    Object? customerId = null,
    Object? businessUnitId = null,
    Object? marketingPromotionName = null,
    Object? businessUnitName = null,
    Object? customerFirstName = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? bonusDuration = null,
    Object? cashbackDuration = null,
    Object? productDtos = null,
    Object? giftItemDtos = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_$GoodRequisitionDTOImpl(
      marketingPromotionPlanName: null == marketingPromotionPlanName
          ? _value.marketingPromotionPlanName
          : marketingPromotionPlanName // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanCode: null == marketingPromotionPlanCode
          ? _value.marketingPromotionPlanCode
          : marketingPromotionPlanCode // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanDto: null == marketingPromotionPlanDto
          ? _value.marketingPromotionPlanDto
          : marketingPromotionPlanDto // ignore: cast_nullable_to_non_nullable
              as MarketingPromotionPlanDTO,
      goodRequisitionDate: null == goodRequisitionDate
          ? _value.goodRequisitionDate
          : goodRequisitionDate // ignore: cast_nullable_to_non_nullable
              as String,
      requestDate: null == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnit: null == businessUnit
          ? _value.businessUnit
          : businessUnit // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionName: null == marketingPromotionName
          ? _value.marketingPromotionName
          : marketingPromotionName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      bonusDuration: null == bonusDuration
          ? _value.bonusDuration
          : bonusDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cashbackDuration: null == cashbackDuration
          ? _value.cashbackDuration
          : cashbackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      productDtos: null == productDtos
          ? _value._productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<PromotionProductDTO>,
      giftItemDtos: null == giftItemDtos
          ? _value._giftItemDtos
          : giftItemDtos // ignore: cast_nullable_to_non_nullable
              as List<GiftItemDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodRequisitionDTOImpl extends _GoodRequisitionDTO {
  const _$GoodRequisitionDTOImpl(
      {@JsonKey(name: 'marketing_promotion_plan_name')
      this.marketingPromotionPlanName = '',
      @JsonKey(name: 'marketing_promotion_plan_code')
      this.marketingPromotionPlanCode = '',
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      this.marketingPromotionPlanDto = const MarketingPromotionPlanDTO(),
      @JsonKey(name: 'good_requisition_date') this.goodRequisitionDate = '',
      @JsonKey(name: 'request_date', includeToJson: false)
      this.requestDate = '',
      @JsonKey(name: 'customer_name') this.customerName = '',
      @JsonKey(name: 'business_unit') this.businessUnit = '',
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'business_unit_id') this.businessUnitId = -1,
      @JsonKey(name: "marketing_promotion_name", includeToJson: false)
      this.marketingPromotionName = '',
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      this.businessUnitName = '',
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      this.customerFirstName = '',
      @JsonKey(name: 'start_date') this.startDate = '',
      @JsonKey(name: 'end_date') this.endDate = '',
      @JsonKey(name: 'bonus_duration', includeToJson: false)
      this.bonusDuration = 0,
      @JsonKey(name: 'cashback_duration', includeToJson: false)
      this.cashbackDuration = 0,
      @JsonKey(name: 'products')
      final List<PromotionProductDTO> productDtos = const [],
      @JsonKey(name: 'gift_items')
      final List<GiftItemDTO> giftItemDtos = const [],
      @JsonKey(name: 'description', includeToJson: false) this.description = '',
      @JsonKey(name: 'status', includeToJson: false) this.status = ''})
      : _productDtos = productDtos,
        _giftItemDtos = giftItemDtos,
        super._();

  factory _$GoodRequisitionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodRequisitionDTOImplFromJson(json);

  @override
  @JsonKey(name: 'marketing_promotion_plan_name')
  final String marketingPromotionPlanName;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  final String marketingPromotionPlanCode;
  @override
  @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
  final MarketingPromotionPlanDTO marketingPromotionPlanDto;
  @override
  @JsonKey(name: 'good_requisition_date')
  final String goodRequisitionDate;
  @override
  @JsonKey(name: 'request_date', includeToJson: false)
  final String requestDate;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'business_unit')
  final String businessUnit;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'business_unit_id')
  final int businessUnitId;
  @override
  @JsonKey(name: "marketing_promotion_name", includeToJson: false)
  final String marketingPromotionName;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  final String businessUnitName;
  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  final String customerFirstName;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'bonus_duration', includeToJson: false)
  final int bonusDuration;
  @override
  @JsonKey(name: 'cashback_duration', includeToJson: false)
  final int cashbackDuration;
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
  @JsonKey(name: 'description', includeToJson: false)
  final String description;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  final String status;

  @override
  String toString() {
    return 'GoodRequisitionDTO(marketingPromotionPlanName: $marketingPromotionPlanName, marketingPromotionPlanCode: $marketingPromotionPlanCode, marketingPromotionPlanDto: $marketingPromotionPlanDto, goodRequisitionDate: $goodRequisitionDate, requestDate: $requestDate, customerName: $customerName, businessUnit: $businessUnit, customerId: $customerId, businessUnitId: $businessUnitId, marketingPromotionName: $marketingPromotionName, businessUnitName: $businessUnitName, customerFirstName: $customerFirstName, startDate: $startDate, endDate: $endDate, bonusDuration: $bonusDuration, cashbackDuration: $cashbackDuration, productDtos: $productDtos, giftItemDtos: $giftItemDtos, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodRequisitionDTOImpl &&
            (identical(other.marketingPromotionPlanName,
                    marketingPromotionPlanName) ||
                other.marketingPromotionPlanName ==
                    marketingPromotionPlanName) &&
            (identical(other.marketingPromotionPlanCode,
                    marketingPromotionPlanCode) ||
                other.marketingPromotionPlanCode ==
                    marketingPromotionPlanCode) &&
            (identical(other.marketingPromotionPlanDto, marketingPromotionPlanDto) ||
                other.marketingPromotionPlanDto == marketingPromotionPlanDto) &&
            (identical(other.goodRequisitionDate, goodRequisitionDate) ||
                other.goodRequisitionDate == goodRequisitionDate) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.businessUnit, businessUnit) ||
                other.businessUnit == businessUnit) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.marketingPromotionName, marketingPromotionName) ||
                other.marketingPromotionName == marketingPromotionName) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.customerFirstName, customerFirstName) ||
                other.customerFirstName == customerFirstName) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.bonusDuration, bonusDuration) ||
                other.bonusDuration == bonusDuration) &&
            (identical(other.cashbackDuration, cashbackDuration) ||
                other.cashbackDuration == cashbackDuration) &&
            const DeepCollectionEquality()
                .equals(other._productDtos, _productDtos) &&
            const DeepCollectionEquality()
                .equals(other._giftItemDtos, _giftItemDtos) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        marketingPromotionPlanName,
        marketingPromotionPlanCode,
        marketingPromotionPlanDto,
        goodRequisitionDate,
        requestDate,
        customerName,
        businessUnit,
        customerId,
        businessUnitId,
        marketingPromotionName,
        businessUnitName,
        customerFirstName,
        startDate,
        endDate,
        bonusDuration,
        cashbackDuration,
        const DeepCollectionEquality().hash(_productDtos),
        const DeepCollectionEquality().hash(_giftItemDtos),
        description,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodRequisitionDTOImplCopyWith<_$GoodRequisitionDTOImpl> get copyWith =>
      __$$GoodRequisitionDTOImplCopyWithImpl<_$GoodRequisitionDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodRequisitionDTOImplToJson(
      this,
    );
  }
}

abstract class _GoodRequisitionDTO extends GoodRequisitionDTO {
  const factory _GoodRequisitionDTO(
      {@JsonKey(name: 'marketing_promotion_plan_name')
      final String marketingPromotionPlanName,
      @JsonKey(name: 'marketing_promotion_plan_code')
      final String marketingPromotionPlanCode,
      @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
      final MarketingPromotionPlanDTO marketingPromotionPlanDto,
      @JsonKey(name: 'good_requisition_date') final String goodRequisitionDate,
      @JsonKey(name: 'request_date', includeToJson: false)
      final String requestDate,
      @JsonKey(name: 'customer_name') final String customerName,
      @JsonKey(name: 'business_unit') final String businessUnit,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'business_unit_id') final int businessUnitId,
      @JsonKey(name: "marketing_promotion_name", includeToJson: false)
      final String marketingPromotionName,
      @JsonKey(name: 'business_unit_name', includeToJson: false)
      final String businessUnitName,
      @JsonKey(name: 'customer_first_name', includeToJson: false)
      final String customerFirstName,
      @JsonKey(name: 'start_date') final String startDate,
      @JsonKey(name: 'end_date') final String endDate,
      @JsonKey(name: 'bonus_duration', includeToJson: false)
      final int bonusDuration,
      @JsonKey(name: 'cashback_duration', includeToJson: false)
      final int cashbackDuration,
      @JsonKey(name: 'products') final List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gift_items') final List<GiftItemDTO> giftItemDtos,
      @JsonKey(name: 'description', includeToJson: false)
      final String description,
      @JsonKey(name: 'status', includeToJson: false)
      final String status}) = _$GoodRequisitionDTOImpl;
  const _GoodRequisitionDTO._() : super._();

  factory _GoodRequisitionDTO.fromJson(Map<String, dynamic> json) =
      _$GoodRequisitionDTOImpl.fromJson;

  @override
  @JsonKey(name: 'marketing_promotion_plan_name')
  String get marketingPromotionPlanName;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get marketingPromotionPlanCode;
  @override
  @JsonKey(name: 'marketing_promotion_plan', includeToJson: false)
  MarketingPromotionPlanDTO get marketingPromotionPlanDto;
  @override
  @JsonKey(name: 'good_requisition_date')
  String get goodRequisitionDate;
  @override
  @JsonKey(name: 'request_date', includeToJson: false)
  String get requestDate;
  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'business_unit')
  String get businessUnit;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'business_unit_id')
  int get businessUnitId;
  @override
  @JsonKey(name: "marketing_promotion_name", includeToJson: false)
  String get marketingPromotionName;
  @override
  @JsonKey(name: 'business_unit_name', includeToJson: false)
  String get businessUnitName;
  @override
  @JsonKey(name: 'customer_first_name', includeToJson: false)
  String get customerFirstName;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'bonus_duration', includeToJson: false)
  int get bonusDuration;
  @override
  @JsonKey(name: 'cashback_duration', includeToJson: false)
  int get cashbackDuration;
  @override
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos;
  @override
  @JsonKey(name: 'gift_items')
  List<GiftItemDTO> get giftItemDtos;
  @override
  @JsonKey(name: 'description', includeToJson: false)
  String get description;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$GoodRequisitionDTOImplCopyWith<_$GoodRequisitionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
