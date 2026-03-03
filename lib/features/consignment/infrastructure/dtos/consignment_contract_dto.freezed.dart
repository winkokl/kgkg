// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consignment_contract_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsignmentContractDTO _$ConsignmentContractDTOFromJson(
    Map<String, dynamic> json) {
  return _ConsignmentContractDTO.fromJson(json);
}

/// @nodoc
mixin _$ConsignmentContractDTO {
  @JsonKey(name: "consignment_contract_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_contract_code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_first_name")
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_duration")
  int get consignmentDuration => throw _privateConstructorUsedError;
  @JsonKey(name: "business_unit_id")
  int get businessUnitId => throw _privateConstructorUsedError;
  @JsonKey(name: "business_unit_name")
  String get businessUnitName => throw _privateConstructorUsedError;
  @JsonKey(name: "warehouse_name")
  String get warehouseName => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "product_categories")
  List<ProductCategoryDTO> get productCategoryDtos =>
      throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_contract_details")
  List<ProductDTO> get productDtos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsignmentContractDTOCopyWith<ConsignmentContractDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsignmentContractDTOCopyWith<$Res> {
  factory $ConsignmentContractDTOCopyWith(ConsignmentContractDTO value,
          $Res Function(ConsignmentContractDTO) then) =
      _$ConsignmentContractDTOCopyWithImpl<$Res, ConsignmentContractDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "consignment_contract_id") int id,
      @JsonKey(name: "consignment_contract_code") String code,
      @JsonKey(name: "start_date") String date,
      @JsonKey(name: "customer_first_name") String customerName,
      @JsonKey(name: "consignment_duration") int consignmentDuration,
      @JsonKey(name: "business_unit_id") int businessUnitId,
      @JsonKey(name: "business_unit_name") String businessUnitName,
      @JsonKey(name: "warehouse_name") String warehouseName,
      int status,
      @JsonKey(name: "product_categories")
      List<ProductCategoryDTO> productCategoryDtos,
      String description,
      @JsonKey(name: "consignment_contract_details")
      List<ProductDTO> productDtos});
}

/// @nodoc
class _$ConsignmentContractDTOCopyWithImpl<$Res,
        $Val extends ConsignmentContractDTO>
    implements $ConsignmentContractDTOCopyWith<$Res> {
  _$ConsignmentContractDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? date = null,
    Object? customerName = null,
    Object? consignmentDuration = null,
    Object? businessUnitId = null,
    Object? businessUnitName = null,
    Object? warehouseName = null,
    Object? status = null,
    Object? productCategoryDtos = null,
    Object? description = null,
    Object? productDtos = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentDuration: null == consignmentDuration
          ? _value.consignmentDuration
          : consignmentDuration // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      productCategoryDtos: null == productCategoryDtos
          ? _value.productCategoryDtos
          : productCategoryDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductCategoryDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value.productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsignmentContractDTOImplCopyWith<$Res>
    implements $ConsignmentContractDTOCopyWith<$Res> {
  factory _$$ConsignmentContractDTOImplCopyWith(
          _$ConsignmentContractDTOImpl value,
          $Res Function(_$ConsignmentContractDTOImpl) then) =
      __$$ConsignmentContractDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "consignment_contract_id") int id,
      @JsonKey(name: "consignment_contract_code") String code,
      @JsonKey(name: "start_date") String date,
      @JsonKey(name: "customer_first_name") String customerName,
      @JsonKey(name: "consignment_duration") int consignmentDuration,
      @JsonKey(name: "business_unit_id") int businessUnitId,
      @JsonKey(name: "business_unit_name") String businessUnitName,
      @JsonKey(name: "warehouse_name") String warehouseName,
      int status,
      @JsonKey(name: "product_categories")
      List<ProductCategoryDTO> productCategoryDtos,
      String description,
      @JsonKey(name: "consignment_contract_details")
      List<ProductDTO> productDtos});
}

