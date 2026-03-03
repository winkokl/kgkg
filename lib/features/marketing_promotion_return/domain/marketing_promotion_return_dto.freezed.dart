// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketing_promotion_return_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketingPromotionReturnDTO _$MarketingPromotionReturnDTOFromJson(
    Map<String, dynamic> json) {
  return _MarketingPromotionReturnDTO.fromJson(json);
}

/// @nodoc
mixin _$MarketingPromotionReturnDTO {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_date')
  String get returnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_id')
  int get marketingPromotionPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_id')
  int get marketingPromotionId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_charges')
  double get otherCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total')
  double get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_deduct')
  double get returnDeduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'deduct_amount')
  double get deductAmount => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_amount')
  double get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_status')
  String get returnStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_name')
  String get marketingPromotionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get marketingPromotionPlanCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name')
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<PromotionProductDTO> get productDtos =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'gifts')
  List<GiftItemDTO> get giftItemDtos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketingPromotionReturnDTOCopyWith<MarketingPromotionReturnDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketingPromotionReturnDTOCopyWith<$Res> {
  factory $MarketingPromotionReturnDTOCopyWith(
          MarketingPromotionReturnDTO value,
          $Res Function(MarketingPromotionReturnDTO) then) =
      _$MarketingPromotionReturnDTOCopyWithImpl<$Res,
          MarketingPromotionReturnDTO>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'return_date') String returnDate,
      @JsonKey(name: 'marketing_promotion_plan_id')
      int marketingPromotionPlanId,
      @JsonKey(name: 'marketing_promotion_id') int marketingPromotionId,
      String description,
      @JsonKey(name: 'sub_total') double subTotal,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total') double grandTotal,
      @JsonKey(name: 'return_deduct') double returnDeduct,
      @JsonKey(name: 'deduct_amount') double deductAmount,
      double total,
      double balance,
      @JsonKey(name: 'paid_amount') double paidAmount,
      @JsonKey(name: 'return_status') String returnStatus,
      @JsonKey(name: 'marketing_promotion_name') String marketingPromotionName,
      @JsonKey(name: 'marketing_promotion_plan_code')
      String marketingPromotionPlanCode,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gifts') List<GiftItemDTO> giftItemDtos});
}

/// @nodoc
class _$MarketingPromotionReturnDTOCopyWithImpl<$Res,
        $Val extends MarketingPromotionReturnDTO>
    implements $MarketingPromotionReturnDTOCopyWith<$Res> {
  _$MarketingPromotionReturnDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? returnDate = null,
    Object? marketingPromotionPlanId = null,
    Object? marketingPromotionId = null,
    Object? description = null,
    Object? subTotal = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? returnDeduct = null,
    Object? deductAmount = null,
    Object? total = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? returnStatus = null,
    Object? marketingPromotionName = null,
    Object? marketingPromotionPlanCode = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanId: null == marketingPromotionPlanId
          ? _value.marketingPromotionPlanId
          : marketingPromotionPlanId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionId: null == marketingPromotionId
          ? _value.marketingPromotionId
          : marketingPromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      returnDeduct: null == returnDeduct
          ? _value.returnDeduct
          : returnDeduct // ignore: cast_nullable_to_non_nullable
              as double,
      deductAmount: null == deductAmount
          ? _value.deductAmount
          : deductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnStatus: null == returnStatus
          ? _value.returnStatus
          : returnStatus // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionName: null == marketingPromotionName
          ? _value.marketingPromotionName
          : marketingPromotionName // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanCode: null == marketingPromotionPlanCode
          ? _value.marketingPromotionPlanCode
          : marketingPromotionPlanCode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MarketingPromotionReturnDTOImplCopyWith<$Res>
    implements $MarketingPromotionReturnDTOCopyWith<$Res> {
  factory _$$MarketingPromotionReturnDTOImplCopyWith(
          _$MarketingPromotionReturnDTOImpl value,
          $Res Function(_$MarketingPromotionReturnDTOImpl) then) =
      __$$MarketingPromotionReturnDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'return_date') String returnDate,
      @JsonKey(name: 'marketing_promotion_plan_id')
      int marketingPromotionPlanId,
      @JsonKey(name: 'marketing_promotion_id') int marketingPromotionId,
      String description,
      @JsonKey(name: 'sub_total') double subTotal,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total') double grandTotal,
      @JsonKey(name: 'return_deduct') double returnDeduct,
      @JsonKey(name: 'deduct_amount') double deductAmount,
      double total,
      double balance,
      @JsonKey(name: 'paid_amount') double paidAmount,
      @JsonKey(name: 'return_status') String returnStatus,
      @JsonKey(name: 'marketing_promotion_name') String marketingPromotionName,
      @JsonKey(name: 'marketing_promotion_plan_code')
      String marketingPromotionPlanCode,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'products') List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gifts') List<GiftItemDTO> giftItemDtos});
}

