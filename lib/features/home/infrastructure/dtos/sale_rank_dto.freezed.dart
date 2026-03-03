// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_rank_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaleRankDTO _$SaleRankDTOFromJson(Map<String, dynamic> json) {
  return _SaleRankDTO.fromJson(json);
}

/// @nodoc
mixin _$SaleRankDTO {
  @JsonKey(name: "user_id")
  dynamic get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "total_grand_total_amount")
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_sales_target_amount")
  double get saleTargetAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "ranking")
  int get rank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleRankDTOCopyWith<SaleRankDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleRankDTOCopyWith<$Res> {
  factory $SaleRankDTOCopyWith(
          SaleRankDTO value, $Res Function(SaleRankDTO) then) =
      _$SaleRankDTOCopyWithImpl<$Res, SaleRankDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") dynamic userId,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "total_grand_total_amount") double amount,
      @JsonKey(name: "total_sales_target_amount") double saleTargetAmount,
      @JsonKey(name: "ranking") int rank});
}

/// @nodoc
class _$SaleRankDTOCopyWithImpl<$Res, $Val extends SaleRankDTO>
    implements $SaleRankDTOCopyWith<$Res> {
  _$SaleRankDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = null,
    Object? amount = null,
    Object? saleTargetAmount = null,
    Object? rank = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      saleTargetAmount: null == saleTargetAmount
          ? _value.saleTargetAmount
          : saleTargetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleRankDTOImplCopyWith<$Res>
    implements $SaleRankDTOCopyWith<$Res> {
  factory _$$SaleRankDTOImplCopyWith(
          _$SaleRankDTOImpl value, $Res Function(_$SaleRankDTOImpl) then) =
      __$$SaleRankDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") dynamic userId,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "total_grand_total_amount") double amount,
      @JsonKey(name: "total_sales_target_amount") double saleTargetAmount,
      @JsonKey(name: "ranking") int rank});
}

/// @nodoc
class __$$SaleRankDTOImplCopyWithImpl<$Res>
    extends _$SaleRankDTOCopyWithImpl<$Res, _$SaleRankDTOImpl>
    implements _$$SaleRankDTOImplCopyWith<$Res> {
  __$$SaleRankDTOImplCopyWithImpl(
      _$SaleRankDTOImpl _value, $Res Function(_$SaleRankDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = null,
    Object? amount = null,
    Object? saleTargetAmount = null,
    Object? rank = null,
  }) {
    return _then(_$SaleRankDTOImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      saleTargetAmount: null == saleTargetAmount
          ? _value.saleTargetAmount
          : saleTargetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleRankDTOImpl extends _SaleRankDTO {
  const _$SaleRankDTOImpl(
      {@JsonKey(name: "user_id") this.userId = -1,
      @JsonKey(name: "username") this.username = "",
      @JsonKey(name: "total_grand_total_amount") this.amount = 0,
      @JsonKey(name: "total_sales_target_amount") this.saleTargetAmount = 0,
      @JsonKey(name: "ranking") this.rank = 0})
      : super._();

  factory _$SaleRankDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleRankDTOImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final dynamic userId;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "total_grand_total_amount")
  final double amount;
  @override
  @JsonKey(name: "total_sales_target_amount")
  final double saleTargetAmount;
  @override
  @JsonKey(name: "ranking")
  final int rank;

  @override
  String toString() {
    return 'SaleRankDTO(userId: $userId, username: $username, amount: $amount, saleTargetAmount: $saleTargetAmount, rank: $rank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleRankDTOImpl &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.saleTargetAmount, saleTargetAmount) ||
                other.saleTargetAmount == saleTargetAmount) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      username,
      amount,
      saleTargetAmount,
      rank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleRankDTOImplCopyWith<_$SaleRankDTOImpl> get copyWith =>
      __$$SaleRankDTOImplCopyWithImpl<_$SaleRankDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleRankDTOImplToJson(
      this,
    );
  }
}

abstract class _SaleRankDTO extends SaleRankDTO {
  const factory _SaleRankDTO(
      {@JsonKey(name: "user_id") final dynamic userId,
      @JsonKey(name: "username") final String username,
      @JsonKey(name: "total_grand_total_amount") final double amount,
      @JsonKey(name: "total_sales_target_amount") final double saleTargetAmount,
      @JsonKey(name: "ranking") final int rank}) = _$SaleRankDTOImpl;
  const _SaleRankDTO._() : super._();

  factory _SaleRankDTO.fromJson(Map<String, dynamic> json) =
      _$SaleRankDTOImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  dynamic get userId;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "total_grand_total_amount")
  double get amount;
  @override
  @JsonKey(name: "total_sales_target_amount")
  double get saleTargetAmount;
  @override
  @JsonKey(name: "ranking")
  int get rank;
  @override
  @JsonKey(ignore: true)
  _$$SaleRankDTOImplCopyWith<_$SaleRankDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
