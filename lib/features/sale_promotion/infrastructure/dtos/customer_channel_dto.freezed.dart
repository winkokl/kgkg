// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_channel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerChannelDTO _$CustomerChannelDTOFromJson(Map<String, dynamic> json) {
  return _CustomerChannelDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerChannelDTO {
  @JsonKey(name: "customer_channel_id")
  int get customerChannelId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_channel_name")
  String get customerChannelName => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_promotion_customer_id")
  int get salePromotionCustomerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerChannelDTOCopyWith<CustomerChannelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerChannelDTOCopyWith<$Res> {
  factory $CustomerChannelDTOCopyWith(
          CustomerChannelDTO value, $Res Function(CustomerChannelDTO) then) =
      _$CustomerChannelDTOCopyWithImpl<$Res, CustomerChannelDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_channel_id") int customerChannelId,
      @JsonKey(name: "customer_channel_name") String customerChannelName,
      @JsonKey(name: "sale_promotion_customer_id")
      int salePromotionCustomerId});
}

/// @nodoc
class _$CustomerChannelDTOCopyWithImpl<$Res, $Val extends CustomerChannelDTO>
    implements $CustomerChannelDTOCopyWith<$Res> {
  _$CustomerChannelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerChannelId = null,
    Object? customerChannelName = null,
    Object? salePromotionCustomerId = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$CustomerChannelDTOImplCopyWith<$Res>
    implements $CustomerChannelDTOCopyWith<$Res> {
  factory _$$CustomerChannelDTOImplCopyWith(_$CustomerChannelDTOImpl value,
          $Res Function(_$CustomerChannelDTOImpl) then) =
      __$$CustomerChannelDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_channel_id") int customerChannelId,
      @JsonKey(name: "customer_channel_name") String customerChannelName,
      @JsonKey(name: "sale_promotion_customer_id")
      int salePromotionCustomerId});
}

/// @nodoc
class __$$CustomerChannelDTOImplCopyWithImpl<$Res>
    extends _$CustomerChannelDTOCopyWithImpl<$Res, _$CustomerChannelDTOImpl>
    implements _$$CustomerChannelDTOImplCopyWith<$Res> {
  __$$CustomerChannelDTOImplCopyWithImpl(_$CustomerChannelDTOImpl _value,
      $Res Function(_$CustomerChannelDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerChannelId = null,
    Object? customerChannelName = null,
    Object? salePromotionCustomerId = null,
  }) {
    return _then(_$CustomerChannelDTOImpl(
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
@JsonSerializable()
class _$CustomerChannelDTOImpl extends _CustomerChannelDTO {
  const _$CustomerChannelDTOImpl(
      {@JsonKey(name: "customer_channel_id") this.customerChannelId = -1,
      @JsonKey(name: "customer_channel_name") this.customerChannelName = "",
      @JsonKey(name: "sale_promotion_customer_id")
      this.salePromotionCustomerId = -1})
      : super._();

  factory _$CustomerChannelDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerChannelDTOImplFromJson(json);

  @override
  @JsonKey(name: "customer_channel_id")
  final int customerChannelId;
  @override
  @JsonKey(name: "customer_channel_name")
  final String customerChannelName;
  @override
  @JsonKey(name: "sale_promotion_customer_id")
  final int salePromotionCustomerId;

  @override
  String toString() {
    return 'CustomerChannelDTO(customerChannelId: $customerChannelId, customerChannelName: $customerChannelName, salePromotionCustomerId: $salePromotionCustomerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerChannelDTOImpl &&
            (identical(other.customerChannelId, customerChannelId) ||
                other.customerChannelId == customerChannelId) &&
            (identical(other.customerChannelName, customerChannelName) ||
                other.customerChannelName == customerChannelName) &&
            (identical(
                    other.salePromotionCustomerId, salePromotionCustomerId) ||
                other.salePromotionCustomerId == salePromotionCustomerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerChannelId,
      customerChannelName, salePromotionCustomerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerChannelDTOImplCopyWith<_$CustomerChannelDTOImpl> get copyWith =>
      __$$CustomerChannelDTOImplCopyWithImpl<_$CustomerChannelDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerChannelDTOImplToJson(
      this,
    );
  }
}

abstract class _CustomerChannelDTO extends CustomerChannelDTO {
  const factory _CustomerChannelDTO(
      {@JsonKey(name: "customer_channel_id") final int customerChannelId,
      @JsonKey(name: "customer_channel_name") final String customerChannelName,
      @JsonKey(name: "sale_promotion_customer_id")
      final int salePromotionCustomerId}) = _$CustomerChannelDTOImpl;
  const _CustomerChannelDTO._() : super._();

  factory _CustomerChannelDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerChannelDTOImpl.fromJson;

  @override
  @JsonKey(name: "customer_channel_id")
  int get customerChannelId;
  @override
  @JsonKey(name: "customer_channel_name")
  String get customerChannelName;
  @override
  @JsonKey(name: "sale_promotion_customer_id")
  int get salePromotionCustomerId;
  @override
  @JsonKey(ignore: true)
  _$$CustomerChannelDTOImplCopyWith<_$CustomerChannelDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
