// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerChannel {
  int get salePromotionId => throw _privateConstructorUsedError;
  int get customerChannelId => throw _privateConstructorUsedError;
  String get customerChannelName => throw _privateConstructorUsedError;
  int get salePromotionCustomerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerChannelCopyWith<CustomerChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerChannelCopyWith<$Res> {
  factory $CustomerChannelCopyWith(
          CustomerChannel value, $Res Function(CustomerChannel) then) =
      _$CustomerChannelCopyWithImpl<$Res, CustomerChannel>;
  @useResult
  $Res call(
      {int salePromotionId,
      int customerChannelId,
      String customerChannelName,
      int salePromotionCustomerId});
}

/// @nodoc
class _$CustomerChannelCopyWithImpl<$Res, $Val extends CustomerChannel>
    implements $CustomerChannelCopyWith<$Res> {
  _$CustomerChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePromotionId = null,
    Object? customerChannelId = null,
    Object? customerChannelName = null,
    Object? salePromotionCustomerId = null,
  }) {
    return _then(_value.copyWith(
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      customerChannelId: null == customerChannelId
          ? _value.customerChannelId
          : customerChannelId // ignore: cast_nullable_to_non_nullable
              as int,
      customerChannelName: null == customerChannelName
          ? _value.customerChannelName
          : customerChannelName // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionCustomerId: null == salePromotionCustomerId
          ? _value.salePromotionCustomerId
          : salePromotionCustomerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerChannelImplCopyWith<$Res>
    implements $CustomerChannelCopyWith<$Res> {
  factory _$$CustomerChannelImplCopyWith(_$CustomerChannelImpl value,
          $Res Function(_$CustomerChannelImpl) then) =
      __$$CustomerChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int salePromotionId,
      int customerChannelId,
      String customerChannelName,
      int salePromotionCustomerId});
}

/// @nodoc
class __$$CustomerChannelImplCopyWithImpl<$Res>
    extends _$CustomerChannelCopyWithImpl<$Res, _$CustomerChannelImpl>
    implements _$$CustomerChannelImplCopyWith<$Res> {
  __$$CustomerChannelImplCopyWithImpl(
      _$CustomerChannelImpl _value, $Res Function(_$CustomerChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePromotionId = null,
    Object? customerChannelId = null,
    Object? customerChannelName = null,
    Object? salePromotionCustomerId = null,
  }) {
    return _then(_$CustomerChannelImpl(
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      customerChannelId: null == customerChannelId
          ? _value.customerChannelId
          : customerChannelId // ignore: cast_nullable_to_non_nullable
              as int,
      customerChannelName: null == customerChannelName
          ? _value.customerChannelName
          : customerChannelName // ignore: cast_nullable_to_non_nullable
              as String,
      salePromotionCustomerId: null == salePromotionCustomerId
          ? _value.salePromotionCustomerId
          : salePromotionCustomerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CustomerChannelImpl implements _CustomerChannel {
  const _$CustomerChannelImpl(
      {this.salePromotionId = -1,
      this.customerChannelId = -1,
      this.customerChannelName = "",
      this.salePromotionCustomerId = -1});

  @override
  @JsonKey()
  final int salePromotionId;
  @override
  @JsonKey()
  final int customerChannelId;
  @override
  @JsonKey()
  final String customerChannelName;
  @override
  @JsonKey()
  final int salePromotionCustomerId;

  @override
  String toString() {
    return 'CustomerChannel(salePromotionId: $salePromotionId, customerChannelId: $customerChannelId, customerChannelName: $customerChannelName, salePromotionCustomerId: $salePromotionCustomerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerChannelImpl &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.customerChannelId, customerChannelId) ||
                other.customerChannelId == customerChannelId) &&
            (identical(other.customerChannelName, customerChannelName) ||
                other.customerChannelName == customerChannelName) &&
            (identical(
                    other.salePromotionCustomerId, salePromotionCustomerId) ||
                other.salePromotionCustomerId == salePromotionCustomerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salePromotionId,
      customerChannelId, customerChannelName, salePromotionCustomerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerChannelImplCopyWith<_$CustomerChannelImpl> get copyWith =>
      __$$CustomerChannelImplCopyWithImpl<_$CustomerChannelImpl>(
          this, _$identity);
}

abstract class _CustomerChannel implements CustomerChannel {
  const factory _CustomerChannel(
      {final int salePromotionId,
      final int customerChannelId,
      final String customerChannelName,
      final int salePromotionCustomerId}) = _$CustomerChannelImpl;

  @override
  int get salePromotionId;
  @override
  int get customerChannelId;
  @override
  String get customerChannelName;
  @override
  int get salePromotionCustomerId;
  @override
  @JsonKey(ignore: true)
  _$$CustomerChannelImplCopyWith<_$CustomerChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
