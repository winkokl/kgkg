// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_promotion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalePromotionDTO _$SalePromotionDTOFromJson(Map<String, dynamic> json) {
  return _SalePromotionDTO.fromJson(json);
}

/// @nodoc
mixin _$SalePromotionDTO {
  @JsonKey(name: "sale_promotion_id")
  int get salePromotionId => throw _privateConstructorUsedError;
  @JsonKey(name: "promotion_id")
  String get promotionId => throw _privateConstructorUsedError;
  @JsonKey(name: "promotion_name")
  String get promotionName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_channel")
  List<CustomerChannelDTO> get customerChannel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "region")
  List<PromotionRegionDTO> get region => throw _privateConstructorUsedError;
  @JsonKey(name: "details")
  List<PromotionDetailDTO> get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalePromotionDTOCopyWith<SalePromotionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalePromotionDTOCopyWith<$Res> {
  factory $SalePromotionDTOCopyWith(
          SalePromotionDTO value, $Res Function(SalePromotionDTO) then) =
      _$SalePromotionDTOCopyWithImpl<$Res, SalePromotionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_promotion_id") int salePromotionId,
      @JsonKey(name: "promotion_id") String promotionId,
      @JsonKey(name: "promotion_name") String promotionName,
      @JsonKey(name: "customer_channel")
      List<CustomerChannelDTO> customerChannel,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "region") List<PromotionRegionDTO> region,
      @JsonKey(name: "details") List<PromotionDetailDTO> details});
}

/// @nodoc
class _$SalePromotionDTOCopyWithImpl<$Res, $Val extends SalePromotionDTO>
    implements $SalePromotionDTOCopyWith<$Res> {
  _$SalePromotionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePromotionId = null,
    Object? promotionId = null,
    Object? promotionName = null,
    Object? customerChannel = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? region = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionId: null == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      customerChannel: null == customerChannel
          ? _value.customerChannel
          : customerChannel // ignore: cast_nullable_to_non_nullable
              as List<CustomerChannelDTO>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as List<PromotionRegionDTO>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<PromotionDetailDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalePromotionDTOImplCopyWith<$Res>
    implements $SalePromotionDTOCopyWith<$Res> {
  factory _$$SalePromotionDTOImplCopyWith(_$SalePromotionDTOImpl value,
          $Res Function(_$SalePromotionDTOImpl) then) =
      __$$SalePromotionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_promotion_id") int salePromotionId,
      @JsonKey(name: "promotion_id") String promotionId,
      @JsonKey(name: "promotion_name") String promotionName,
      @JsonKey(name: "customer_channel")
      List<CustomerChannelDTO> customerChannel,
      @JsonKey(name: "start_date") String startDate,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "region") List<PromotionRegionDTO> region,
      @JsonKey(name: "details") List<PromotionDetailDTO> details});
}