/// @nodoc
class __$$ConsignmentContractDTOImplCopyWithImpl<$Res>
    extends _$ConsignmentContractDTOCopyWithImpl<$Res,
        _$ConsignmentContractDTOImpl>
    implements _$$ConsignmentContractDTOImplCopyWith<$Res> {
  __$$ConsignmentContractDTOImplCopyWithImpl(
      _$ConsignmentContractDTOImpl _value,
      $Res Function(_$ConsignmentContractDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? date = null,
    Object? customerName = null,
    Object? consignmentDuration = null,
    Object? businessUnitId = null,
    Object? businessUnitName = null,
    Object? warehouseName = null,
    Object? status = null,
    Object? productCategoryDtos = null,
    Object? description = null,
    Object? productDtos = null,
  }) {
    return _then(_$ConsignmentContractDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentDuration: null == consignmentDuration
          ? _value.consignmentDuration
          : consignmentDuration // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitId: null == businessUnitId
          ? _value.businessUnitId
          : businessUnitId // ignore: cast_nullable_to_non_nullable
              as int,
      businessUnitName: null == businessUnitName
          ? _value.businessUnitName
          : businessUnitName // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      productCategoryDtos: null == productCategoryDtos
          ? _value._productCategoryDtos
          : productCategoryDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductCategoryDTO>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      productDtos: null == productDtos
          ? _value._productDtos
          : productDtos // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsignmentContractDTOImpl extends _ConsignmentContractDTO {
  const _$ConsignmentContractDTOImpl(
      {@JsonKey(name: "consignment_contract_id") this.id = -1,
      @JsonKey(name: "consignment_contract_code") this.code = "",
      @JsonKey(name: "start_date") this.date = "",
      @JsonKey(name: "customer_first_name") this.customerName = '',
      @JsonKey(name: "consignment_duration") this.consignmentDuration = 0,
      @JsonKey(name: "business_unit_id") this.businessUnitId = -1,
      @JsonKey(name: "business_unit_name") this.businessUnitName = "",
      @JsonKey(name: "warehouse_name") this.warehouseName = "",
      this.status = 0,
      @JsonKey(name: "product_categories")
      final List<ProductCategoryDTO> productCategoryDtos = const [],
      this.description = "",
      @JsonKey(name: "consignment_contract_details")
      final List<ProductDTO> productDtos = const []})
      : _productCategoryDtos = productCategoryDtos,
        _productDtos = productDtos,
        super._();

  factory _$ConsignmentContractDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsignmentContractDTOImplFromJson(json);

  @override
  @JsonKey(name: "consignment_contract_id")
  final int id;
  @override
  @JsonKey(name: "consignment_contract_code")
  final String code;
  @override
  @JsonKey(name: "start_date")
  final String date;
  @override
  @JsonKey(name: "customer_first_name")
  final String customerName;
  @override
  @JsonKey(name: "consignment_duration")
  final int consignmentDuration;
  @override
  @JsonKey(name: "business_unit_id")
  final int businessUnitId;
  @override
  @JsonKey(name: "business_unit_name")
  final String businessUnitName;
  @override
  @JsonKey(name: "warehouse_name")
  final String warehouseName;
  @override
  @JsonKey()
  final int status;
  final List<ProductCategoryDTO> _productCategoryDtos;
  @override
  @JsonKey(name: "product_categories")
  List<ProductCategoryDTO> get productCategoryDtos {
    if (_productCategoryDtos is EqualUnmodifiableListView)
      return _productCategoryDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productCategoryDtos);
  }

  @override
  @JsonKey()
  final String description;
  final List<ProductDTO> _productDtos;
  @override
  @JsonKey(name: "consignment_contract_details")
  List<ProductDTO> get productDtos {
    if (_productDtos is EqualUnmodifiableListView) return _productDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDtos);
  }

  @override
  String toString() {
    return 'ConsignmentContractDTO(id: $id, code: $code, date: $date, customerName: $customerName, consignmentDuration: $consignmentDuration, businessUnitId: $businessUnitId, businessUnitName: $businessUnitName, warehouseName: $warehouseName, status: $status, productCategoryDtos: $productCategoryDtos, description: $description, productDtos: $productDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsignmentContractDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.consignmentDuration, consignmentDuration) ||
                other.consignmentDuration == consignmentDuration) &&
            (identical(other.businessUnitId, businessUnitId) ||
                other.businessUnitId == businessUnitId) &&
            (identical(other.businessUnitName, businessUnitName) ||
                other.businessUnitName == businessUnitName) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._productCategoryDtos, _productCategoryDtos) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._productDtos, _productDtos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      date,
      customerName,
      consignmentDuration,
      businessUnitId,
      businessUnitName,
      warehouseName,
      status,
      const DeepCollectionEquality().hash(_productCategoryDtos),
      description,
      const DeepCollectionEquality().hash(_productDtos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsignmentContractDTOImplCopyWith<_$ConsignmentContractDTOImpl>
      get copyWith => __$$ConsignmentContractDTOImplCopyWithImpl<
          _$ConsignmentContractDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsignmentContractDTOImplToJson(
      this,
    );
  }
}

abstract class _ConsignmentContractDTO extends ConsignmentContractDTO {
  const factory _ConsignmentContractDTO(
      {@JsonKey(name: "consignment_contract_id") final int id,
      @JsonKey(name: "consignment_contract_code") final String code,
      @JsonKey(name: "start_date") final String date,
      @JsonKey(name: "customer_first_name") final String customerName,
      @JsonKey(name: "consignment_duration") final int consignmentDuration,
      @JsonKey(name: "business_unit_id") final int businessUnitId,
      @JsonKey(name: "business_unit_name") final String businessUnitName,
      @JsonKey(name: "warehouse_name") final String warehouseName,
      final int status,
      @JsonKey(name: "product_categories")
      final List<ProductCategoryDTO> productCategoryDtos,
      final String description,
      @JsonKey(name: "consignment_contract_details")
      final List<ProductDTO> productDtos}) = _$ConsignmentContractDTOImpl;
  const _ConsignmentContractDTO._() : super._();

  factory _ConsignmentContractDTO.fromJson(Map<String, dynamic> json) =
      _$ConsignmentContractDTOImpl.fromJson;

  @override
  @JsonKey(name: "consignment_contract_id")
  int get id;
  @override
  @JsonKey(name: "consignment_contract_code")
  String get code;
  @override
  @JsonKey(name: "start_date")
  String get date;
  @override
  @JsonKey(name: "customer_first_name")
  String get customerName;
  @override
  @JsonKey(name: "consignment_duration")
  int get consignmentDuration;
  @override
  @JsonKey(name: "business_unit_id")
  int get businessUnitId;
  @override
  @JsonKey(name: "business_unit_name")
  String get businessUnitName;
  @override
  @JsonKey(name: "warehouse_name")
  String get warehouseName;
  @override
  int get status;
  @override
  @JsonKey(name: "product_categories")
  List<ProductCategoryDTO> get productCategoryDtos;
  @override
  String get description;
  @override
  @JsonKey(name: "consignment_contract_details")
  List<ProductDTO> get productDtos;
  @override
  @JsonKey(ignore: true)
  _$$ConsignmentContractDTOImplCopyWith<_$ConsignmentContractDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
