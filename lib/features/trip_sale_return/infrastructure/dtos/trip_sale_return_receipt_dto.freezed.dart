// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sale_return_receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripSaleReturnReceiptDTO _$TripSaleReturnReceiptDTOFromJson(
    Map<String, dynamic> json) {
  return _TripSaleReturnReceiptDTO.fromJson(json);
}

/// @nodoc
mixin _$TripSaleReturnReceiptDTO {
  @JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_made_date')
  String get paymentMadeDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_made_amount')
  double get paymentMadeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_sale_return_id')
  int get tripSalesReturnId => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_date', includeToJson: false)
  String get returnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_sale_return_code', includeToJson: false)
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false)
  String get invoiceCode => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "total_return_amount", includeToJson: false)
  double get totalReturnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature', includeToJson: false)
  String get signUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripSaleReturnReceiptDTOCopyWith<TripSaleReturnReceiptDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSaleReturnReceiptDTOCopyWith<$Res> {
  factory $TripSaleReturnReceiptDTOCopyWith(TripSaleReturnReceiptDTO value,
          $Res Function(TripSaleReturnReceiptDTO) then) =
      _$TripSaleReturnReceiptDTOCopyWithImpl<$Res, TripSaleReturnReceiptDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false)
      int id,
      @JsonKey(name: 'payment_made_date') String paymentMadeDate,
      @JsonKey(name: 'payment_made_amount') double paymentMadeAmount,
      @JsonKey(name: 'trip_sale_return_id') int tripSalesReturnId,
      @JsonKey(name: 'return_date', includeToJson: false) String returnDate,
      @JsonKey(name: 'trip_sale_return_code', includeToJson: false) String code,
      @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false)
      String invoiceCode,
      String remark,
      String description,
      @JsonKey(name: "total_return_amount", includeToJson: false)
      double totalReturnAmount,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'signature', includeToJson: false) String signUrl,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName});
}

/// @nodoc
class _$TripSaleReturnReceiptDTOCopyWithImpl<$Res,
        $Val extends TripSaleReturnReceiptDTO>
    implements $TripSaleReturnReceiptDTOCopyWith<$Res> {
  _$TripSaleReturnReceiptDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentMadeDate = null,
    Object? paymentMadeAmount = null,
    Object? tripSalesReturnId = null,
    Object? returnDate = null,
    Object? code = null,
    Object? invoiceCode = null,
    Object? remark = null,
    Object? description = null,
    Object? totalReturnAmount = null,
    Object? balance = null,
    Object? signUrl = null,
    Object? paymentMethodId = null,
    Object? paymentMethodName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMadeDate: null == paymentMadeDate
          ? _value.paymentMadeDate
          : paymentMadeDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMadeAmount: null == paymentMadeAmount
          ? _value.paymentMadeAmount
          : paymentMadeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tripSalesReturnId: null == tripSalesReturnId
          ? _value.tripSalesReturnId
          : tripSalesReturnId // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      totalReturnAmount: null == totalReturnAmount
          ? _value.totalReturnAmount
          : totalReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripSaleReturnReceiptDTOImplCopyWith<$Res>
    implements $TripSaleReturnReceiptDTOCopyWith<$Res> {
  factory _$$TripSaleReturnReceiptDTOImplCopyWith(
          _$TripSaleReturnReceiptDTOImpl value,
          $Res Function(_$TripSaleReturnReceiptDTOImpl) then) =
      __$$TripSaleReturnReceiptDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false)
      int id,
      @JsonKey(name: 'payment_made_date') String paymentMadeDate,
      @JsonKey(name: 'payment_made_amount') double paymentMadeAmount,
      @JsonKey(name: 'trip_sale_return_id') int tripSalesReturnId,
      @JsonKey(name: 'return_date', includeToJson: false) String returnDate,
      @JsonKey(name: 'trip_sale_return_code', includeToJson: false) String code,
      @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false)
      String invoiceCode,
      String remark,
      String description,
      @JsonKey(name: "total_return_amount", includeToJson: false)
      double totalReturnAmount,
      @JsonKey(name: 'balance') double balance,
      @JsonKey(name: 'signature', includeToJson: false) String signUrl,
      @JsonKey(name: 'payment_method_id') int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      String paymentMethodName});
}

