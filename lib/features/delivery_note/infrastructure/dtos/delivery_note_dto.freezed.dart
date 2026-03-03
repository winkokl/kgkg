// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_note_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryNoteDTO _$DeliveryNoteDTOFromJson(Map<String, dynamic> json) {
  return _DeliveryNoteDTO.fromJson(json);
}

/// @nodoc
mixin _$DeliveryNoteDTO {
  @JsonKey(name: 'goods_delivery_note_id')
  int get goodsDeliveryNoteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'goods_request_note_id')
  int get goodsRequestNoteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'goods_delivery_note_code')
  String get goodsDeliveryNoteCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_note_date')
  String get issueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_date')
  String get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_complete_date')
  String? get deliveryCompleteDate => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_id')
  String get referenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_date')
  String get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_first_name')
  String get customerFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_address')
  String get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_last_name')
  String? get customerLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone')
  String get customerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_name')
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_unit_address')
  String get businessUnitAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_detail')
  List<ProductDTO> get productDtos => throw _privateConstructorUsedError;
  @JsonKey(name: 'way_name')
  String get wayName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature')
  String get signUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryNoteDTOCopyWith<DeliveryNoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryNoteDTOCopyWith<$Res> {
  factory $DeliveryNoteDTOCopyWith(
          DeliveryNoteDTO value, $Res Function(DeliveryNoteDTO) then) =
      _$DeliveryNoteDTOCopyWithImpl<$Res, DeliveryNoteDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'goods_delivery_note_id') int goodsDeliveryNoteId,
      @JsonKey(name: 'goods_request_note_id') int goodsRequestNoteId,
      @JsonKey(name: 'goods_delivery_note_code') String goodsDeliveryNoteCode,
      @JsonKey(name: 'delivery_note_date') String issueDate,
      @JsonKey(name: 'delivery_date') String deliveryDate,
      @JsonKey(name: 'delivery_complete_date') String? deliveryCompleteDate,
      int status,
      @JsonKey(name: 'reference_id') String referenceId,
      @JsonKey(name: 'invoice_date') String invoiceDate,
      @JsonKey(name: 'customer_first_name') String customerFirstName,
      @JsonKey(name: 'customer_address') String customerAddress,
      @JsonKey(name: 'customer_last_name') String? customerLastName,
      @JsonKey(name: 'customer_phone') String customerPhone,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'business_unit_address') String businessUnitAddress,
      @JsonKey(name: 'product_detail') List<ProductDTO> productDtos,
      @JsonKey(name: 'way_name') String wayName,
      String description,
      @JsonKey(name: 'signature') String signUrl});
}

/// @nodoc
class _$DeliveryNoteDTOCopyWithImpl<$Res, $Val extends DeliveryNoteDTO>
    implements $DeliveryNoteDTOCopyWith<$Res> {
  _$DeliveryNoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodsDeliveryNoteId = null,
    Object? goodsRequestNoteId = null,
    Object? goodsDeliveryNoteCode = null,
    Object? issueDate = null,
    Object? deliveryDate = null,
    Object? deliveryCompleteDate = freezed,
    Object? status = null,
    Object? referenceId = null,
    Object? invoiceDate = null,
    Object? customerFirstName = null,
    Object? customerAddress = null,
    Object? customerLastName = freezed,
    Object? customerPhone = null,
    Object? businessUnitName = null,
    Object? businessUnitAddress = null,
    Object? productDtos = null,
    Object? wayName = null,
    Object? description = null,
    Object? signUrl = null,
  }) {
    return _then(_value.copyWith(
      goodsDeliveryNoteId: null == goodsDeliveryNoteId
          ? _value.goodsDeliveryNoteId
          : goodsDeliveryNoteId // ignore: cast_nullable_to_non_nullable
              as int,
      goodsRequestNoteId: null == goodsRequestNoteId
          ? _value.goodsRequestNoteId
          : goodsRequestNoteId // ignore: cast_nullable_to_non_nullable
              as int,
      goodsDeliveryNoteCode: null == goodsDeliveryNoteCode
          ? _value.goodsDeliveryNoteCode
          : goodsDeliveryNoteCode // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCompleteDate: freezed == deliveryCompleteDate
          ? _value.deliveryCompleteDate
          : deliveryCompleteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerLastName: freezed == customerLastName
          ? _value.customerLastName
          : customerLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitAddress: null == businessUnitAddress
          ? _value.businessUnitAddress
          : businessUnitAddress // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value.productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryNoteDTOImplCopyWith<$Res>
    implements $DeliveryNoteDTOCopyWith<$Res> {
  factory _$$DeliveryNoteDTOImplCopyWith(_$DeliveryNoteDTOImpl value,
          $Res Function(_$DeliveryNoteDTOImpl) then) =
      __$$DeliveryNoteDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'goods_delivery_note_id') int goodsDeliveryNoteId,
      @JsonKey(name: 'goods_request_note_id') int goodsRequestNoteId,
      @JsonKey(name: 'goods_delivery_note_code') String goodsDeliveryNoteCode,
      @JsonKey(name: 'delivery_note_date') String issueDate,
      @JsonKey(name: 'delivery_date') String deliveryDate,
      @JsonKey(name: 'delivery_complete_date') String? deliveryCompleteDate,
      int status,
      @JsonKey(name: 'reference_id') String referenceId,
      @JsonKey(name: 'invoice_date') String invoiceDate,
      @JsonKey(name: 'customer_first_name') String customerFirstName,
      @JsonKey(name: 'customer_address') String customerAddress,
      @JsonKey(name: 'customer_last_name') String? customerLastName,
      @JsonKey(name: 'customer_phone') String customerPhone,
      @JsonKey(name: 'business_unit_name') String businessUnitName,
      @JsonKey(name: 'business_unit_address') String businessUnitAddress,
      @JsonKey(name: 'product_detail') List<ProductDTO> productDtos,
      @JsonKey(name: 'way_name') String wayName,
      String description,
      @JsonKey(name: 'signature') String signUrl});
}

