// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_proposal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripProposalDTO _$TripProposalDTOFromJson(Map<String, dynamic> json) {
  return _TripProposalDTO.fromJson(json);
}

/// @nodoc
mixin _$TripProposalDTO {
  @JsonKey(name: "trip_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_name")
  String get tripName => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_code")
  String get tripCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "proposal_date")
  String get proposalDate => throw _privateConstructorUsedError;
  @JsonKey(name: "attachment")
  String get attachment => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "region_name")
  String get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_warehouse_details")
  List<WarehouseDTO> get tripWarehouseDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "trip_vehicle")
  List<VehicleDTO> get tripVehicle => throw _privateConstructorUsedError;
  @JsonKey(name: "assignee_data")
  List<TripUserAssignDTO> get assigneeData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "product_detail")
  List<ProductDTO> get productDetail => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_details")
  List<TripDetailDTO> get tripDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripProposalDTOCopyWith<TripProposalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripProposalDTOCopyWith<$Res> {
  factory $TripProposalDTOCopyWith(
          TripProposalDTO value, $Res Function(TripProposalDTO) then) =
      _$TripProposalDTOCopyWithImpl<$Res, TripProposalDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "trip_id") int id,
      @JsonKey(name: "trip_name") String tripName,
      @JsonKey(name: "trip_code") String tripCode,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "proposal_date") String proposalDate,
      @JsonKey(name: "attachment") String attachment,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "region_name") String regionName,
      @JsonKey(name: "trip_warehouse_details")
      List<WarehouseDTO> tripWarehouseDetails,
      @JsonKey(name: "trip_vehicle") List<VehicleDTO> tripVehicle,
      @JsonKey(name: "assignee_data") List<TripUserAssignDTO> assigneeData,
      @JsonKey(name: "product_detail") List<ProductDTO> productDetail,
      @JsonKey(name: "trip_details") List<TripDetailDTO> tripDetails});
}

/// @nodoc
class _$TripProposalDTOCopyWithImpl<$Res, $Val extends TripProposalDTO>
    implements $TripProposalDTOCopyWith<$Res> {
  _$TripProposalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripName = null,
    Object? tripCode = null,
    Object? description = null,
    Object? proposalDate = null,
    Object? attachment = null,
    Object? reason = null,
    Object? regionName = null,
    Object? tripWarehouseDetails = null,
    Object? tripVehicle = null,
    Object? assigneeData = null,
    Object? productDetail = null,
    Object? tripDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripName: null == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String,
      tripCode: null == tripCode
          ? _value.tripCode
          : tripCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      proposalDate: null == proposalDate
          ? _value.proposalDate
          : proposalDate // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      tripWarehouseDetails: null == tripWarehouseDetails
          ? _value.tripWarehouseDetails
          : tripWarehouseDetails // ignore: cast_nullable_to_non_nullable
              as List<WarehouseDTO>,
      tripVehicle: null == tripVehicle
          ? _value.tripVehicle
          : tripVehicle // ignore: cast_nullable_to_non_nullable
              as List<VehicleDTO>,
      assigneeData: null == assigneeData
          ? _value.assigneeData
          : assigneeData // ignore: cast_nullable_to_non_nullable
              as List<TripUserAssignDTO>,
      productDetail: null == productDetail
          ? _value.productDetail
          : productDetail // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      tripDetails: null == tripDetails
          ? _value.tripDetails
          : tripDetails // ignore: cast_nullable_to_non_nullable
              as List<TripDetailDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripProposalDTOImplCopyWith<$Res>
    implements $TripProposalDTOCopyWith<$Res> {
  factory _$$TripProposalDTOImplCopyWith(_$TripProposalDTOImpl value,
          $Res Function(_$TripProposalDTOImpl) then) =
      __$$TripProposalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "trip_id") int id,
      @JsonKey(name: "trip_name") String tripName,
      @JsonKey(name: "trip_code") String tripCode,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "proposal_date") String proposalDate,
      @JsonKey(name: "attachment") String attachment,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "region_name") String regionName,
      @JsonKey(name: "trip_warehouse_details")
      List<WarehouseDTO> tripWarehouseDetails,
      @JsonKey(name: "trip_vehicle") List<VehicleDTO> tripVehicle,
      @JsonKey(name: "assignee_data") List<TripUserAssignDTO> assigneeData,
      @JsonKey(name: "product_detail") List<ProductDTO> productDetail,
      @JsonKey(name: "trip_details") List<TripDetailDTO> tripDetails});
}

