// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MakePaymentDTO _$MakePaymentDTOFromJson(Map<String, dynamic> json) {
  return _MakePaymentDTO.fromJson(json);
}

/// @nodoc
mixin _$MakePaymentDTO {
  @JsonKey(name: "marketing_promotion_plan_return_code")
  String get returnCode => throw _privateConstructorUsedError;
  @JsonKey(name: "marketing_promotion_plan_return_id")
  int get returnId => throw _privateConstructorUsedError;
  @JsonKey(name: "return_date")
  String get returnDate => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_date")
  String get paymentDate => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amt")
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_amt")
  double get paidAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MakePaymentDTOCopyWith<MakePaymentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakePaymentDTOCopyWith<$Res> {
  factory $MakePaymentDTOCopyWith(
          MakePaymentDTO value, $Res Function(MakePaymentDTO) then) =
      _$MakePaymentDTOCopyWithImpl<$Res, MakePaymentDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "marketing_promotion_plan_return_code") String returnCode,
      @JsonKey(name: "marketing_promotion_plan_return_id") int returnId,
      @JsonKey(name: "return_date") String returnDate,
      @JsonKey(name: "payment_date") String paymentDate,
      @JsonKey(name: "total_amt") double totalAmount,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: "paid_amt") double paidAmount});
}

/// @nodoc
class _$MakePaymentDTOCopyWithImpl<$Res, $Val extends MakePaymentDTO>
    implements $MakePaymentDTOCopyWith<$Res> {
  _$MakePaymentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnCode = null,
    Object? returnId = null,
    Object? returnDate = null,
    Object? paymentDate = null,
    Object? totalAmount = null,
    Object? balance = null,
    Object? paidAmount = null,
  }) {
    return _then(_value.copyWith(
      returnCode: null == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      returnId: null == returnId
          ? _value.returnId
          : returnId // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MakePaymentDTOImplCopyWith<$Res>
    implements $MakePaymentDTOCopyWith<$Res> {
  factory _$$MakePaymentDTOImplCopyWith(_$MakePaymentDTOImpl value,
          $Res Function(_$MakePaymentDTOImpl) then) =
      __$$MakePaymentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "marketing_promotion_plan_return_code") String returnCode,
      @JsonKey(name: "marketing_promotion_plan_return_id") int returnId,
      @JsonKey(name: "return_date") String returnDate,
      @JsonKey(name: "payment_date") String paymentDate,
      @JsonKey(name: "total_amt") double totalAmount,
      @JsonKey(name: "balance") double balance,
      @JsonKey(name: "paid_amt") double paidAmount});
}

/// @nodoc
class __$$MakePaymentDTOImplCopyWithImpl<$Res>
    extends _$MakePaymentDTOCopyWithImpl<$Res, _$MakePaymentDTOImpl>
    implements _$$MakePaymentDTOImplCopyWith<$Res> {
  __$$MakePaymentDTOImplCopyWithImpl(
      _$MakePaymentDTOImpl _value, $Res Function(_$MakePaymentDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnCode = null,
    Object? returnId = null,
    Object? returnDate = null,
    Object? paymentDate = null,
    Object? totalAmount = null,
    Object? balance = null,
    Object? paidAmount = null,
  }) {
    return _then(_$MakePaymentDTOImpl(
      returnCode: null == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as String,
      returnId: null == returnId
          ? _value.returnId
          : returnId // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      paidAmount: null == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MakePaymentDTOImpl implements _MakePaymentDTO {
  _$MakePaymentDTOImpl(
      {@JsonKey(name: "marketing_promotion_plan_return_code")
      this.returnCode = "",
      @JsonKey(name: "marketing_promotion_plan_return_id") this.returnId = -1,
      @JsonKey(name: "return_date") this.returnDate = "",
      @JsonKey(name: "payment_date") this.paymentDate = "",
      @JsonKey(name: "total_amt") this.totalAmount = 0,
      @JsonKey(name: "balance") this.balance = 0,
      @JsonKey(name: "paid_amt") this.paidAmount = 0});

  factory _$MakePaymentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MakePaymentDTOImplFromJson(json);

  @override
  @JsonKey(name: "marketing_promotion_plan_return_code")
  final String returnCode;
  @override
  @JsonKey(name: "marketing_promotion_plan_return_id")
  final int returnId;
  @override
  @JsonKey(name: "return_date")
  final String returnDate;
  @override
  @JsonKey(name: "payment_date")
  final String paymentDate;
  @override
  @JsonKey(name: "total_amt")
  final double totalAmount;
  @override
  @JsonKey(name: "balance")
  final double balance;
  @override
  @JsonKey(name: "paid_amt")
  final double paidAmount;

  @override
  String toString() {
    return 'MakePaymentDTO(returnCode: $returnCode, returnId: $returnId, returnDate: $returnDate, paymentDate: $paymentDate, totalAmount: $totalAmount, balance: $balance, paidAmount: $paidAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakePaymentDTOImpl &&
            (identical(other.returnCode, returnCode) ||
                other.returnCode == returnCode) &&
            (identical(other.returnId, returnId) ||
                other.returnId == returnId) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, returnCode, returnId, returnDate,
      paymentDate, totalAmount, balance, paidAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MakePaymentDTOImplCopyWith<_$MakePaymentDTOImpl> get copyWith =>
      __$$MakePaymentDTOImplCopyWithImpl<_$MakePaymentDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MakePaymentDTOImplToJson(
      this,
    );
  }
}

abstract class _MakePaymentDTO implements MakePaymentDTO {
  factory _MakePaymentDTO(
      {@JsonKey(name: "marketing_promotion_plan_return_code")
      final String returnCode,
      @JsonKey(name: "marketing_promotion_plan_return_id") final int returnId,
      @JsonKey(name: "return_date") final String returnDate,
      @JsonKey(name: "payment_date") final String paymentDate,
      @JsonKey(name: "total_amt") final double totalAmount,
      @JsonKey(name: "balance") final double balance,
      @JsonKey(name: "paid_amt")
      final double paidAmount}) = _$MakePaymentDTOImpl;

  factory _MakePaymentDTO.fromJson(Map<String, dynamic> json) =
      _$MakePaymentDTOImpl.fromJson;

  @override
  @JsonKey(name: "marketing_promotion_plan_return_code")
  String get returnCode;
  @override
  @JsonKey(name: "marketing_promotion_plan_return_id")
  int get returnId;
  @override
  @JsonKey(name: "return_date")
  String get returnDate;
  @override
  @JsonKey(name: "payment_date")
  String get paymentDate;
  @override
  @JsonKey(name: "total_amt")
  double get totalAmount;
  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(name: "paid_amt")
  double get paidAmount;
  @override
  @JsonKey(ignore: true)
  _$$MakePaymentDTOImplCopyWith<_$MakePaymentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