/// @nodoc
class __$$DeliveryNoteDTOImplCopyWithImpl<$Res>
    extends _$DeliveryNoteDTOCopyWithImpl<$Res, _$DeliveryNoteDTOImpl>
    implements _$$DeliveryNoteDTOImplCopyWith<$Res> {
  __$$DeliveryNoteDTOImplCopyWithImpl(
      _$DeliveryNoteDTOImpl _value, $Res Function(_$DeliveryNoteDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goodsDeliveryNoteId = null,
    Object? goodsRequestNoteId = null,
    Object? goodsDeliveryNoteCode = null,
    Object? issueDate = null,
    Object? deliveryDate = null,
    Object? deliveryCompleteDate = freezed,
    Object? status = null,
    Object? referenceId = null,
    Object? invoiceDate = null,
    Object? customerFirstName = null,
    Object? customerAddress = null,
    Object? customerLastName = freezed,
    Object? customerPhone = null,
    Object? businessUnitName = null,
    Object? businessUnitAddress = null,
    Object? productDtos = null,
    Object? wayName = null,
    Object? description = null,
    Object? signUrl = null,
  }) {
    return _then(_$DeliveryNoteDTOImpl(
      goodsDeliveryNoteId: null == goodsDeliveryNoteId
          ? _value.goodsDeliveryNoteId
          : goodsDeliveryNoteId // ignore: cast_nullable_to_non_nullable
              as int,
      goodsRequestNoteId: null == goodsRequestNoteId
          ? _value.goodsRequestNoteId
          : goodsRequestNoteId // ignore: cast_nullable_to_non_nullable
              as int,
      goodsDeliveryNoteCode: null == goodsDeliveryNoteCode
          ? _value.goodsDeliveryNoteCode
          : goodsDeliveryNoteCode // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCompleteDate: freezed == deliveryCompleteDate
          ? _value.deliveryCompleteDate
          : deliveryCompleteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as String,
      customerFirstName: null == customerFirstName
          ? _value.customerFirstName
          : customerFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      customerAddress: null == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerLastName: freezed == customerLastName
          ? _value.customerLastName
          : customerLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      businessUnitAddress: null == businessUnitAddress
          ? _value.businessUnitAddress
          : businessUnitAddress // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value._productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryNoteDTOImpl extends _DeliveryNoteDTO {
  const _$DeliveryNoteDTOImpl(
      {@JsonKey(name: 'goods_delivery_note_id') this.goodsDeliveryNoteId = -1,
      @JsonKey(name: 'goods_request_note_id') this.goodsRequestNoteId = -1,
      @JsonKey(name: 'goods_delivery_note_code')
      this.goodsDeliveryNoteCode = "",
      @JsonKey(name: 'delivery_note_date') this.issueDate = "",
      @JsonKey(name: 'delivery_date') this.deliveryDate = "",
      @JsonKey(name: 'delivery_complete_date') this.deliveryCompleteDate,
      this.status = 0,
      @JsonKey(name: 'reference_id') this.referenceId = "",
      @JsonKey(name: 'invoice_date') this.invoiceDate = "",
      @JsonKey(name: 'customer_first_name') this.customerFirstName = "",
      @JsonKey(name: 'customer_address') this.customerAddress = "",
      @JsonKey(name: 'customer_last_name') this.customerLastName,
      @JsonKey(name: 'customer_phone') this.customerPhone = "",
      @JsonKey(name: 'business_unit_name') this.businessUnitName = "",
      @JsonKey(name: 'business_unit_address') this.businessUnitAddress = "",
      @JsonKey(name: 'product_detail')
      final List<ProductDTO> productDtos = const [],
      @JsonKey(name: 'way_name') this.wayName = '',
      this.description = "",
      @JsonKey(name: 'signature') this.signUrl = ""})
      : _productDtos = productDtos,
        super._();

  factory _$DeliveryNoteDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryNoteDTOImplFromJson(json);

  @override
  @JsonKey(name: 'goods_delivery_note_id')
  final int goodsDeliveryNoteId;
  @override
  @JsonKey(name: 'goods_request_note_id')
  final int goodsRequestNoteId;
  @override
  @JsonKey(name: 'goods_delivery_note_code')
  final String goodsDeliveryNoteCode;
  @override
  @JsonKey(name: 'delivery_note_date')
  final String issueDate;
  @override
  @JsonKey(name: 'delivery_date')
  final String deliveryDate;
  @override
  @JsonKey(name: 'delivery_complete_date')
  final String? deliveryCompleteDate;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: 'reference_id')
  final String referenceId;
  @override
  @JsonKey(name: 'invoice_date')
  final String invoiceDate;
  @override
  @JsonKey(name: 'customer_first_name')
  final String customerFirstName;
  @override
  @JsonKey(name: 'customer_address')
  final String customerAddress;
  @override
  @JsonKey(name: 'customer_last_name')
  final String? customerLastName;
  @override
  @JsonKey(name: 'customer_phone')
  final String customerPhone;
  @override
  @JsonKey(name: 'business_unit_name')
  final String businessUnitName;
  @override
  @JsonKey(name: 'business_unit_address')
  final String businessUnitAddress;
  final List<ProductDTO> _productDtos;
  @override
  @JsonKey(name: 'product_detail')
  List<ProductDTO> get productDtos {
    if (_productDtos is EqualUnmodifiableListView) return _productDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDtos);
  }

  @override
  @JsonKey(name: 'way_name')
  final String wayName;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'signature')
  final String signUrl;

  @override
  String toString() {
    return 'DeliveryNoteDTO(goodsDeliveryNoteId: $goodsDeliveryNoteId, goodsRequestNoteId: $goodsRequestNoteId, goodsDeliveryNoteCode: $goodsDeliveryNoteCode, issueDate: $issueDate, deliveryDate: $deliveryDate, deliveryCompleteDate: $deliveryCompleteDate, status: $status, referenceId: $referenceId, invoiceDate: $invoiceDate, customerFirstName: $customerFirstName, customerAddress: $customerAddress, customerLastName: $customerLastName, customerPhone: $customerPhone, businessUnitName: $businessUnitName, businessUnitAddress: $businessUnitAddress, productDtos: $productDtos, wayName: $wayName, description: $description, signUrl: $signUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryNoteDTOImpl &&
            (identical(other.goodsDeliveryNoteId, goodsDeliveryNoteId) ||
                other.goodsDeliveryNoteId == goodsDeliveryNoteId) &&
            (identical(other.goodsRequestNoteId, goodsRequestNoteId) ||
                other.goodsRequestNoteId == goodsRequestNoteId) &&
            (identical(other.goodsDeliveryNoteCode, goodsDeliveryNoteCode) ||
                other.goodsDeliveryNoteCode == goodsDeliveryNoteCode) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryCompleteDate, deliveryCompleteDate) ||
                other.deliveryCompleteDate == deliveryCompleteDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.customerFirstName, customerFirstName) ||
                other.customerFirstName == customerFirstName) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.customerLastName, customerLastName) ||
                other.customerLastName == customerLastName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.businessUnitAddress, businessUnitAddress) ||
                other.businessUnitAddress == businessUnitAddress) &&
            const DeepCollectionEquality()
                .equals(other._productDtos, _productDtos) &&
            (identical(other.wayName, wayName) || other.wayName == wayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        goodsDeliveryNoteId,
        goodsRequestNoteId,
        goodsDeliveryNoteCode,
        issueDate,
        deliveryDate,
        deliveryCompleteDate,
        status,
        referenceId,
        invoiceDate,
        customerFirstName,
        customerAddress,
        customerLastName,
        customerPhone,
        businessUnitName,
        businessUnitAddress,
        const DeepCollectionEquality().hash(_productDtos),
        wayName,
        description,
        signUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryNoteDTOImplCopyWith<_$DeliveryNoteDTOImpl> get copyWith =>
      __$$DeliveryNoteDTOImplCopyWithImpl<_$DeliveryNoteDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryNoteDTOImplToJson(
      this,
    );
  }
}