/// @nodoc
class __$$MarketingPromotionReturnDTOImplCopyWithImpl<$Res>
    extends _$MarketingPromotionReturnDTOCopyWithImpl<$Res,
        _$MarketingPromotionReturnDTOImpl>
    implements _$$MarketingPromotionReturnDTOImplCopyWith<$Res> {
  __$$MarketingPromotionReturnDTOImplCopyWithImpl(
      _$MarketingPromotionReturnDTOImpl _value,
      $Res Function(_$MarketingPromotionReturnDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? returnDate = null,
    Object? marketingPromotionPlanId = null,
    Object? marketingPromotionId = null,
    Object? description = null,
    Object? subTotal = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? returnDeduct = null,
    Object? deductAmount = null,
    Object? total = null,
    Object? balance = null,
    Object? paidAmount = null,
    Object? returnStatus = null,
    Object? marketingPromotionName = null,
    Object? marketingPromotionPlanCode = null,
    Object? customerName = null,
    Object? businessUnitName = null,
    Object? productDtos = null,
    Object? giftItemDtos = null,
  }) {
    return _then(_$MarketingPromotionReturnDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanId: null == marketingPromotionPlanId
          ? _value.marketingPromotionPlanId
          : marketingPromotionPlanId // ignore: cast_nullable_to_non_nullable
              as int,
      marketingPromotionId: null == marketingPromotionId
          ? _value.marketingPromotionId
          : marketingPromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      returnDeduct: null == returnDeduct
          ? _value.returnDeduct
          : returnDeduct // ignore: cast_nullable_to_non_nullable
              as double,
      deductAmount: null == deductAmount
          ? _value.deductAmount
          : deductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      returnStatus: null == returnStatus
          ? _value.returnStatus
          : returnStatus // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionName: null == marketingPromotionName
          ? _value.marketingPromotionName
          : marketingPromotionName // ignore: cast_nullable_to_non_nullable
              as String,
      marketingPromotionPlanCode: null == marketingPromotionPlanCode
          ? _value.marketingPromotionPlanCode
          : marketingPromotionPlanCode // ignore: cast_nullable_to_non_nullable
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
class _$MarketingPromotionReturnDTOImpl extends _MarketingPromotionReturnDTO {
  const _$MarketingPromotionReturnDTOImpl(
      {this.id = -1,
      this.code = '',
      @JsonKey(name: 'return_date') this.returnDate = '',
      @JsonKey(name: 'marketing_promotion_plan_id')
      this.marketingPromotionPlanId = -1,
      @JsonKey(name: 'marketing_promotion_id') this.marketingPromotionId = -1,
      this.description = '',
      @JsonKey(name: 'sub_total') this.subTotal = 0,
      @JsonKey(name: 'other_charges') this.otherCharges = 0,
      @JsonKey(name: 'grand_total') this.grandTotal = 0,
      @JsonKey(name: 'return_deduct') this.returnDeduct = 0,
      @JsonKey(name: 'deduct_amount') this.deductAmount = 0,
      this.total = 0,
      this.balance = 0,
      @JsonKey(name: 'paid_amount') this.paidAmount = 0,
      @JsonKey(name: 'return_status') this.returnStatus = '',
      @JsonKey(name: 'marketing_promotion_name')
      this.marketingPromotionName = '',
      @JsonKey(name: 'marketing_promotion_plan_code')
      this.marketingPromotionPlanCode = '',
      @JsonKey(name: 'customer_name') this.customerName = '',
      @JsonKey(name: 'business_unit_name') this.businessUnitName = '',
      @JsonKey(name: 'products')
      final List<PromotionProductDTO> productDtos = const [],
      @JsonKey(name: 'gifts') final List<GiftItemDTO> giftItemDtos = const []})
      : _productDtos = productDtos,
        _giftItemDtos = giftItemDtos,
        super._();

  factory _$MarketingPromotionReturnDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MarketingPromotionReturnDTOImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: 'return_date')
  final String returnDate;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id')
  final int marketingPromotionPlanId;
  @override
  @JsonKey(name: 'marketing_promotion_id')
  final int marketingPromotionId;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'sub_total')
  final double subTotal;
  @override
  @JsonKey(name: 'other_charges')
  final double otherCharges;
  @override
  @JsonKey(name: 'grand_total')
  final double grandTotal;
  @override
  @JsonKey(name: 'return_deduct')
  final double returnDeduct;
  @override
  @JsonKey(name: 'deduct_amount')
  final double deductAmount;
  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey()
  final double balance;
  @override
  @JsonKey(name: 'paid_amount')
  final double paidAmount;
  @override
  @JsonKey(name: 'return_status')
  final String returnStatus;
  @override
  @JsonKey(name: 'marketing_promotion_name')
  final String marketingPromotionName;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  final String marketingPromotionPlanCode;
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
  @JsonKey(name: 'gifts')
  List<GiftItemDTO> get giftItemDtos {
    if (_giftItemDtos is EqualUnmodifiableListView) return _giftItemDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftItemDtos);
  }

  @override
  String toString() {
    return 'MarketingPromotionReturnDTO(id: $id, code: $code, returnDate: $returnDate, marketingPromotionPlanId: $marketingPromotionPlanId, marketingPromotionId: $marketingPromotionId, description: $description, subTotal: $subTotal, otherCharges: $otherCharges, grandTotal: $grandTotal, returnDeduct: $returnDeduct, deductAmount: $deductAmount, total: $total, balance: $balance, paidAmount: $paidAmount, returnStatus: $returnStatus, marketingPromotionName: $marketingPromotionName, marketingPromotionPlanCode: $marketingPromotionPlanCode, customerName: $customerName, businessUnitName: $businessUnitName, productDtos: $productDtos, giftItemDtos: $giftItemDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingPromotionReturnDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(
                    other.marketingPromotionPlanId, marketingPromotionPlanId) ||
                other.marketingPromotionPlanId == marketingPromotionPlanId) &&
            (identical(other.marketingPromotionId, marketingPromotionId) ||
                other.marketingPromotionId == marketingPromotionId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.otherCharges, otherCharges) ||
                other.otherCharges == otherCharges) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.returnDeduct, returnDeduct) ||
                other.returnDeduct == returnDeduct) &&
            (identical(other.deductAmount, deductAmount) ||
                other.deductAmount == deductAmount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.returnStatus, returnStatus) ||
                other.returnStatus == returnStatus) &&
            (identical(other.marketingPromotionName, marketingPromotionName) ||
                other.marketingPromotionName == marketingPromotionName) &&
            (identical(other.marketingPromotionPlanCode,
                    marketingPromotionPlanCode) ||
                other.marketingPromotionPlanCode ==
                    marketingPromotionPlanCode) &&
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
        code,
        returnDate,
        marketingPromotionPlanId,
        marketingPromotionId,
        description,
        subTotal,
        otherCharges,
        grandTotal,
        returnDeduct,
        deductAmount,
        total,
        balance,
        paidAmount,
        returnStatus,
        marketingPromotionName,
        marketingPromotionPlanCode,
        customerName,
        businessUnitName,
        const DeepCollectionEquality().hash(_productDtos),
        const DeepCollectionEquality().hash(_giftItemDtos)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingPromotionReturnDTOImplCopyWith<_$MarketingPromotionReturnDTOImpl>
      get copyWith => __$$MarketingPromotionReturnDTOImplCopyWithImpl<
          _$MarketingPromotionReturnDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketingPromotionReturnDTOImplToJson(
      this,
    );
  }
}

