// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_eligible_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionEligibleDTO _$PromotionEligibleDTOFromJson(Map<String, dynamic> json) {
  return _PromotionEligibleDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionEligibleDTO {
  @JsonKey(name: "bonus")
  double get bonus => throw _privateConstructorUsedError;
  @JsonKey(name: "bonus_status")
  int get bonusStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "cash_back")
  double get cashBack => throw _privateConstructorUsedError;
  @JsonKey(name: "cash_back_status")
  int get cashBackStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionEligibleDTOCopyWith<PromotionEligibleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionEligibleDTOCopyWith<$Res> {
  factory $PromotionEligibleDTOCopyWith(PromotionEligibleDTO value,
          $Res Function(PromotionEligibleDTO) then) =
      _$PromotionEligibleDTOCopyWithImpl<$Res, PromotionEligibleDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "bonus") double bonus,
      @JsonKey(name: "bonus_status") int bonusStatus,
      @JsonKey(name: "cash_back") double cashBack,
      @JsonKey(name: "cash_back_status") int cashBackStatus});
}

/// @nodoc
class _$PromotionEligibleDTOCopyWithImpl<$Res,
        $Val extends PromotionEligibleDTO>
    implements $PromotionEligibleDTOCopyWith<$Res> {
  _$PromotionEligibleDTOCopyWithImpl(this._value, this._then);

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
              as int,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      cashBackStatus: null == cashBackStatus
          ? _value.cashBackStatus
          : cashBackStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionEligibleDTOImplCopyWith<$Res>
    implements $PromotionEligibleDTOCopyWith<$Res> {
  factory _$$PromotionEligibleDTOImplCopyWith(_$PromotionEligibleDTOImpl value,
          $Res Function(_$PromotionEligibleDTOImpl) then) =
      __$$PromotionEligibleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bonus") double bonus,
      @JsonKey(name: "bonus_status") int bonusStatus,
      @JsonKey(name: "cash_back") double cashBack,
      @JsonKey(name: "cash_back_status") int cashBackStatus});
}

/// @nodoc
class __$$PromotionEligibleDTOImplCopyWithImpl<$Res>
    extends _$PromotionEligibleDTOCopyWithImpl<$Res, _$PromotionEligibleDTOImpl>
    implements _$$PromotionEligibleDTOImplCopyWith<$Res> {
  __$$PromotionEligibleDTOImplCopyWithImpl(_$PromotionEligibleDTOImpl _value,
      $Res Function(_$PromotionEligibleDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bonus = null,
    Object? bonusStatus = null,
    Object? cashBack = null,
    Object? cashBackStatus = null,
  }) {
    return _then(_$PromotionEligibleDTOImpl(
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as double,
      bonusStatus: null == bonusStatus
          ? _value.bonusStatus
          : bonusStatus // ignore: cast_nullable_to_non_nullable
              as int,
      cashBack: null == cashBack
          ? _value.cashBack
          : cashBack // ignore: cast_nullable_to_non_nullable
              as double,
      cashBackStatus: null == cashBackStatus
          ? _value.cashBackStatus
          : cashBackStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionEligibleDTOImpl extends _PromotionEligibleDTO {
  const _$PromotionEligibleDTOImpl(
      {@JsonKey(name: "bonus") this.bonus = 0,
      @JsonKey(name: "bonus_status") this.bonusStatus = 0,
      @JsonKey(name: "cash_back") this.cashBack = 0,
      @JsonKey(name: "cash_back_status") this.cashBackStatus = 0})
      : super._();

  factory _$PromotionEligibleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionEligibleDTOImplFromJson(json);

  @override
  @JsonKey(name: "bonus")
  final double bonus;
  @override
  @JsonKey(name: "bonus_status")
  final int bonusStatus;
  @override
  @JsonKey(name: "cash_back")
  final double cashBack;
  @override
  @JsonKey(name: "cash_back_status")
  final int cashBackStatus;

  @override
  String toString() {
    return 'PromotionEligibleDTO(bonus: $bonus, bonusStatus: $bonusStatus, cashBack: $cashBack, cashBackStatus: $cashBackStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionEligibleDTOImpl &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.bonusStatus, bonusStatus) ||
                other.bonusStatus == bonusStatus) &&
            (identical(other.cashBack, cashBack) ||
                other.cashBack == cashBack) &&
            (identical(other.cashBackStatus, cashBackStatus) ||
                other.cashBackStatus == cashBackStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bonus, bonusStatus, cashBack, cashBackStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionEligibleDTOImplCopyWith<_$PromotionEligibleDTOImpl>
      get copyWith =>
          __$$PromotionEligibleDTOImplCopyWithImpl<_$PromotionEligibleDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionEligibleDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionEligibleDTO extends PromotionEligibleDTO {
  const factory _PromotionEligibleDTO(
          {@JsonKey(name: "bonus") final double bonus,
          @JsonKey(name: "bonus_status") final int bonusStatus,
          @JsonKey(name: "cash_back") final double cashBack,
          @JsonKey(name: "cash_back_status") final int cashBackStatus}) =
      _$PromotionEligibleDTOImpl;
  const _PromotionEligibleDTO._() : super._();

  factory _PromotionEligibleDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionEligibleDTOImpl.fromJson;

  @override
  @JsonKey(name: "bonus")
  double get bonus;
  @override
  @JsonKey(name: "bonus_status")
  int get bonusStatus;
  @override
  @JsonKey(name: "cash_back")
  double get cashBack;
  @override
  @JsonKey(name: "cash_back_status")
  int get cashBackStatus;
  @override
  @JsonKey(ignore: true)
  _$$PromotionEligibleDTOImplCopyWith<_$PromotionEligibleDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