/// @nodoc
class __$$TripProposalDTOImplCopyWithImpl<$Res>
    extends _$TripProposalDTOCopyWithImpl<$Res, _$TripProposalDTOImpl>
    implements _$$TripProposalDTOImplCopyWith<$Res> {
  __$$TripProposalDTOImplCopyWithImpl(
      _$TripProposalDTOImpl _value, $Res Function(_$TripProposalDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripName = null,
    Object? tripCode = null,
    Object? description = null,
    Object? proposalDate = null,
    Object? attachment = null,
    Object? reason = null,
    Object? regionName = null,
    Object? tripWarehouseDetails = null,
    Object? tripVehicle = null,
    Object? assigneeData = null,
    Object? productDetail = null,
    Object? tripDetails = null,
  }) {
    return _then(_$TripProposalDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripName: null == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String,
      tripCode: null == tripCode
          ? _value.tripCode
          : tripCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      proposalDate: null == proposalDate
          ? _value.proposalDate
          : proposalDate // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      tripWarehouseDetails: null == tripWarehouseDetails
          ? _value._tripWarehouseDetails
          : tripWarehouseDetails // ignore: cast_nullable_to_non_nullable
              as List<WarehouseDTO>,
      tripVehicle: null == tripVehicle
          ? _value._tripVehicle
          : tripVehicle // ignore: cast_nullable_to_non_nullable
              as List<VehicleDTO>,
      assigneeData: null == assigneeData
          ? _value._assigneeData
          : assigneeData // ignore: cast_nullable_to_non_nullable
              as List<TripUserAssignDTO>,
      productDetail: null == productDetail
          ? _value._productDetail
          : productDetail // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      tripDetails: null == tripDetails
          ? _value._tripDetails
          : tripDetails // ignore: cast_nullable_to_non_nullable
              as List<TripDetailDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripProposalDTOImpl extends _TripProposalDTO {
  const _$TripProposalDTOImpl(
      {@JsonKey(name: "trip_id") this.id = -1,
      @JsonKey(name: "trip_name") this.tripName = "",
      @JsonKey(name: "trip_code") this.tripCode = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "proposal_date") this.proposalDate = "",
      @JsonKey(name: "attachment") this.attachment = "",
      @JsonKey(name: "reason") this.reason = "",
      @JsonKey(name: "region_name") this.regionName = "",
      @JsonKey(name: "trip_warehouse_details")
      final List<WarehouseDTO> tripWarehouseDetails = const [],
      @JsonKey(name: "trip_vehicle")
      final List<VehicleDTO> tripVehicle = const [],
      @JsonKey(name: "assignee_data")
      final List<TripUserAssignDTO> assigneeData = const [],
      @JsonKey(name: "product_detail")
      final List<ProductDTO> productDetail = const [],
      @JsonKey(name: "trip_details")
      final List<TripDetailDTO> tripDetails = const []})
      : _tripWarehouseDetails = tripWarehouseDetails,
        _tripVehicle = tripVehicle,
        _assigneeData = assigneeData,
        _productDetail = productDetail,
        _tripDetails = tripDetails,
        super._();

  factory _$TripProposalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripProposalDTOImplFromJson(json);

  @override
  @JsonKey(name: "trip_id")
  final int id;
  @override
  @JsonKey(name: "trip_name")
  final String tripName;
  @override
  @JsonKey(name: "trip_code")
  final String tripCode;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "proposal_date")
  final String proposalDate;
  @override
  @JsonKey(name: "attachment")
  final String attachment;
  @override
  @JsonKey(name: "reason")
  final String reason;
  @override
  @JsonKey(name: "region_name")
  final String regionName;
  final List<WarehouseDTO> _tripWarehouseDetails;
  @override
  @JsonKey(name: "trip_warehouse_details")
  List<WarehouseDTO> get tripWarehouseDetails {
    if (_tripWarehouseDetails is EqualUnmodifiableListView)
      return _tripWarehouseDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripWarehouseDetails);
  }

  final List<VehicleDTO> _tripVehicle;
  @override
  @JsonKey(name: "trip_vehicle")
  List<VehicleDTO> get tripVehicle {
    if (_tripVehicle is EqualUnmodifiableListView) return _tripVehicle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripVehicle);
  }

  final List<TripUserAssignDTO> _assigneeData;
  @override
  @JsonKey(name: "assignee_data")
  List<TripUserAssignDTO> get assigneeData {
    if (_assigneeData is EqualUnmodifiableListView) return _assigneeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assigneeData);
  }

  final List<ProductDTO> _productDetail;
  @override
  @JsonKey(name: "product_detail")
  List<ProductDTO> get productDetail {
    if (_productDetail is EqualUnmodifiableListView) return _productDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDetail);
  }

  final List<TripDetailDTO> _tripDetails;
  @override
  @JsonKey(name: "trip_details")
  List<TripDetailDTO> get tripDetails {
    if (_tripDetails is EqualUnmodifiableListView) return _tripDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripDetails);
  }

  @override
  String toString() {
    return 'TripProposalDTO(id: $id, tripName: $tripName, tripCode: $tripCode, description: $description, proposalDate: $proposalDate, attachment: $attachment, reason: $reason, regionName: $regionName, tripWarehouseDetails: $tripWarehouseDetails, tripVehicle: $tripVehicle, assigneeData: $assigneeData, productDetail: $productDetail, tripDetails: $tripDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripProposalDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName) &&
            (identical(other.tripCode, tripCode) ||
                other.tripCode == tripCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.proposalDate, proposalDate) ||
                other.proposalDate == proposalDate) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            const DeepCollectionEquality()
                .equals(other._tripWarehouseDetails, _tripWarehouseDetails) &&
            const DeepCollectionEquality()
                .equals(other._tripVehicle, _tripVehicle) &&
            const DeepCollectionEquality()
                .equals(other._assigneeData, _assigneeData) &&
            const DeepCollectionEquality()
                .equals(other._productDetail, _productDetail) &&
            const DeepCollectionEquality()
                .equals(other._tripDetails, _tripDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tripName,
      tripCode,
      description,
      proposalDate,
      attachment,
      reason,
      regionName,
      const DeepCollectionEquality().hash(_tripWarehouseDetails),
      const DeepCollectionEquality().hash(_tripVehicle),
      const DeepCollectionEquality().hash(_assigneeData),
      const DeepCollectionEquality().hash(_productDetail),
      const DeepCollectionEquality().hash(_tripDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripProposalDTOImplCopyWith<_$TripProposalDTOImpl> get copyWith =>
      __$$TripProposalDTOImplCopyWithImpl<_$TripProposalDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripProposalDTOImplToJson(
      this,
    );
  }
}

