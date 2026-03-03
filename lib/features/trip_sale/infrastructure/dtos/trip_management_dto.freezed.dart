// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_management_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripManagementDTO _$TripManagementDTOFromJson(Map<String, dynamic> json) {
  return _TripManagementDTO.fromJson(json);
}

/// @nodoc
mixin _$TripManagementDTO {
  @JsonKey(name: "trip_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_name")
  String get tripName => throw _privateConstructorUsedError;
  @JsonKey(name: "warehouse_name")
  String get allocationAccountName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get regionName => throw _privateConstructorUsedError;
  String get wayName => throw _privateConstructorUsedError;
  String get divisionName => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get townshipName => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_warehouse_details")
  List<WarehouseDTO> get tripWarehouseList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "trip_details")
  List<TripDetailDTO> get tripDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripManagementDTOCopyWith<TripManagementDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripManagementDTOCopyWith<$Res> {
  factory $TripManagementDTOCopyWith(
          TripManagementDTO value, $Res Function(TripManagementDTO) then) =
      _$TripManagementDTOCopyWithImpl<$Res, TripManagementDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "trip_id") int id,
      @JsonKey(name: "trip_code") String code,
      @JsonKey(name: "trip_name") String tripName,
      @JsonKey(name: "warehouse_name") String allocationAccountName,
      String description,
      String remark,
      String regionName,
      String wayName,
      String divisionName,
      String cityName,
      String townshipName,
      @JsonKey(name: "trip_warehouse_details")
      List<WarehouseDTO> tripWarehouseList,
      @JsonKey(name: "trip_details") List<TripDetailDTO> tripDetails});
}

/// @nodoc
class _$TripManagementDTOCopyWithImpl<$Res, $Val extends TripManagementDTO>
    implements $TripManagementDTOCopyWith<$Res> {
  _$TripManagementDTOCopyWithImpl(this._value, this._then);

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
    Object? allocationAccountName = null,
    Object? description = null,
    Object? remark = null,
    Object? regionName = null,
    Object? wayName = null,
    Object? divisionName = null,
    Object? cityName = null,
    Object? townshipName = null,
    Object? tripWarehouseList = null,
    Object? tripDetails = null,
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
      allocationAccountName: null == allocationAccountName
          ? _value.allocationAccountName
          : allocationAccountName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      tripWarehouseList: null == tripWarehouseList
          ? _value.tripWarehouseList
          : tripWarehouseList // ignore: cast_nullable_to_non_nullable
              as List<WarehouseDTO>,
      tripDetails: null == tripDetails
          ? _value.tripDetails
          : tripDetails // ignore: cast_nullable_to_non_nullable
              as List<TripDetailDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripManagementDTOImplCopyWith<$Res>
    implements $TripManagementDTOCopyWith<$Res> {
  factory _$$TripManagementDTOImplCopyWith(_$TripManagementDTOImpl value,
          $Res Function(_$TripManagementDTOImpl) then) =
      __$$TripManagementDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "trip_id") int id,
      @JsonKey(name: "trip_code") String code,
      @JsonKey(name: "trip_name") String tripName,
      @JsonKey(name: "warehouse_name") String allocationAccountName,
      String description,
      String remark,
      String regionName,
      String wayName,
      String divisionName,
      String cityName,
      String townshipName,
      @JsonKey(name: "trip_warehouse_details")
      List<WarehouseDTO> tripWarehouseList,
      @JsonKey(name: "trip_details") List<TripDetailDTO> tripDetails});
}

