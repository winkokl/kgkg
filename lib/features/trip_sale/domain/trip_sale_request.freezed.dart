// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_sale_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripSaleRequest {
  int get id => throw _privateConstructorUsedError;
  String get tripSaleRequestCode => throw _privateConstructorUsedError;
  String get tripName => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  TripSaleRequestStatus get status => throw _privateConstructorUsedError;
  Warehouse get warehouse => throw _privateConstructorUsedError;
  String get deleteReason => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripSaleRequestCopyWith<TripSaleRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripSaleRequestCopyWith<$Res> {
  factory $TripSaleRequestCopyWith(
          TripSaleRequest value, $Res Function(TripSaleRequest) then) =
      _$TripSaleRequestCopyWithImpl<$Res, TripSaleRequest>;
  @useResult
  $Res call(
      {int id,
      String tripSaleRequestCode,
      String tripName,
      String date,
      TripSaleRequestStatus status,
      Warehouse warehouse,
      String deleteReason,
      String remark,
      String description,
      List<Product> products,
      int createdBy,
      int tripId});

  $WarehouseCopyWith<$Res> get warehouse;
}

/// @nodoc
class _$TripSaleRequestCopyWithImpl<$Res, $Val extends TripSaleRequest>
    implements $TripSaleRequestCopyWith<$Res> {
  _$TripSaleRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripSaleRequestCode = null,
    Object? tripName = null,
    Object? date = null,
    Object? status = null,
    Object? warehouse = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? products = null,
    Object? createdBy = null,
    Object? tripId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleRequestCode: null == tripSaleRequestCode
          ? _value.tripSaleRequestCode
          : tripSaleRequestCode // ignore: cast_nullable_to_non_nullable
              as String,
      tripName: null == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripSaleRequestStatus,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse,
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
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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

  @override
  @pragma('vm:prefer-inline')
  $WarehouseCopyWith<$Res> get warehouse {
    return $WarehouseCopyWith<$Res>(_value.warehouse, (value) {
      return _then(_value.copyWith(warehouse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripSaleRequestImplCopyWith<$Res>
    implements $TripSaleRequestCopyWith<$Res> {
  factory _$$TripSaleRequestImplCopyWith(_$TripSaleRequestImpl value,
          $Res Function(_$TripSaleRequestImpl) then) =
      __$$TripSaleRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String tripSaleRequestCode,
      String tripName,
      String date,
      TripSaleRequestStatus status,
      Warehouse warehouse,
      String deleteReason,
      String remark,
      String description,
      List<Product> products,
      int createdBy,
      int tripId});

  @override
  $WarehouseCopyWith<$Res> get warehouse;
}

/// @nodoc
class __$$TripSaleRequestImplCopyWithImpl<$Res>
    extends _$TripSaleRequestCopyWithImpl<$Res, _$TripSaleRequestImpl>
    implements _$$TripSaleRequestImplCopyWith<$Res> {
  __$$TripSaleRequestImplCopyWithImpl(
      _$TripSaleRequestImpl _value, $Res Function(_$TripSaleRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tripSaleRequestCode = null,
    Object? tripName = null,
    Object? date = null,
    Object? status = null,
    Object? warehouse = null,
    Object? deleteReason = null,
    Object? remark = null,
    Object? description = null,
    Object? products = null,
    Object? createdBy = null,
    Object? tripId = null,
  }) {
    return _then(_$TripSaleRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tripSaleRequestCode: null == tripSaleRequestCode
          ? _value.tripSaleRequestCode
          : tripSaleRequestCode // ignore: cast_nullable_to_non_nullable
              as String,
      tripName: null == tripName
          ? _value.tripName
          : tripName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripSaleRequestStatus,
      warehouse: null == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse,
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
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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

class _$TripSaleRequestImpl implements _TripSaleRequest {
  const _$TripSaleRequestImpl(
      {this.id = -1,
      this.tripSaleRequestCode = "",
      this.tripName = "",
      this.date = "",
      this.status = TripSaleRequestStatus.all,
      this.warehouse = const Warehouse(),
      this.deleteReason = "",
      this.remark = "",
      this.description = "",
      final List<Product> products = const [],
      this.createdBy = -1,
      this.tripId = -1})
      : _products = products;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String tripSaleRequestCode;
  @override
  @JsonKey()
  final String tripName;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final TripSaleRequestStatus status;
  @override
  @JsonKey()
  final Warehouse warehouse;
  @override
  @JsonKey()
  final String deleteReason;
  @override
  @JsonKey()
  final String remark;
  @override
  @JsonKey()
  final String description;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final int createdBy;
  @override
  @JsonKey()
  final int tripId;

  @override
  String toString() {
    return 'TripSaleRequest(id: $id, tripSaleRequestCode: $tripSaleRequestCode, tripName: $tripName, date: $date, status: $status, warehouse: $warehouse, deleteReason: $deleteReason, remark: $remark, description: $description, products: $products, createdBy: $createdBy, tripId: $tripId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripSaleRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tripSaleRequestCode, tripSaleRequestCode) ||
                other.tripSaleRequestCode == tripSaleRequestCode) &&
            (identical(other.tripName, tripName) ||
                other.tripName == tripName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.tripId, tripId) || other.tripId == tripId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tripSaleRequestCode,
      tripName,
      date,
      status,
      warehouse,
      deleteReason,
      remark,
      description,
      const DeepCollectionEquality().hash(_products),
      createdBy,
      tripId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripSaleRequestImplCopyWith<_$TripSaleRequestImpl> get copyWith =>
      __$$TripSaleRequestImplCopyWithImpl<_$TripSaleRequestImpl>(
          this, _$identity);
}

abstract class _TripSaleRequest implements TripSaleRequest {
  const factory _TripSaleRequest(
      {final int id,
      final String tripSaleRequestCode,
      final String tripName,
      final String date,
      final TripSaleRequestStatus status,
      final Warehouse warehouse,
      final String deleteReason,
      final String remark,
      final String description,
      final List<Product> products,
      final int createdBy,
      final int tripId}) = _$TripSaleRequestImpl;

  @override
  int get id;
  @override
  String get tripSaleRequestCode;
  @override
  String get tripName;
  @override
  String get date;
  @override
  TripSaleRequestStatus get status;
  @override
  Warehouse get warehouse;
  @override
  String get deleteReason;
  @override
  String get remark;
  @override
  String get description;
  @override
  List<Product> get products;
  @override
  int get createdBy;
  @override
  int get tripId;
  @override
  @JsonKey(ignore: true)
  _$$TripSaleRequestImplCopyWith<_$TripSaleRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
