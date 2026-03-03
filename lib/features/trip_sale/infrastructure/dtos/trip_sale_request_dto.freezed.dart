// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sale_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripSaleRequestDTO _$TripSaleRequestDTOFromJson(Map<String, dynamic> json) {
  return _TripSaleRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$TripSaleRequestDTO {
  @JsonKey(name: "trip_goods_request_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_sale_request_code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_name')
  String get tripName => throw _privateConstructorUsedError;
  @JsonKey(name: "request_date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "warehouse_id")
  int get warehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: "warehouse_name")
  String get warehouseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  double get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  double get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_type')
  String get taxType => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_charges')
  double get otherCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total_amount')
  double get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_id')
  int get paymentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_terms_id')
  int get paymentTermsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_reason', includeToJson: false)
  String get deleteReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', includeToJson: false)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by', includeToJson: false)
  int get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_id', includeToJson: false)
  int get tripId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripSaleRequestDTOCopyWith<TripSaleRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSaleRequestDTOCopyWith<$Res> {
  factory $TripSaleRequestDTOCopyWith(
          TripSaleRequestDTO value, $Res Function(TripSaleRequestDTO) then) =
      _$TripSaleRequestDTOCopyWithImpl<$Res, TripSaleRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "trip_goods_request_id") int id,
      @JsonKey(name: "trip_sale_request_code") String code,
      @JsonKey(name: 'trip_name') String tripName,
      @JsonKey(name: "request_date") String date,
      @JsonKey(name: "warehouse_id") int warehouseId,
      @JsonKey(name: "warehouse_name") String warehouseName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_terms_id') int paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      String description,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) int status,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: 'created_by', includeToJson: false) int createdBy,
      @JsonKey(name: 'trip_id', includeToJson: false) int tripId});
}

/// @nodoc
class _$TripSaleRequestDTOCopyWithImpl<$Res, $Val extends TripSaleRequestDTO>
    implements $TripSaleRequestDTOCopyWith<$Res> {
  _$TripSaleRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? tripName = null,
    Object? date = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = null,
    Object? customerId = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? status = null,
    Object? rejectReason = null,
    Object? createdBy = null,
    Object? tripId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tripName: null == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTermName: null == paymentTermName
          ? _value.paymentTermName
          : paymentTermName // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTermsId: null == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      procutDto: null == procutDto
          ? _value.procutDto
          : procutDto // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripSaleRequestDTOImplCopyWith<$Res>
    implements $TripSaleRequestDTOCopyWith<$Res> {
  factory _$$TripSaleRequestDTOImplCopyWith(_$TripSaleRequestDTOImpl value,
          $Res Function(_$TripSaleRequestDTOImpl) then) =
      __$$TripSaleRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "trip_goods_request_id") int id,
      @JsonKey(name: "trip_sale_request_code") String code,
      @JsonKey(name: 'trip_name') String tripName,
      @JsonKey(name: "request_date") String date,
      @JsonKey(name: "warehouse_id") int warehouseId,
      @JsonKey(name: "warehouse_name") String warehouseName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      String paymentTermName,
      @JsonKey(name: 'sub_total') double subtotal,
      @JsonKey(name: 'discount_amount') double discountAmount,
      @JsonKey(name: 'discount_type') String discountType,
      @JsonKey(name: 'tax_amount') double taxAmount,
      @JsonKey(name: 'tax_type') String taxType,
      @JsonKey(name: 'other_charges') double otherCharges,
      @JsonKey(name: 'grand_total_amount') double grandTotal,
      @JsonKey(name: 'payment_type_id') int paymentTypeId,
      @JsonKey(name: 'payment_terms_id') int paymentTermsId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false) String deleteReason,
      @JsonKey(name: 'remark') String remark,
      String description,
      @JsonKey(name: "products") List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) int status,
      @JsonKey(name: 'reject_reason', includeToJson: false) String rejectReason,
      @JsonKey(name: 'created_by', includeToJson: false) int createdBy,
      @JsonKey(name: 'trip_id', includeToJson: false) int tripId});
}

