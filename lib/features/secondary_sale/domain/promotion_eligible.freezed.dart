// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_eligible.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotionEligible {
  double get bonus => throw _privateConstructorUsedError;
  PromotionEligibleStatus get bonusStatus => throw _privateConstructorUsedError;
  double get cashBack => throw _privateConstructorUsedError;
  PromotionEligibleStatus get cashBackStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionEligibleCopyWith<PromotionEligible> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionEligibleCopyWith<$Res> {
  factory $PromotionEligibleCopyWith(
          PromotionEligible value, $Res Function(PromotionEligible) then) =
      _$PromotionEligibleCopyWithImpl<$Res, PromotionEligible>;
  @useResult
  $Res call(
      {double bonus,
      PromotionEligibleStatus bonusStatus,
      double cashBack,
      PromotionEligibleStatus cashBackStatus});
}

/// @nodoc
class _$PromotionEligibleCopyWithImpl<$Res, $Val extends PromotionEligible>
    implements $PromotionEligibleCopyWith<$Res> {
  _$PromotionEligibleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonus = null,
    Object? bonusStatus = null,
    Object? cashBack = null,
    Object? cashBackStatus = null,
  }) {
    return _then(_value.copyWith(
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      bonusStatus: null == bonusStatus
          ? _value.bonusStatus
          : bonusStatus // ignore: cast_nullable_to_non_nullable
              as PromotionEligibleStatus,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      cashBackStatus: null == cashBackStatus
          ? _value.cashBackStatus
          : cashBackStatus // ignore: cast_nullable_to_non_nullable
              as PromotionEligibleStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionEligibleImplCopyWith<$Res>
    implements $PromotionEligibleCopyWith<$Res> {
  factory _$$PromotionEligibleImplCopyWith(_$PromotionEligibleImpl value,
          $Res Function(_$PromotionEligibleImpl) then) =
      __$$PromotionEligibleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double bonus,
      PromotionEligibleStatus bonusStatus,
      double cashBack,
      PromotionEligibleStatus cashBackStatus});
}

/// @nodoc
class __$$PromotionEligibleImplCopyWithImpl<$Res>
    extends _$PromotionEligibleCopyWithImpl<$Res, _$PromotionEligibleImpl>
    implements _$$PromotionEligibleImplCopyWith<$Res> {
  __$$PromotionEligibleImplCopyWithImpl(_$PromotionEligibleImpl _value,
      $Res Function(_$PromotionEligibleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonus = null,
    Object? bonusStatus = null,
    Object? cashBack = null,
    Object? cashBackStatus = null,
  }) {
    return _then(_$PromotionEligibleImpl(
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      bonusStatus: null == bonusStatus
          ? _value.bonusStatus
          : bonusStatus // ignore: cast_nullable_to_non_nullable
              as PromotionEligibleStatus,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      cashBackStatus: null == cashBackStatus
          ? _value.cashBackStatus
          : cashBackStatus // ignore: cast_nullable_to_non_nullable
              as PromotionEligibleStatus,
    ));
  }
}

/// @nodoc

class _$PromotionEligibleImpl extends _PromotionEligible {
  const _$PromotionEligibleImpl(
      {this.bonus = 0,
      this.bonusStatus = PromotionEligibleStatus.ineligible,
      this.cashBack = 0,
      this.cashBackStatus = PromotionEligibleStatus.ineligible})
      : super._();

  @override
  @JsonKey()
  final double bonus;
  @override
  @JsonKey()
  final PromotionEligibleStatus bonusStatus;
  @override
  @JsonKey()
  final double cashBack;
  @override
  @JsonKey()
  final PromotionEligibleStatus cashBackStatus;

  @override
  String toString() {
    return 'PromotionEligible(bonus: $bonus, bonusStatus: $bonusStatus, cashBack: $cashBack, cashBackStatus: $cashBackStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionEligibleImpl &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.bonusStatus, bonusStatus) ||
                other.bonusStatus == bonusStatus) &&
            (identical(other.cashBack, cashBack) ||
                other.cashBack == cashBack) &&
            (identical(other.cashBackStatus, cashBackStatus) ||
                other.cashBackStatus == cashBackStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bonus, bonusStatus, cashBack, cashBackStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionEligibleImplCopyWith<_$PromotionEligibleImpl> get copyWith =>
      __$$PromotionEligibleImplCopyWithImpl<_$PromotionEligibleImpl>(
          this, _$identity);
}

abstract class _PromotionEligible extends PromotionEligible {
  const factory _PromotionEligible(
      {final double bonus,
      final PromotionEligibleStatus bonusStatus,
      final double cashBack,
      final PromotionEligibleStatus cashBackStatus}) = _$PromotionEligibleImpl;
  const _PromotionEligible._() : super._();

  @override
  double get bonus;
  @override
  PromotionEligibleStatus get bonusStatus;
  @override
  double get cashBack;
  @override
  PromotionEligibleStatus get cashBackStatus;
  @override
  @JsonKey(ignore: true)
  _$$PromotionEligibleImplCopyWith<_$PromotionEligibleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