abstract class _MarketingPromotionReturnDTO
    extends MarketingPromotionReturnDTO {
  const factory _MarketingPromotionReturnDTO(
      {final int id,
      final String code,
      @JsonKey(name: 'return_date') final String returnDate,
      @JsonKey(name: 'marketing_promotion_plan_id')
      final int marketingPromotionPlanId,
      @JsonKey(name: 'marketing_promotion_id') final int marketingPromotionId,
      final String description,
      @JsonKey(name: 'sub_total') final double subTotal,
      @JsonKey(name: 'other_charges') final double otherCharges,
      @JsonKey(name: 'grand_total') final double grandTotal,
      @JsonKey(name: 'return_deduct') final double returnDeduct,
      @JsonKey(name: 'deduct_amount') final double deductAmount,
      final double total,
      final double balance,
      @JsonKey(name: 'paid_amount') final double paidAmount,
      @JsonKey(name: 'return_status') final String returnStatus,
      @JsonKey(name: 'marketing_promotion_name')
      final String marketingPromotionName,
      @JsonKey(name: 'marketing_promotion_plan_code')
      final String marketingPromotionPlanCode,
      @JsonKey(name: 'customer_name') final String customerName,
      @JsonKey(name: 'business_unit_name') final String businessUnitName,
      @JsonKey(name: 'products') final List<PromotionProductDTO> productDtos,
      @JsonKey(name: 'gifts')
      final List<GiftItemDTO>
          giftItemDtos}) = _$MarketingPromotionReturnDTOImpl;
  const _MarketingPromotionReturnDTO._() : super._();

  factory _MarketingPromotionReturnDTO.fromJson(Map<String, dynamic> json) =
      _$MarketingPromotionReturnDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: 'return_date')
  String get returnDate;
  @override
  @JsonKey(name: 'marketing_promotion_plan_id')
  int get marketingPromotionPlanId;
  @override
  @JsonKey(name: 'marketing_promotion_id')
  int get marketingPromotionId;
  @override
  String get description;
  @override
  @JsonKey(name: 'sub_total')
  double get subTotal;
  @override
  @JsonKey(name: 'other_charges')
  double get otherCharges;
  @override
  @JsonKey(name: 'grand_total')
  double get grandTotal;
  @override
  @JsonKey(name: 'return_deduct')
  double get returnDeduct;
  @override
  @JsonKey(name: 'deduct_amount')
  double get deductAmount;
  @override
  double get total;
  @override
  double get balance;
  @override
  @JsonKey(name: 'paid_amount')
  double get paidAmount;
  @override
  @JsonKey(name: 'return_status')
  String get returnStatus;
  @override
  @JsonKey(name: 'marketing_promotion_name')
  String get marketingPromotionName;
  @override
  @JsonKey(name: 'marketing_promotion_plan_code')
  String get marketingPromotionPlanCode;
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
  @JsonKey(name: 'gifts')
  List<GiftItemDTO> get giftItemDtos;
  @override
  @JsonKey(ignore: true)
  _$$MarketingPromotionReturnDTOImplCopyWith<_$MarketingPromotionReturnDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
