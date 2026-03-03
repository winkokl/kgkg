// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_return_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsignmentReturnDTO _$ConsignmentReturnDTOFromJson(Map<String, dynamic> json) {
  return _ConsignmentReturnDTO.fromJson(json);
}

/// @nodoc
mixin _$ConsignmentReturnDTO {
  @JsonKey(name: 'consignment_return_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_contract_id')
  int get consignmentContractId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id", includeToJson: false)
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_first_name", includeToJson: false)
  String get customerFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_date')
  String get returnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_return_code', includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'consignment_contract_code', includeToJson: false)
  String get contractCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<ProductDTO> get productDtos => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_charges')
  dynamic get otherChargesAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "grand_total_amount")
  double get grandtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_deduct_method')
  String get returnDeductMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_deduct_amount')
  double get returnDeductAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_return_amount')
  double get totalReturnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance', includeToJson: false)
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  int get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_reason_id')
  int get returnReasonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason_name', includeToJson: false)
  String get returnReasonName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsignmentReturnDTOCopyWith<ConsignmentReturnDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentReturnDTOCopyWith<$Res> {
  factory $ConsignmentReturnDTOCopyWith(ConsignmentReturnDTO value,
          $Res Function(ConsignmentReturnDTO) then) =
      _$ConsignmentReturnDTOCopyWithImpl<$Res, ConsignmentReturnDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'consignment_return_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_contract_id') int consignmentContractId,
      @JsonKey(name: "customer_id", includeToJson: false) int customerId,
      @JsonKey(name: "customer_first_name", includeToJson: false)
      String customerFirstName,
      @JsonKey(name: 'return_date') String returnDate,
      @JsonKey(name: 'consignment_return_code', includeToJson: false)
      String code,
      @JsonKey(name: 'consignment_contract_code', includeToJson: false)
      String contractCode,
      @JsonKey(name: 'products') List<ProductDTO> productDtos,
      String remark,
      String description,
      @JsonKey(name: 'other_charges') dynamic otherChargesAmount,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: "grand_total_amount") double grandtotal,
      @JsonKey(name: 'return_deduct_method') String returnDeductMethod,
      @JsonKey(name: 'return_deduct_amount') double returnDeductAmount,
      @JsonKey(name: 'total_return_amount') double totalReturnAmount,
      @JsonKey(name: 'balance', includeToJson: false) double balance,
      @JsonKey(name: 'status', includeToJson: false) int paymentStatus,
      @JsonKey(name: 'return_reason_id') int returnReasonId,
      @JsonKey(name: 'reason_name', includeToJson: false)
      String returnReasonName});
}

/// @nodoc
class _$ConsignmentReturnDTOCopyWithImpl<$Res,
        $Val extends ConsignmentReturnDTO>
    implements $ConsignmentReturnDTOCopyWith<$Res> {
  _$ConsignmentReturnDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? customerId = null,
    Object? customerFirstName = null,
    Object? returnDate = null,
    Object? code = null,
    Object? contractCode = null,
    Object? productDtos = null,
    Object? remark = null,
    Object? description = null,
    Object? otherChargesAmount = freezed,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? returnDeductMethod = null,
    Object? returnDeductAmount = null,
    Object? totalReturnAmount = null,
    Object? balance = null,
    Object? paymentStatus = null,
    Object? returnReasonId = null,
    Object? returnReasonName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      contractCode: null == contractCode
          ? _value.contractCode
          : contractCode // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value.productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      otherChargesAmount: freezed == otherChargesAmount
          ? _value.otherChargesAmount
          : otherChargesAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandtotal: null == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double,
      returnDeductMethod: null == returnDeductMethod
          ? _value.returnDeductMethod
          : returnDeductMethod // ignore: cast_nullable_to_non_nullable
              as String,
      returnDeductAmount: null == returnDeductAmount
          ? _value.returnDeductAmount
          : returnDeductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturnAmount: null == totalReturnAmount
          ? _value.totalReturnAmount
          : totalReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int,
      returnReasonId: null == returnReasonId
          ? _value.returnReasonId
          : returnReasonId // ignore: cast_nullable_to_non_nullable
              as int,
      returnReasonName: null == returnReasonName
          ? _value.returnReasonName
          : returnReasonName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsignmentReturnDTOImplCopyWith<$Res>
    implements $ConsignmentReturnDTOCopyWith<$Res> {
  factory _$$ConsignmentReturnDTOImplCopyWith(_$ConsignmentReturnDTOImpl value,
          $Res Function(_$ConsignmentReturnDTOImpl) then) =
      __$$ConsignmentReturnDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'consignment_return_id', includeToJson: false) int id,
      @JsonKey(name: 'consignment_contract_id') int consignmentContractId,
      @JsonKey(name: "customer_id", includeToJson: false) int customerId,
      @JsonKey(name: "customer_first_name", includeToJson: false)
      String customerFirstName,
      @JsonKey(name: 'return_date') String returnDate,
      @JsonKey(name: 'consignment_return_code', includeToJson: false)
      String code,
      @JsonKey(name: 'consignment_contract_code', includeToJson: false)
      String contractCode,
      @JsonKey(name: 'products') List<ProductDTO> productDtos,
      String remark,
      String description,
      @JsonKey(name: 'other_charges') dynamic otherChargesAmount,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: "grand_total_amount") double grandtotal,
      @JsonKey(name: 'return_deduct_method') String returnDeductMethod,
      @JsonKey(name: 'return_deduct_amount') double returnDeductAmount,
      @JsonKey(name: 'total_return_amount') double totalReturnAmount,
      @JsonKey(name: 'balance', includeToJson: false) double balance,
      @JsonKey(name: 'status', includeToJson: false) int paymentStatus,
      @JsonKey(name: 'return_reason_id') int returnReasonId,
      @JsonKey(name: 'reason_name', includeToJson: false)
      String returnReasonName});
}

