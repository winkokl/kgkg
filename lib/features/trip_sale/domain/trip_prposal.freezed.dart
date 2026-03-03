// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_prposal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripProposal {
  int get id => throw _privateConstructorUsedError;
  String get tripName => throw _privateConstructorUsedError;
  String get tripCode => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get proposalDate => throw _privateConstructorUsedError;
  String get attachment => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get regionName => throw _privateConstructorUsedError;
  List<Warehouse> get tripWarehouseDetails =>
      throw _privateConstructorUsedError;
  List<Vehicle> get tripVehicle => throw _privateConstructorUsedError;
  List<TripUserAssign> get assigneeData => throw _privateConstructorUsedError;
  List<Product> get productDetail => throw _privateConstructorUsedError;
  List<TripDetail> get tripDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripProposalCopyWith<TripProposal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripProposalCopyWith<$Res> {
  factory $TripProposalCopyWith(
          TripProposal value, $Res Function(TripProposal) then) =
      _$TripProposalCopyWithImpl<$Res, TripProposal>;
  @useResult
  $Res call(
      {int id,
      String tripName,
      String tripCode,
      String description,
      String proposalDate,
      String attachment,
      String reason,
      String regionName,
      List<Warehouse> tripWarehouseDetails,
      List<Vehicle> tripVehicle,
      List<TripUserAssign> assigneeData,
      List<Product> productDetail,
      List<TripDetail> tripDetails});
}

/// @nodoc
class _$TripProposalCopyWithImpl<$Res, $Val extends TripProposal>
    implements $TripProposalCopyWith<$Res> {
  _$TripProposalCopyWithImpl(this._value, this._then);

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
              as List<Warehouse>,
      tripVehicle: null == tripVehicle
          ? _value.tripVehicle
          : tripVehicle // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
      assigneeData: null == assigneeData
          ? _value.assigneeData
          : assigneeData // ignore: cast_nullable_to_non_nullable
              as List<TripUserAssign>,
      productDetail: null == productDetail
          ? _value.productDetail
          : productDetail // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      tripDetails: null == tripDetails
          ? _value.tripDetails
          : tripDetails // ignore: cast_nullable_to_non_nullable
              as List<TripDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripProposalImplCopyWith<$Res>
    implements $TripProposalCopyWith<$Res> {
  factory _$$TripProposalImplCopyWith(
          _$TripProposalImpl value, $Res Function(_$TripProposalImpl) then) =
      __$$TripProposalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String tripName,
      String tripCode,
      String description,
      String proposalDate,
      String attachment,
      String reason,
      String regionName,
      List<Warehouse> tripWarehouseDetails,
      List<Vehicle> tripVehicle,
      List<TripUserAssign> assigneeData,
      List<Product> productDetail,
      List<TripDetail> tripDetails});
}

/// @nodoc
class __$$TripProposalImplCopyWithImpl<$Res>
    extends _$TripProposalCopyWithImpl<$Res, _$TripProposalImpl>
    implements _$$TripProposalImplCopyWith<$Res> {
  __$$TripProposalImplCopyWithImpl(
      _$TripProposalImpl _value, $Res Function(_$TripProposalImpl) _then)
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
    return _then(_$TripProposalImpl(
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
              as List<Warehouse>,
      tripVehicle: null == tripVehicle
          ? _value._tripVehicle
          : tripVehicle // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
      assigneeData: null == assigneeData
          ? _value._assigneeData
          : assigneeData // ignore: cast_nullable_to_non_nullable
              as List<TripUserAssign>,
      productDetail: null == productDetail
          ? _value._productDetail
          : productDetail // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      tripDetails: null == tripDetails
          ? _value._tripDetails
          : tripDetails // ignore: cast_nullable_to_non_nullable
              as List<TripDetail>,
    ));
  }
}

/// @nodoc

class _$TripProposalImpl implements _TripProposal {
  const _$TripProposalImpl(
      {this.id = -1,
      this.tripName = "",
      this.tripCode = "",
      this.description = "",
      this.proposalDate = "",
      this.attachment = "",
      this.reason = "",
      this.regionName = "",
      final List<Warehouse> tripWarehouseDetails = const [],
      final List<Vehicle> tripVehicle = const [],
      final List<TripUserAssign> assigneeData = const [],
      final List<Product> productDetail = const [],
      final List<TripDetail> tripDetails = const []})
      : _tripWarehouseDetails = tripWarehouseDetails,
        _tripVehicle = tripVehicle,
        _assigneeData = assigneeData,
        _productDetail = productDetail,
        _tripDetails = tripDetails;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String tripName;
  @override
  @JsonKey()
  final String tripCode;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String proposalDate;
  @override
  @JsonKey()
  final String attachment;
  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey()
  final String regionName;
  final List<Warehouse> _tripWarehouseDetails;
  @override
  @JsonKey()
  List<Warehouse> get tripWarehouseDetails {
    if (_tripWarehouseDetails is EqualUnmodifiableListView)
      return _tripWarehouseDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripWarehouseDetails);
  }

  final List<Vehicle> _tripVehicle;
  @override
  @JsonKey()
  List<Vehicle> get tripVehicle {
    if (_tripVehicle is EqualUnmodifiableListView) return _tripVehicle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripVehicle);
  }

  final List<TripUserAssign> _assigneeData;
  @override
  @JsonKey()
  List<TripUserAssign> get assigneeData {
    if (_assigneeData is EqualUnmodifiableListView) return _assigneeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assigneeData);
  }

  final List<Product> _productDetail;
  @override
  @JsonKey()
  List<Product> get productDetail {
    if (_productDetail is EqualUnmodifiableListView) return _productDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productDetail);
  }

  final List<TripDetail> _tripDetails;
  @override
  @JsonKey()
  List<TripDetail> get tripDetails {
    if (_tripDetails is EqualUnmodifiableListView) return _tripDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripDetails);
  }

  @override
  String toString() {
    return 'TripProposal(id: $id, tripName: $tripName, tripCode: $tripCode, description: $description, proposalDate: $proposalDate, attachment: $attachment, reason: $reason, regionName: $regionName, tripWarehouseDetails: $tripWarehouseDetails, tripVehicle: $tripVehicle, assigneeData: $assigneeData, productDetail: $productDetail, tripDetails: $tripDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripProposalImpl &&
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
  _$$TripProposalImplCopyWith<_$TripProposalImpl> get copyWith =>
      __$$TripProposalImplCopyWithImpl<_$TripProposalImpl>(this, _$identity);
}

abstract class _TripProposal implements TripProposal {
  const factory _TripProposal(
      {final int id,
      final String tripName,
      final String tripCode,
      final String description,
      final String proposalDate,
      final String attachment,
      final String reason,
      final String regionName,
      final List<Warehouse> tripWarehouseDetails,
      final List<Vehicle> tripVehicle,
      final List<TripUserAssign> assigneeData,
      final List<Product> productDetail,
      final List<TripDetail> tripDetails}) = _$TripProposalImpl;

  @override
  int get id;
  @override
  String get tripName;
  @override
  String get tripCode;
  @override
  String get description;
  @override
  String get proposalDate;
  @override
  String get attachment;
  @override
  String get reason;
  @override
  String get regionName;
  @override
  List<Warehouse> get tripWarehouseDetails;
  @override
  List<Vehicle> get tripVehicle;
  @override
  List<TripUserAssign> get assigneeData;
  @override
  List<Product> get productDetail;
  @override
  List<TripDetail> get tripDetails;
  @override
  @JsonKey(ignore: true)
  _$$TripProposalImplCopyWith<_$TripProposalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
