// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_rank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaleRank {
  int get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get saleTargetAmount => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaleRankCopyWith<SaleRank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleRankCopyWith<$Res> {
  factory $SaleRankCopyWith(SaleRank value, $Res Function(SaleRank) then) =
      _$SaleRankCopyWithImpl<$Res, SaleRank>;
  @useResult
  $Res call(
      {int userId,
      String username,
      double amount,
      double saleTargetAmount,
      int rank});
}

/// @nodoc
class _$SaleRankCopyWithImpl<$Res, $Val extends SaleRank>
    implements $SaleRankCopyWith<$Res> {
  _$SaleRankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? amount = null,
    Object? saleTargetAmount = null,
    Object? rank = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$SaleRankImplCopyWith<$Res>
    implements $SaleRankCopyWith<$Res> {
  factory _$$SaleRankImplCopyWith(
          _$SaleRankImpl value, $Res Function(_$SaleRankImpl) then) =
      __$$SaleRankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String username,
      double amount,
      double saleTargetAmount,
      int rank});
}

/// @nodoc
class __$$SaleRankImplCopyWithImpl<$Res>
    extends _$SaleRankCopyWithImpl<$Res, _$SaleRankImpl>
    implements _$$SaleRankImplCopyWith<$Res> {
  __$$SaleRankImplCopyWithImpl(
      _$SaleRankImpl _value, $Res Function(_$SaleRankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? amount = null,
    Object? saleTargetAmount = null,
    Object? rank = null,
  }) {
    return _then(_$SaleRankImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$SaleRankImpl implements _SaleRank {
  const _$SaleRankImpl(
      {this.userId = -1,
      this.username = "",
      this.amount = 0,
      this.saleTargetAmount = 0,
      this.rank = -1});

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final double amount;
  @override
  @JsonKey()
  final double saleTargetAmount;
  @override
  @JsonKey()
  final int rank;

  @override
  String toString() {
    return 'SaleRank(userId: $userId, username: $username, amount: $amount, saleTargetAmount: $saleTargetAmount, rank: $rank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleRankImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.saleTargetAmount, saleTargetAmount) ||
                other.saleTargetAmount == saleTargetAmount) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, username, amount, saleTargetAmount, rank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleRankImplCopyWith<_$SaleRankImpl> get copyWith =>
      __$$SaleRankImplCopyWithImpl<_$SaleRankImpl>(this, _$identity);
}

abstract class _SaleRank implements SaleRank {
  const factory _SaleRank(
      {final int userId,
      final String username,
      final double amount,
      final double saleTargetAmount,
      final int rank}) = _$SaleRankImpl;

  @override
  int get userId;
  @override
  String get username;
  @override
  double get amount;
  @override
  double get saleTargetAmount;
  @override
  int get rank;
  @override
  @JsonKey(ignore: true)
  _$$SaleRankImplCopyWith<_$SaleRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