abstract class _DeliveryNoteDTO extends DeliveryNoteDTO {
  const factory _DeliveryNoteDTO(
      {@JsonKey(name: 'goods_delivery_note_id') final int goodsDeliveryNoteId,
      @JsonKey(name: 'goods_request_note_id') final int goodsRequestNoteId,
      @JsonKey(name: 'goods_delivery_note_code')
      final String goodsDeliveryNoteCode,
      @JsonKey(name: 'delivery_note_date') final String issueDate,
      @JsonKey(name: 'delivery_date') final String deliveryDate,
      @JsonKey(name: 'delivery_complete_date')
      final String? deliveryCompleteDate,
      final int status,
      @JsonKey(name: 'reference_id') final String referenceId,
      @JsonKey(name: 'invoice_date') final String invoiceDate,
      @JsonKey(name: 'customer_first_name') final String customerFirstName,
      @JsonKey(name: 'customer_address') final String customerAddress,
      @JsonKey(name: 'customer_last_name') final String? customerLastName,
      @JsonKey(name: 'customer_phone') final String customerPhone,
      @JsonKey(name: 'business_unit_name') final String businessUnitName,
      @JsonKey(name: 'business_unit_address') final String businessUnitAddress,
      @JsonKey(name: 'product_detail') final List<ProductDTO> productDtos,
      @JsonKey(name: 'way_name') final String wayName,
      final String description,
      @JsonKey(name: 'signature')
      final String signUrl}) = _$DeliveryNoteDTOImpl;
  const _DeliveryNoteDTO._() : super._();