/// @nodoc
class __$$ConsignmentReturnDTOImplCopyWithImpl<$Res>
    extends _$ConsignmentReturnDTOCopyWithImpl<$Res, _$ConsignmentReturnDTOImpl>
    implements _$$ConsignmentReturnDTOImplCopyWith<$Res> {
  __$$ConsignmentReturnDTOImplCopyWithImpl(_$ConsignmentReturnDTOImpl _value,
      $Res Function(_$ConsignmentReturnDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consignmentContractId = null,
    Object? customerId = null,
    Object? customerFirstName = null,
    Object? returnDate = null,
    Object? code = null,
    Object? contractCode = null,
    Object? productDtos = null,
    Object? remark = null,
    Object? description = null,
    Object? otherChargesAmount = freezed,
    Object? subtotal = null,
    Object? grandtotal = null,
    Object? returnDeductMethod = null,
    Object? returnDeductAmount = null,
    Object? totalReturnAmount = null,
    Object? balance = null,
    Object? paymentStatus = null,
    Object? returnReasonId = null,
    Object? returnReasonName = null,
  }) {
    return _then(_$ConsignmentReturnDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consignmentContractId: null == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      contractCode: null == contractCode
          ? _value.contractCode
          : contractCode // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value._productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      otherChargesAmount: freezed == otherChargesAmount
          ? _value.otherChargesAmount
          : otherChargesAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      grandtotal: null == grandtotal
          ? _value.grandtotal
          : grandtotal // ignore: cast_nullable_to_non_nullable
              as double,
      returnDeductMethod: null == returnDeductMethod
          ? _value.returnDeductMethod
          : returnDeductMethod // ignore: cast_nullable_to_non_nullable
              as String,
      returnDeductAmount: null == returnDeductAmount
          ? _value.returnDeductAmount
          : returnDeductAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalReturnAmount: null == totalReturnAmount
          ? _value.totalReturnAmount
          : totalReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int,
      returnReasonId: null == returnReasonId
          ? _value.returnReasonId
          : returnReasonId // ignore: cast_nullable_to_non_nullable
              as int,
      returnReasonName: null == returnReasonName
          ? _value.returnReasonName
          : returnReasonName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsignmentReturnDTOImpl extends _ConsignmentReturnDTO {
  const _$ConsignmentReturnDTOImpl(
      {@JsonKey(name: 'consignment_return_id', includeToJson: false)
      this.id = -1,
      @JsonKey(name: 'consignment_contract_id') this.consignmentContractId = -1,
      @JsonKey(name: "customer_id", includeToJson: false) this.customerId = -1,
      @JsonKey(name: "customer_first_name", includeToJson: false)
      this.customerFirstName = "",
      @JsonKey(name: 'return_date') this.returnDate = "",
      @JsonKey(name: 'consignment_return_code', includeToJson: false)
      this.code = "",
      @JsonKey(name: 'consignment_contract_code', includeToJson: false)
      this.contractCode = "",
      @JsonKey(name: 'products') final List<ProductDTO> productDtos = const [],
      this.remark = "",
      this.description = "",
      @JsonKey(name: 'other_charges') this.otherChargesAmount = 0,
      @JsonKey(name: 'sub_total') this.subtotal = 0,
      @JsonKey(name: "grand_total_amount") this.grandtotal = 0,
      @JsonKey(name: 'return_deduct_method') this.returnDeductMethod = "",
      @JsonKey(name: 'return_deduct_amount') this.returnDeductAmount = 0,
      @JsonKey(name: 'total_return_amount') this.totalReturnAmount = 0,
      @JsonKey(name: 'balance', includeToJson: false) this.balance = 0,
      @JsonKey(name: 'status', includeToJson: false) this.paymentStatus = -1,
      @JsonKey(name: 'return_reason_id') this.returnReasonId = -1,
      @JsonKey(name: 'reason_name', includeToJson: false)
      this.returnReasonName = ""})
      : _productDtos = productDtos,
        super._();

  factory _$ConsignmentReturnDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsignmentReturnDTOImplFromJson(json);

  @override
  @JsonKey(name: 'consignment_return_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: 'consignment_contract_id')
  final int consignmentContractId;
  @override
  @JsonKey(name: "customer_id", includeToJson: false)
  final int customerId;
  @override
  @JsonKey(name: "customer_first_name", includeToJson: false)
  final String customerFirstName;
  @override
  @JsonKey(name: 'return_date')
  final String returnDate;
  @override
  @JsonKey(name: 'consignment_return_code', includeToJson: false)
  final String code;
  @override
  @JsonKey(name: 'consignment_contract_code', includeToJson: false)
  final String contractCode;
  final List<ProductDTO> _productDtos;
  @override
  @JsonKey(name: 'products')
  List<ProductDTO> get productDtos {
    if (_productDtos is EqualUnmodifiableListView) return _productDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDtos);
  }

  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'other_charges')
  final dynamic otherChargesAmount;
  @override
  @JsonKey(name: 'sub_total')
  final double subtotal;
  @override
  @JsonKey(name: "grand_total_amount")
  final double grandtotal;
  @override
  @JsonKey(name: 'return_deduct_method')
  final String returnDeductMethod;
  @override
  @JsonKey(name: 'return_deduct_amount')
  final double returnDeductAmount;
  @override
  @JsonKey(name: 'total_return_amount')
  final double totalReturnAmount;
  @override
  @JsonKey(name: 'balance', includeToJson: false)
  final double balance;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  final int paymentStatus;
  @override
  @JsonKey(name: 'return_reason_id')
  final int returnReasonId;
  @override
  @JsonKey(name: 'reason_name', includeToJson: false)
  final String returnReasonName;

  @override
  String toString() {
    return 'ConsignmentReturnDTO(id: $id, consignmentContractId: $consignmentContractId, customerId: $customerId, customerFirstName: $customerFirstName, returnDate: $returnDate, code: $code, contractCode: $contractCode, productDtos: $productDtos, remark: $remark, description: $description, otherChargesAmount: $otherChargesAmount, subtotal: $subtotal, grandtotal: $grandtotal, returnDeductMethod: $returnDeductMethod, returnDeductAmount: $returnDeductAmount, totalReturnAmount: $totalReturnAmount, balance: $balance, paymentStatus: $paymentStatus, returnReasonId: $returnReasonId, returnReasonName: $returnReasonName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentReturnDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consignmentContractId, consignmentContractId) ||
                other.consignmentContractId == consignmentContractId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerFirstName, customerFirstName) ||
                other.customerFirstName == customerFirstName) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.contractCode, contractCode) ||
                other.contractCode == contractCode) &&
            const DeepCollectionEquality()
                .equals(other._productDtos, _productDtos) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.otherChargesAmount, otherChargesAmount) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.grandtotal, grandtotal) ||
                other.grandtotal == grandtotal) &&
            (identical(other.returnDeductMethod, returnDeductMethod) ||
                other.returnDeductMethod == returnDeductMethod) &&
            (identical(other.returnDeductAmount, returnDeductAmount) ||
                other.returnDeductAmount == returnDeductAmount) &&
            (identical(other.totalReturnAmount, totalReturnAmount) ||
                other.totalReturnAmount == totalReturnAmount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.returnReasonId, returnReasonId) ||
                other.returnReasonId == returnReasonId) &&
            (identical(other.returnReasonName, returnReasonName) ||
                other.returnReasonName == returnReasonName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        consignmentContractId,
        customerId,
        customerFirstName,
        returnDate,
        code,
        contractCode,
        const DeepCollectionEquality().hash(_productDtos),
        remark,
        description,
        const DeepCollectionEquality().hash(otherChargesAmount),
        subtotal,
        grandtotal,
        returnDeductMethod,
        returnDeductAmount,
        totalReturnAmount,
        balance,
        paymentStatus,
        returnReasonId,
        returnReasonName
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentReturnDTOImplCopyWith<_$ConsignmentReturnDTOImpl>
      get copyWith =>
          __$$ConsignmentReturnDTOImplCopyWithImpl<_$ConsignmentReturnDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsignmentReturnDTOImplToJson(
      this,
    );
  }
}