/// @nodoc
class __$$SalePromotionDTOImplCopyWithImpl<$Res>
    extends _$SalePromotionDTOCopyWithImpl<$Res, _$SalePromotionDTOImpl>
    implements _$$SalePromotionDTOImplCopyWith<$Res> {
  __$$SalePromotionDTOImplCopyWithImpl(_$SalePromotionDTOImpl _value,
      $Res Function(_$SalePromotionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePromotionId = null,
    Object? promotionId = null,
    Object? promotionName = null,
    Object? customerChannel = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? region = null,
    Object? details = null,
  }) {
    return _then(_$SalePromotionDTOImpl(
      salePromotionId: null == salePromotionId
          ? _value.salePromotionId
          : salePromotionId // ignore: cast_nullable_to_non_nullable
              as int,
      promotionId: null == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String,
      promotionName: null == promotionName
          ? _value.promotionName
          : promotionName // ignore: cast_nullable_to_non_nullable
              as String,
      customerChannel: null == customerChannel
          ? _value._customerChannel
          : customerChannel // ignore: cast_nullable_to_non_nullable
              as List<CustomerChannelDTO>,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value._region
          : region // ignore: cast_nullable_to_non_nullable
              as List<PromotionRegionDTO>,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<PromotionDetailDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalePromotionDTOImpl extends _SalePromotionDTO {
  const _$SalePromotionDTOImpl(
      {@JsonKey(name: "sale_promotion_id") this.salePromotionId = -1,
      @JsonKey(name: "promotion_id") this.promotionId = "",
      @JsonKey(name: "promotion_name") this.promotionName = "",
      @JsonKey(name: "customer_channel")
      final List<CustomerChannelDTO> customerChannel = const [],
      @JsonKey(name: "start_date") this.startDate = "",
      @JsonKey(name: "end_date") this.endDate = "",
      @JsonKey(name: "region") final List<PromotionRegionDTO> region = const [],
      @JsonKey(name: "details")
      final List<PromotionDetailDTO> details = const []})
      : _customerChannel = customerChannel,
        _region = region,
        _details = details,
        super._();

  factory _$SalePromotionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalePromotionDTOImplFromJson(json);

  @override
  @JsonKey(name: "sale_promotion_id")
  final int salePromotionId;
  @override
  @JsonKey(name: "promotion_id")
  final String promotionId;
  @override
  @JsonKey(name: "promotion_name")
  final String promotionName;
  final List<CustomerChannelDTO> _customerChannel;
  @override
  @JsonKey(name: "customer_channel")
  List<CustomerChannelDTO> get customerChannel {
    if (_customerChannel is EqualUnmodifiableListView) return _customerChannel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerChannel);
  }

  @override
  @JsonKey(name: "start_date")
  final String startDate;
  @override
  @JsonKey(name: "end_date")
  final String endDate;
  final List<PromotionRegionDTO> _region;
  @override
  @JsonKey(name: "region")
  List<PromotionRegionDTO> get region {
    if (_region is EqualUnmodifiableListView) return _region;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_region);
  }

  final List<PromotionDetailDTO> _details;
  @override
  @JsonKey(name: "details")
  List<PromotionDetailDTO> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'SalePromotionDTO(salePromotionId: $salePromotionId, promotionId: $promotionId, promotionName: $promotionName, customerChannel: $customerChannel, startDate: $startDate, endDate: $endDate, region: $region, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalePromotionDTOImpl &&
            (identical(other.salePromotionId, salePromotionId) ||
                other.salePromotionId == salePromotionId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.promotionName, promotionName) ||
                other.promotionName == promotionName) &&
            const DeepCollectionEquality()
                .equals(other._customerChannel, _customerChannel) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._region, _region) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      salePromotionId,
      promotionId,
      promotionName,
      const DeepCollectionEquality().hash(_customerChannel),
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_region),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalePromotionDTOImplCopyWith<_$SalePromotionDTOImpl> get copyWith =>
      __$$SalePromotionDTOImplCopyWithImpl<_$SalePromotionDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalePromotionDTOImplToJson(
      this,
    );
  }
}

abstract class _SalePromotionDTO extends SalePromotionDTO {
  const factory _SalePromotionDTO(
          {@JsonKey(name: "sale_promotion_id") final int salePromotionId,
          @JsonKey(name: "promotion_id") final String promotionId,
          @JsonKey(name: "promotion_name") final String promotionName,
          @JsonKey(name: "customer_channel")
          final List<CustomerChannelDTO> customerChannel,
          @JsonKey(name: "start_date") final String startDate,
          @JsonKey(name: "end_date") final String endDate,
          @JsonKey(name: "region") final List<PromotionRegionDTO> region,
          @JsonKey(name: "details") final List<PromotionDetailDTO> details}) =
      _$SalePromotionDTOImpl;
  const _SalePromotionDTO._() : super._();

  factory _SalePromotionDTO.fromJson(Map<String, dynamic> json) =
      _$SalePromotionDTOImpl.fromJson;

  @override
  @JsonKey(name: "sale_promotion_id")
  int get salePromotionId;
  @override
  @JsonKey(name: "promotion_id")
  String get promotionId;
  @override
  @JsonKey(name: "promotion_name")
  String get promotionName;
  @override
  @JsonKey(name: "customer_channel")
  List<CustomerChannelDTO> get customerChannel;
  @override
  @JsonKey(name: "start_date")
  String get startDate;
  @override
  @JsonKey(name: "end_date")
  String get endDate;
  @override
  @JsonKey(name: "region")
  List<PromotionRegionDTO> get region;
  @override
  @JsonKey(name: "details")
  List<PromotionDetailDTO> get details;
  @override
  @JsonKey(ignore: true)
  _$$SalePromotionDTOImplCopyWith<_$SalePromotionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