/// @nodoc
class __$$TripSaleRequestDTOImplCopyWithImpl<$Res>
    extends _$TripSaleRequestDTOCopyWithImpl<$Res, _$TripSaleRequestDTOImpl>
    implements _$$TripSaleRequestDTOImplCopyWith<$Res> {
  __$$TripSaleRequestDTOImplCopyWithImpl(_$TripSaleRequestDTOImpl _value,
      $Res Function(_$TripSaleRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? tripName = null,
    Object? date = null,
    Object? warehouseId = null,
    Object? warehouseName = null,
    Object? paymentTypeName = null,
    Object? paymentTermName = null,
    Object? subtotal = null,
    Object? discountAmount = null,
    Object? discountType = null,
    Object? taxAmount = null,
    Object? taxType = null,
    Object? otherCharges = null,
    Object? grandTotal = null,
    Object? paymentTypeId = null,
    Object? paymentTermsId = null,
    Object? customerId = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? procutDto = null,
    Object? status = null,
    Object? rejectReason = null,
    Object? createdBy = null,
    Object? tripId = null,
  }) {
    return _then(_$TripSaleRequestDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tripName: null == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTermName: null == paymentTermName
          ? _value.paymentTermName
          : paymentTermName // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxType: null == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String,
      otherCharges: null == otherCharges
          ? _value.otherCharges
          : otherCharges // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
      paymentTypeId: null == paymentTypeId
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTermsId: null == paymentTermsId
          ? _value.paymentTermsId
          : paymentTermsId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deleteReason: null == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      procutDto: null == procutDto
          ? _value._procutDto
          : procutDto // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      rejectReason: null == rejectReason
          ? _value.rejectReason
          : rejectReason // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripSaleRequestDTOImpl extends _TripSaleRequestDTO {
  const _$TripSaleRequestDTOImpl(
      {@JsonKey(name: "trip_goods_request_id") this.id = -1,
      @JsonKey(name: "trip_sale_request_code") this.code = "",
      @JsonKey(name: 'trip_name') this.tripName = "",
      @JsonKey(name: "request_date") this.date = "",
      @JsonKey(name: "warehouse_id") this.warehouseId = -1,
      @JsonKey(name: "warehouse_name") this.warehouseName = "",
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      this.paymentTypeName = '',
      @JsonKey(name: 'payment_terms', includeToJson: false)
      this.paymentTermName = '',
      @JsonKey(name: 'sub_total') this.subtotal = 0,
      @JsonKey(name: 'discount_amount') this.discountAmount = 0,
      @JsonKey(name: 'discount_type') this.discountType = '',
      @JsonKey(name: 'tax_amount') this.taxAmount = 0,
      @JsonKey(name: 'tax_type') this.taxType = '',
      @JsonKey(name: 'other_charges') this.otherCharges = 0,
      @JsonKey(name: 'grand_total_amount') this.grandTotal = 0,
      @JsonKey(name: 'payment_type_id') this.paymentTypeId = -1,
      @JsonKey(name: 'payment_terms_id') this.paymentTermsId = -1,
      @JsonKey(name: 'customer_id') this.customerId = -1,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      this.deleteReason = '',
      @JsonKey(name: 'remark') this.remark = '',
      this.description = '',
      @JsonKey(name: "products") final List<ProductDTO> procutDto = const [],
      @JsonKey(name: 'status', includeToJson: false) this.status = -1,
      @JsonKey(name: 'reject_reason', includeToJson: false)
      this.rejectReason = "",
      @JsonKey(name: 'created_by', includeToJson: false) this.createdBy = -1,
      @JsonKey(name: 'trip_id', includeToJson: false) this.tripId = -1})
      : _procutDto = procutDto,
        super._();

  factory _$TripSaleRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripSaleRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: "trip_goods_request_id")
  final int id;
  @override
  @JsonKey(name: "trip_sale_request_code")
  final String code;
  @override
  @JsonKey(name: 'trip_name')
  final String tripName;
  @override
  @JsonKey(name: "request_date")
  final String date;
  @override
  @JsonKey(name: "warehouse_id")
  final int warehouseId;
  @override
  @JsonKey(name: "warehouse_name")
  final String warehouseName;
  @override
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  final String paymentTypeName;
  @override
  @JsonKey(name: 'payment_terms', includeToJson: false)
  final String paymentTermName;
  @override
  @JsonKey(name: 'sub_total')
  final double subtotal;
  @override
  @JsonKey(name: 'discount_amount')
  final double discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  final String discountType;
  @override
  @JsonKey(name: 'tax_amount')
  final double taxAmount;
  @override
  @JsonKey(name: 'tax_type')
  final String taxType;
  @override
  @JsonKey(name: 'other_charges')
  final double otherCharges;
  @override
  @JsonKey(name: 'grand_total_amount')
  final double grandTotal;
  @override
  @JsonKey(name: 'payment_type_id')
  final int paymentTypeId;
  @override
  @JsonKey(name: 'payment_terms_id')
  final int paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'delete_reason', includeToJson: false)
  final String deleteReason;
  @override
  @JsonKey(name: 'remark')
  final String remark;
  @override
  @JsonKey()
  final String description;
  final List<ProductDTO> _procutDto;
  @override
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto {
    if (_procutDto is EqualUnmodifiableListView) return _procutDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_procutDto);
  }

  @override
  @JsonKey(name: 'status', includeToJson: false)
  final int status;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  final String rejectReason;
  @override
  @JsonKey(name: 'created_by', includeToJson: false)
  final int createdBy;
  @override
  @JsonKey(name: 'trip_id', includeToJson: false)
  final int tripId;

  @override
  String toString() {
    return 'TripSaleRequestDTO(id: $id, code: $code, tripName: $tripName, date: $date, warehouseId: $warehouseId, warehouseName: $warehouseName, paymentTypeName: $paymentTypeName, paymentTermName: $paymentTermName, subtotal: $subtotal, discountAmount: $discountAmount, discountType: $discountType, taxAmount: $taxAmount, taxType: $taxType, otherCharges: $otherCharges, grandTotal: $grandTotal, paymentTypeId: $paymentTypeId, paymentTermsId: $paymentTermsId, customerId: $customerId, deleteReason: $deleteReason, remark: $remark, description: $description, procutDto: $procutDto, status: $status, rejectReason: $rejectReason, createdBy: $createdBy, tripId: $tripId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSaleRequestDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.paymentTermName, paymentTermName) ||
                other.paymentTermName == paymentTermName) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.otherCharges, otherCharges) ||
                other.otherCharges == otherCharges) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                other.paymentTypeId == paymentTypeId) &&
            (identical(other.paymentTermsId, paymentTermsId) ||
                other.paymentTermsId == paymentTermsId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._procutDto, _procutDto) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rejectReason, rejectReason) ||
                other.rejectReason == rejectReason) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.tripId, tripId) || other.tripId == tripId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        tripName,
        date,
        warehouseId,
        warehouseName,
        paymentTypeName,
        paymentTermName,
        subtotal,
        discountAmount,
        discountType,
        taxAmount,
        taxType,
        otherCharges,
        grandTotal,
        paymentTypeId,
        paymentTermsId,
        customerId,
        deleteReason,
        remark,
        description,
        const DeepCollectionEquality().hash(_procutDto),
        status,
        rejectReason,
        createdBy,
        tripId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSaleRequestDTOImplCopyWith<_$TripSaleRequestDTOImpl> get copyWith =>
      __$$TripSaleRequestDTOImplCopyWithImpl<_$TripSaleRequestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripSaleRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _TripSaleRequestDTO extends TripSaleRequestDTO {
  const factory _TripSaleRequestDTO(
      {@JsonKey(name: "trip_goods_request_id") final int id,
      @JsonKey(name: "trip_sale_request_code") final String code,
      @JsonKey(name: 'trip_name') final String tripName,
      @JsonKey(name: "request_date") final String date,
      @JsonKey(name: "warehouse_id") final int warehouseId,
      @JsonKey(name: "warehouse_name") final String warehouseName,
      @JsonKey(name: 'payment_type_name', includeToJson: false)
      final String paymentTypeName,
      @JsonKey(name: 'payment_terms', includeToJson: false)
      final String paymentTermName,
      @JsonKey(name: 'sub_total') final double subtotal,
      @JsonKey(name: 'discount_amount') final double discountAmount,
      @JsonKey(name: 'discount_type') final String discountType,
      @JsonKey(name: 'tax_amount') final double taxAmount,
      @JsonKey(name: 'tax_type') final String taxType,
      @JsonKey(name: 'other_charges') final double otherCharges,
      @JsonKey(name: 'grand_total_amount') final double grandTotal,
      @JsonKey(name: 'payment_type_id') final int paymentTypeId,
      @JsonKey(name: 'payment_terms_id') final int paymentTermsId,
      @JsonKey(name: 'customer_id') final int customerId,
      @JsonKey(name: 'delete_reason', includeToJson: false)
      final String deleteReason,
      @JsonKey(name: 'remark') final String remark,
      final String description,
      @JsonKey(name: "products") final List<ProductDTO> procutDto,
      @JsonKey(name: 'status', includeToJson: false) final int status,
      @JsonKey(name: 'reject_reason', includeToJson: false)
      final String rejectReason,
      @JsonKey(name: 'created_by', includeToJson: false) final int createdBy,
      @JsonKey(name: 'trip_id', includeToJson: false)
      final int tripId}) = _$TripSaleRequestDTOImpl;
  const _TripSaleRequestDTO._() : super._();

  factory _TripSaleRequestDTO.fromJson(Map<String, dynamic> json) =
      _$TripSaleRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: "trip_goods_request_id")
  int get id;
  @override
  @JsonKey(name: "trip_sale_request_code")
  String get code;
  @override
  @JsonKey(name: 'trip_name')
  String get tripName;
  @override
  @JsonKey(name: "request_date")
  String get date;
  @override
  @JsonKey(name: "warehouse_id")
  int get warehouseId;
  @override
  @JsonKey(name: "warehouse_name")
  String get warehouseName;
  @override
  @JsonKey(name: 'payment_type_name', includeToJson: false)
  String get paymentTypeName;
  @override
  @JsonKey(name: 'payment_terms', includeToJson: false)
  String get paymentTermName;
  @override
  @JsonKey(name: 'sub_total')
  double get subtotal;
  @override
  @JsonKey(name: 'discount_amount')
  double get discountAmount;
  @override
  @JsonKey(name: 'discount_type')
  String get discountType;
  @override
  @JsonKey(name: 'tax_amount')
  double get taxAmount;
  @override
  @JsonKey(name: 'tax_type')
  String get taxType;
  @override
  @JsonKey(name: 'other_charges')
  double get otherCharges;
  @override
  @JsonKey(name: 'grand_total_amount')
  double get grandTotal;
  @override
  @JsonKey(name: 'payment_type_id')
  int get paymentTypeId;
  @override
  @JsonKey(name: 'payment_terms_id')
  int get paymentTermsId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'delete_reason', includeToJson: false)
  String get deleteReason;
  @override
  @JsonKey(name: 'remark')
  String get remark;
  @override
  String get description;
  @override
  @JsonKey(name: "products")
  List<ProductDTO> get procutDto;
  @override
  @JsonKey(name: 'status', includeToJson: false)
  int get status;
  @override
  @JsonKey(name: 'reject_reason', includeToJson: false)
  String get rejectReason;
  @override
  @JsonKey(name: 'created_by', includeToJson: false)
  int get createdBy;
  @override
  @JsonKey(name: 'trip_id', includeToJson: false)
  int get tripId;
  @override
  @JsonKey(ignore: true)
  _$$TripSaleRequestDTOImplCopyWith<_$TripSaleRequestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