abstract class _ConsignmentReturnDTO extends ConsignmentReturnDTO {
  const factory _ConsignmentReturnDTO(
      {@JsonKey(name: 'consignment_return_id', includeToJson: false)
      final int id,
      @JsonKey(name: 'consignment_contract_id') final int consignmentContractId,
      @JsonKey(name: "customer_id", includeToJson: false) final int customerId,
      @JsonKey(name: "customer_first_name", includeToJson: false)
      final String customerFirstName,
      @JsonKey(name: 'return_date') final String returnDate,
      @JsonKey(name: 'consignment_return_code', includeToJson: false)
      final String code,
      @JsonKey(name: 'consignment_contract_code', includeToJson: false)
      final String contractCode,
      @JsonKey(name: 'products') final List<ProductDTO> productDtos,
      final String remark,
      final String description,
      @JsonKey(name: 'other_charges') final dynamic otherChargesAmount,
      @JsonKey(name: 'sub_total') final double subtotal,
      @JsonKey(name: "grand_total_amount") final double grandtotal,
      @JsonKey(name: 'return_deduct_method') final String returnDeductMethod,
      @JsonKey(name: 'return_deduct_amount') final double returnDeductAmount,
      @JsonKey(name: 'total_return_amount') final double totalReturnAmount,
      @JsonKey(name: 'balance', includeToJson: false) final double balance,
      @JsonKey(name: 'status', includeToJson: false) final int paymentStatus,
      @JsonKey(name: 'return_reason_id') final int returnReasonId,
      @JsonKey(name: 'reason_name', includeToJson: false)
      final String returnReasonName}) = _$ConsignmentReturnDTOImpl;
  const _ConsignmentReturnDTO._() : super._();