/// @nodoc
class __$$TripSaleReturnReceiptDTOImplCopyWithImpl<$Res>
    extends _$TripSaleReturnReceiptDTOCopyWithImpl<$Res,
        _$TripSaleReturnReceiptDTOImpl>
    implements _$$TripSaleReturnReceiptDTOImplCopyWith<$Res> {
  __$$TripSaleReturnReceiptDTOImplCopyWithImpl(
      _$TripSaleReturnReceiptDTOImpl _value,
      $Res Function(_$TripSaleReturnReceiptDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paymentMadeDate = null,
    Object? paymentMadeAmount = null,
    Object? tripSalesReturnId = null,
    Object? returnDate = null,
    Object? code = null,
    Object? invoiceCode = null,
    Object? remark = null,
    Object? description = null,
    Object? totalReturnAmount = null,
    Object? balance = null,
    Object? signUrl = null,
    Object? paymentMethodId = null,
    Object? paymentMethodName = null,
  }) {
    return _then(_$TripSaleReturnReceiptDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMadeDate: null == paymentMadeDate
          ? _value.paymentMadeDate
          : paymentMadeDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMadeAmount: null == paymentMadeAmount
          ? _value.paymentMadeAmount
          : paymentMadeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tripSalesReturnId: null == tripSalesReturnId
          ? _value.tripSalesReturnId
          : tripSalesReturnId // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCode: null == invoiceCode
          ? _value.invoiceCode
          : invoiceCode // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      totalReturnAmount: null == totalReturnAmount
          ? _value.totalReturnAmount
          : totalReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripSaleReturnReceiptDTOImpl extends _TripSaleReturnReceiptDTO {
  const _$TripSaleReturnReceiptDTOImpl(
      {@JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false)
      this.id = -1,
      @JsonKey(name: 'payment_made_date') this.paymentMadeDate = "",
      @JsonKey(name: 'payment_made_amount') this.paymentMadeAmount = 0,
      @JsonKey(name: 'trip_sale_return_id') this.tripSalesReturnId = -1,
      @JsonKey(name: 'return_date', includeToJson: false) this.returnDate = "",
      @JsonKey(name: 'trip_sale_return_code', includeToJson: false)
      this.code = "",
      @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false)
      this.invoiceCode = "",
      this.remark = "",
      this.description = "",
      @JsonKey(name: "total_return_amount", includeToJson: false)
      this.totalReturnAmount = 0,
      @JsonKey(name: 'balance') this.balance = 0,
      @JsonKey(name: 'signature', includeToJson: false) this.signUrl = "",
      @JsonKey(name: 'payment_method_id') this.paymentMethodId = -1,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      this.paymentMethodName = ""})
      : super._();

  factory _$TripSaleReturnReceiptDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripSaleReturnReceiptDTOImplFromJson(json);

  @override
  @JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false)
  final int id;
  @override
  @JsonKey(name: 'payment_made_date')
  final String paymentMadeDate;
  @override
  @JsonKey(name: 'payment_made_amount')
  final double paymentMadeAmount;
  @override
  @JsonKey(name: 'trip_sale_return_id')
  final int tripSalesReturnId;
  @override
  @JsonKey(name: 'return_date', includeToJson: false)
  final String returnDate;
  @override
  @JsonKey(name: 'trip_sale_return_code', includeToJson: false)
  final String code;
  @override
  @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false)
  final String invoiceCode;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: "total_return_amount", includeToJson: false)
  final double totalReturnAmount;
  @override
  @JsonKey(name: 'balance')
  final double balance;
  @override
  @JsonKey(name: 'signature', includeToJson: false)
  final String signUrl;
  @override
  @JsonKey(name: 'payment_method_id')
  final int paymentMethodId;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  final String paymentMethodName;

  @override
  String toString() {
    return 'TripSaleReturnReceiptDTO(id: $id, paymentMadeDate: $paymentMadeDate, paymentMadeAmount: $paymentMadeAmount, tripSalesReturnId: $tripSalesReturnId, returnDate: $returnDate, code: $code, invoiceCode: $invoiceCode, remark: $remark, description: $description, totalReturnAmount: $totalReturnAmount, balance: $balance, signUrl: $signUrl, paymentMethodId: $paymentMethodId, paymentMethodName: $paymentMethodName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSaleReturnReceiptDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentMadeDate, paymentMadeDate) ||
                other.paymentMadeDate == paymentMadeDate) &&
            (identical(other.paymentMadeAmount, paymentMadeAmount) ||
                other.paymentMadeAmount == paymentMadeAmount) &&
            (identical(other.tripSalesReturnId, tripSalesReturnId) ||
                other.tripSalesReturnId == tripSalesReturnId) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.invoiceCode, invoiceCode) ||
                other.invoiceCode == invoiceCode) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.totalReturnAmount, totalReturnAmount) ||
                other.totalReturnAmount == totalReturnAmount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.paymentMethodName, paymentMethodName) ||
                other.paymentMethodName == paymentMethodName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      paymentMadeDate,
      paymentMadeAmount,
      tripSalesReturnId,
      returnDate,
      code,
      invoiceCode,
      remark,
      description,
      totalReturnAmount,
      balance,
      signUrl,
      paymentMethodId,
      paymentMethodName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSaleReturnReceiptDTOImplCopyWith<_$TripSaleReturnReceiptDTOImpl>
      get copyWith => __$$TripSaleReturnReceiptDTOImplCopyWithImpl<
          _$TripSaleReturnReceiptDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripSaleReturnReceiptDTOImplToJson(
      this,
    );
  }
}