  factory _DeliveryNoteDTO.fromJson(Map<String, dynamic> json) =
      _$DeliveryNoteDTOImpl.fromJson;

  @override
  @JsonKey(name: 'goods_delivery_note_id')
  int get goodsDeliveryNoteId;
  @override
  @JsonKey(name: 'goods_request_note_id')
  int get goodsRequestNoteId;
  @override
  @JsonKey(name: 'goods_delivery_note_code')
  String get goodsDeliveryNoteCode;
  @override
  @JsonKey(name: 'delivery_note_date')
  String get issueDate;
  @override
  @JsonKey(name: 'delivery_date')
  String get deliveryDate;
  @override
  @JsonKey(name: 'delivery_complete_date')
  String? get deliveryCompleteDate;
  @override
  int get status;
  @override
  @JsonKey(name: 'reference_id')
  String get referenceId;
  @override
  @JsonKey(name: 'invoice_date')
  String get invoiceDate;
  @override
  @JsonKey(name: 'customer_first_name')
  String get customerFirstName;
  @override
  @JsonKey(name: 'customer_address')
  String get customerAddress;
  @override
  @JsonKey(name: 'customer_last_name')
  String? get customerLastName;
  @override
  @JsonKey(name: 'customer_phone')
  String get customerPhone;
  @override
  @JsonKey(name: 'business_unit_name')
  String get businessUnitName;
  @override
  @JsonKey(name: 'business_unit_address')
  String get businessUnitAddress;
  @override
  @JsonKey(name: 'product_detail')
  List<ProductDTO> get productDtos;
  @override
  @JsonKey(name: 'way_name')
  String get wayName;
  @override
  String get description;
  @override
  @JsonKey(name: 'signature')
  String get signUrl;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryNoteDTOImplCopyWith<_$DeliveryNoteDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