  factory _ConsignmentReturnDTO.fromJson(Map<String, dynamic> json) =
      _$ConsignmentReturnDTOImpl.fromJson;

  @override
  @JsonKey(name: 'consignment_return_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: 'consignment_contract_id')
  int get consignmentContractId;
  @override
  @JsonKey(name: "customer_id", includeToJson: false)
  int get customerId;
  @override
  @JsonKey(name: "customer_first_name", includeToJson: false)
  String get customerFirstName;
  @override
  @JsonKey(name: 'return_date')
  String get returnDate;
  @override
  @JsonKey(name: 'consignment_return_code', includeToJson: false)
  String get code;
  @override
  @JsonKey(name: 'consignment_contract_code', includeToJson: false)
  String get contractCode;
  @override
  @JsonKey(name: 'products')
  List<ProductDTO> get productDtos;
  @override
  String get remark;
  @override
  String get description;
  @override
  @JsonKey(name: 'other_charges')
  dynamic get otherChargesAmount;
  @override
  @JsonKey(name: 'sub_total')
  double get subtotal;
  @override
  @JsonKey(name: "grand_total_amount")
  double get grandtotal;
  @override
  @JsonKey(name: 'return_deduct_method')
  String get returnDeductMethod;
  @override
  @JsonKey(name: 'return_deduct_amount')
  double get returnDeductAmount;
  @override
  @JsonKey(name: 'total_return_amount')
  double get totalReturnAmount;
  @override
  @JsonKey(name: 'balance', includeToJson: false)
  double get balance;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  int get paymentStatus;
  @override
  @JsonKey(name: 'return_reason_id')
  int get returnReasonId;
  @override
  @JsonKey(name: 'reason_name', includeToJson: false)
  String get returnReasonName;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentReturnDTOImplCopyWith<_$ConsignmentReturnDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