/// @nodoc
class __$$TripManagementDTOImplCopyWithImpl<$Res>
    extends _$TripManagementDTOCopyWithImpl<$Res, _$TripManagementDTOImpl>
    implements _$$TripManagementDTOImplCopyWith<$Res> {
  __$$TripManagementDTOImplCopyWithImpl(_$TripManagementDTOImpl _value,
      $Res Function(_$TripManagementDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? tripName = null,
    Object? allocationAccountName = null,
    Object? description = null,
    Object? remark = null,
    Object? regionName = null,
    Object? wayName = null,
    Object? divisionName = null,
    Object? cityName = null,
    Object? townshipName = null,
    Object? tripWarehouseList = null,
    Object? tripDetails = null,
  }) {
    return _then(_$TripManagementDTOImpl(
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
      allocationAccountName: null == allocationAccountName
          ? _value.allocationAccountName
          : allocationAccountName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townshipName: null == townshipName
          ? _value.townshipName
          : townshipName // ignore: cast_nullable_to_non_nullable
              as String,
      tripWarehouseList: null == tripWarehouseList
          ? _value._tripWarehouseList
          : tripWarehouseList // ignore: cast_nullable_to_non_nullable
              as List<WarehouseDTO>,
      tripDetails: null == tripDetails
          ? _value._tripDetails
          : tripDetails // ignore: cast_nullable_to_non_nullable
              as List<TripDetailDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripManagementDTOImpl extends _TripManagementDTO {
  const _$TripManagementDTOImpl(
      {@JsonKey(name: "trip_id") this.id = -1,
      @JsonKey(name: "trip_code") this.code = "",
      @JsonKey(name: "trip_name") this.tripName = "",
      @JsonKey(name: "warehouse_name") this.allocationAccountName = "",
      this.description = "",
      this.remark = "",
      this.regionName = "",
      this.wayName = "",
      this.divisionName = "",
      this.cityName = "",
      this.townshipName = "",
      @JsonKey(name: "trip_warehouse_details")
      final List<WarehouseDTO> tripWarehouseList = const [],
      @JsonKey(name: "trip_details")
      final List<TripDetailDTO> tripDetails = const []})
      : _tripWarehouseList = tripWarehouseList,
        _tripDetails = tripDetails,
        super._();

  factory _$TripManagementDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripManagementDTOImplFromJson(json);

  @override
  @JsonKey(name: "trip_id")
  final int id;
  @override
  @JsonKey(name: "trip_code")
  final String code;
  @override
  @JsonKey(name: "trip_name")
  final String tripName;
  @override
  @JsonKey(name: "warehouse_name")
  final String allocationAccountName;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String regionName;
  @override
  @JsonKey()
  final String wayName;
  @override
  @JsonKey()
  final String divisionName;
  @override
  @JsonKey()
  final String cityName;
  @override
  @JsonKey()
  final String townshipName;
  final List<WarehouseDTO> _tripWarehouseList;
  @override
  @JsonKey(name: "trip_warehouse_details")
  List<WarehouseDTO> get tripWarehouseList {
    if (_tripWarehouseList is EqualUnmodifiableListView)
      return _tripWarehouseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tripWarehouseList);
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
    return 'TripManagementDTO(id: $id, code: $code, tripName: $tripName, allocationAccountName: $allocationAccountName, description: $description, remark: $remark, regionName: $regionName, wayName: $wayName, divisionName: $divisionName, cityName: $cityName, townshipName: $townshipName, tripWarehouseList: $tripWarehouseList, tripDetails: $tripDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripManagementDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName) &&
            (identical(other.allocationAccountName, allocationAccountName) ||
                other.allocationAccountName == allocationAccountName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.wayName, wayName) || other.wayName == wayName) &&
            (identical(other.divisionName, divisionName) ||
                other.divisionName == divisionName) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.townshipName, townshipName) ||
                other.townshipName == townshipName) &&
            const DeepCollectionEquality()
                .equals(other._tripWarehouseList, _tripWarehouseList) &&
            const DeepCollectionEquality()
                .equals(other._tripDetails, _tripDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      tripName,
      allocationAccountName,
      description,
      remark,
      regionName,
      wayName,
      divisionName,
      cityName,
      townshipName,
      const DeepCollectionEquality().hash(_tripWarehouseList),
      const DeepCollectionEquality().hash(_tripDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripManagementDTOImplCopyWith<_$TripManagementDTOImpl> get copyWith =>
      __$$TripManagementDTOImplCopyWithImpl<_$TripManagementDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripManagementDTOImplToJson(
      this,
    );
  }
}

abstract class _TripManagementDTO extends TripManagementDTO {
  const factory _TripManagementDTO(
      {@JsonKey(name: "trip_id") final int id,
      @JsonKey(name: "trip_code") final String code,
      @JsonKey(name: "trip_name") final String tripName,
      @JsonKey(name: "warehouse_name") final String allocationAccountName,
      final String description,
      final String remark,
      final String regionName,
      final String wayName,
      final String divisionName,
      final String cityName,
      final String townshipName,
      @JsonKey(name: "trip_warehouse_details")
      final List<WarehouseDTO> tripWarehouseList,
      @JsonKey(name: "trip_details")
      final List<TripDetailDTO> tripDetails}) = _$TripManagementDTOImpl;
  const _TripManagementDTO._() : super._();

  factory _TripManagementDTO.fromJson(Map<String, dynamic> json) =
      _$TripManagementDTOImpl.fromJson;

  @override
  @JsonKey(name: "trip_id")
  int get id;
  @override
  @JsonKey(name: "trip_code")
  String get code;
  @override
  @JsonKey(name: "trip_name")
  String get tripName;
  @override
  @JsonKey(name: "warehouse_name")
  String get allocationAccountName;
  @override
  String get description;
  @override
  String get remark;
  @override
  String get regionName;
  @override
  String get wayName;
  @override
  String get divisionName;
  @override
  String get cityName;
  @override
  String get townshipName;
  @override
  @JsonKey(name: "trip_warehouse_details")
  List<WarehouseDTO> get tripWarehouseList;
  @override
  @JsonKey(name: "trip_details")
  List<TripDetailDTO> get tripDetails;
  @override
  @JsonKey(ignore: true)
  _$$TripManagementDTOImplCopyWith<_$TripManagementDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