abstract class _TripSaleReturnReceiptDTO extends TripSaleReturnReceiptDTO {
  const factory _TripSaleReturnReceiptDTO(
      {@JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false)
      final int id,
      @JsonKey(name: 'payment_made_date') final String paymentMadeDate,
      @JsonKey(name: 'payment_made_amount') final double paymentMadeAmount,
      @JsonKey(name: 'trip_sale_return_id') final int tripSalesReturnId,
      @JsonKey(name: 'return_date', includeToJson: false)
      final String returnDate,
      @JsonKey(name: 'trip_sale_return_code', includeToJson: false)
      final String code,
      @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false)
      final String invoiceCode,
      final String remark,
      final String description,
      @JsonKey(name: "total_return_amount", includeToJson: false)
      final double totalReturnAmount,
      @JsonKey(name: 'balance') final double balance,
      @JsonKey(name: 'signature', includeToJson: false) final String signUrl,
      @JsonKey(name: 'payment_method_id') final int paymentMethodId,
      @JsonKey(name: 'payment_method_name', includeToJson: false)
      final String paymentMethodName}) = _$TripSaleReturnReceiptDTOImpl;
  const _TripSaleReturnReceiptDTO._() : super._();

  factory _TripSaleReturnReceiptDTO.fromJson(Map<String, dynamic> json) =
      _$TripSaleReturnReceiptDTOImpl.fromJson;

  @override
  @JsonKey(name: 'trip_sale_return_payment_made_id', includeToJson: false)
  int get id;
  @override
  @JsonKey(name: 'payment_made_date')
  String get paymentMadeDate;
  @override
  @JsonKey(name: 'payment_made_amount')
  double get paymentMadeAmount;
  @override
  @JsonKey(name: 'trip_sale_return_id')
  int get tripSalesReturnId;
  @override
  @JsonKey(name: 'return_date', includeToJson: false)
  String get returnDate;
  @override
  @JsonKey(name: 'trip_sale_return_code', includeToJson: false)
  String get code;
  @override
  @JsonKey(name: 'trip_sale_invoice_code', includeToJson: false)
  String get invoiceCode;
  @override
  String get remark;
  @override
  String get description;
  @override
  @JsonKey(name: "total_return_amount", includeToJson: false)
  double get totalReturnAmount;
  @override
  @JsonKey(name: 'balance')
  double get balance;
  @override
  @JsonKey(name: 'signature', includeToJson: false)
  String get signUrl;
  @override
  @JsonKey(name: 'payment_method_id')
  int get paymentMethodId;
  @override
  @JsonKey(name: 'payment_method_name', includeToJson: false)
  String get paymentMethodName;
  @override
  @JsonKey(ignore: true)
  _$$TripSaleReturnReceiptDTOImplCopyWith<_$TripSaleReturnReceiptDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