abstract class _TripProposalDTO extends TripProposalDTO {
  const factory _TripProposalDTO(
      {@JsonKey(name: "trip_id") final int id,
      @JsonKey(name: "trip_name") final String tripName,
      @JsonKey(name: "trip_code") final String tripCode,
      @JsonKey(name: "description") final String description,
      @JsonKey(name: "proposal_date") final String proposalDate,
      @JsonKey(name: "attachment") final String attachment,
      @JsonKey(name: "reason") final String reason,
      @JsonKey(name: "region_name") final String regionName,
      @JsonKey(name: "trip_warehouse_details")
      final List<WarehouseDTO> tripWarehouseDetails,
      @JsonKey(name: "trip_vehicle") final List<VehicleDTO> tripVehicle,
      @JsonKey(name: "assignee_data")
      final List<TripUserAssignDTO> assigneeData,
      @JsonKey(name: "product_detail") final List<ProductDTO> productDetail,
      @JsonKey(name: "trip_details")
      final List<TripDetailDTO> tripDetails}) = _$TripProposalDTOImpl;
  const _TripProposalDTO._() : super._();

  factory _TripProposalDTO.fromJson(Map<String, dynamic> json) =
      _$TripProposalDTOImpl.fromJson;

  @override
  @JsonKey(name: "trip_id")
  int get id;
  @override
  @JsonKey(name: "trip_name")
  String get tripName;
  @override
  @JsonKey(name: "trip_code")
  String get tripCode;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "proposal_date")
  String get proposalDate;
  @override
  @JsonKey(name: "attachment")
  String get attachment;
  @override
  @JsonKey(name: "reason")
  String get reason;
  @override
  @JsonKey(name: "region_name")
  String get regionName;
  @override
  @JsonKey(name: "trip_warehouse_details")
  List<WarehouseDTO> get tripWarehouseDetails;
  @override
  @JsonKey(name: "trip_vehicle")
  List<VehicleDTO> get tripVehicle;
  @override
  @JsonKey(name: "assignee_data")
  List<TripUserAssignDTO> get assigneeData;
  @override
  @JsonKey(name: "product_detail")
  List<ProductDTO> get productDetail;
  @override
  @JsonKey(name: "trip_details")
  List<TripDetailDTO> get tripDetails;
  @override
  @JsonKey(ignore: true)
  _$$TripProposalDTOImplCopyWith<_$TripProposalDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
