// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryNote {
  int get id => throw _privateConstructorUsedError;
  int get goodsRequestNoteId => throw _privateConstructorUsedError;
  String get goodsDeliveryNoteCode => throw _privateConstructorUsedError;
  String get issueDate => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  String? get deliveryCompleteDate => throw _privateConstructorUsedError;
  DeliveryNoteStatus get status => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  String get invoiceDate => throw _privateConstructorUsedError;
  String get customerFirstName => throw _privateConstructorUsedError;
  String get customerAddress => throw _privateConstructorUsedError;
  String get customerLastName => throw _privateConstructorUsedError;
  String get customerPhone => throw _privateConstructorUsedError;
  String get businessUnitName => throw _privateConstructorUsedError;
  String get businessUnitAddress => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get signUrl => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  String get wayName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryNoteCopyWith<DeliveryNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryNoteCopyWith<$Res> {
  factory $DeliveryNoteCopyWith(
          DeliveryNote value, $Res Function(DeliveryNote) then) =
      _$DeliveryNoteCopyWithImpl<$Res, DeliveryNote>;
  @useResult
  $Res call(
      {int id,
      int goodsRequestNoteId,
      String goodsDeliveryNoteCode,
      String issueDate,
      String deliveryDate,
      String? deliveryCompleteDate,
      DeliveryNoteStatus status,
      String referenceId,
      String invoiceDate,
      String customerFirstName,
      String customerAddress,
      String customerLastName,
      String customerPhone,
      String businessUnitName,
      String businessUnitAddress,
      String description,
      String signUrl,
      List<Product> products,
      String wayName});
}

/// @nodoc
class _$DeliveryNoteCopyWithImpl<$Res, $Val extends DeliveryNote>
    implements $DeliveryNoteCopyWith<$Res> {
  _$DeliveryNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? customerLastName = null,
    Object? customerPhone = null,
    Object? businessUnitName = null,
    Object? businessUnitAddress = null,
    Object? description = null,
    Object? signUrl = null,
    Object? products = null,
    Object? wayName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as DeliveryNoteStatus,
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
      customerLastName: null == customerLastName
          ? _value.customerLastName
          : customerLastName // ignore: cast_nullable_to_non_nullable
              as String,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryNoteImplCopyWith<$Res>
    implements $DeliveryNoteCopyWith<$Res> {
  factory _$$DeliveryNoteImplCopyWith(
          _$DeliveryNoteImpl value, $Res Function(_$DeliveryNoteImpl) then) =
      __$$DeliveryNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int goodsRequestNoteId,
      String goodsDeliveryNoteCode,
      String issueDate,
      String deliveryDate,
      String? deliveryCompleteDate,
      DeliveryNoteStatus status,
      String referenceId,
      String invoiceDate,
      String customerFirstName,
      String customerAddress,
      String customerLastName,
      String customerPhone,
      String businessUnitName,
      String businessUnitAddress,
      String description,
      String signUrl,
      List<Product> products,
      String wayName});
}

/// @nodoc
class __$$DeliveryNoteImplCopyWithImpl<$Res>
    extends _$DeliveryNoteCopyWithImpl<$Res, _$DeliveryNoteImpl>
    implements _$$DeliveryNoteImplCopyWith<$Res> {
  __$$DeliveryNoteImplCopyWithImpl(
      _$DeliveryNoteImpl _value, $Res Function(_$DeliveryNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    Object? customerLastName = null,
    Object? customerPhone = null,
    Object? businessUnitName = null,
    Object? businessUnitAddress = null,
    Object? description = null,
    Object? signUrl = null,
    Object? products = null,
    Object? wayName = null,
  }) {
    return _then(_$DeliveryNoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
              as DeliveryNoteStatus,
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
      customerLastName: null == customerLastName
          ? _value.customerLastName
          : customerLastName // ignore: cast_nullable_to_non_nullable
              as String,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      signUrl: null == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      wayName: null == wayName
          ? _value.wayName
          : wayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryNoteImpl implements _DeliveryNote {
  const _$DeliveryNoteImpl(
      {this.id = -1,
      this.goodsRequestNoteId = -1,
      this.goodsDeliveryNoteCode = "",
      this.issueDate = "",
      this.deliveryDate = "",
      this.deliveryCompleteDate,
      this.status = DeliveryNoteStatus.none,
      this.referenceId = "",
      this.invoiceDate = "",
      this.customerFirstName = "",
      this.customerAddress = "",
      this.customerLastName = "",
      this.customerPhone = "",
      this.businessUnitName = "",
      this.businessUnitAddress = "",
      this.description = "",
      this.signUrl = "",
      final List<Product> products = const [],
      this.wayName = ""})
      : _products = products;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int goodsRequestNoteId;
  @override
  @JsonKey()
  final String goodsDeliveryNoteCode;
  @override
  @JsonKey()
  final String issueDate;
  @override
  @JsonKey()
  final String deliveryDate;
  @override
  final String? deliveryCompleteDate;
  @override
  @JsonKey()
  final DeliveryNoteStatus status;
  @override
  @JsonKey()
  final String referenceId;
  @override
  @JsonKey()
  final String invoiceDate;
  @override
  @JsonKey()
  final String customerFirstName;
  @override
  @JsonKey()
  final String customerAddress;
  @override
  @JsonKey()
  final String customerLastName;
  @override
  @JsonKey()
  final String customerPhone;
  @override
  @JsonKey()
  final String businessUnitName;
  @override
  @JsonKey()
  final String businessUnitAddress;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String signUrl;
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
  final String wayName;

  @override
  String toString() {
    return 'DeliveryNote(id: $id, goodsRequestNoteId: $goodsRequestNoteId, goodsDeliveryNoteCode: $goodsDeliveryNoteCode, issueDate: $issueDate, deliveryDate: $deliveryDate, deliveryCompleteDate: $deliveryCompleteDate, status: $status, referenceId: $referenceId, invoiceDate: $invoiceDate, customerFirstName: $customerFirstName, customerAddress: $customerAddress, customerLastName: $customerLastName, customerPhone: $customerPhone, businessUnitName: $businessUnitName, businessUnitAddress: $businessUnitAddress, description: $description, signUrl: $signUrl, products: $products, wayName: $wayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.wayName, wayName) || other.wayName == wayName));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
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
        description,
        signUrl,
        const DeepCollectionEquality().hash(_products),
        wayName
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryNoteImplCopyWith<_$DeliveryNoteImpl> get copyWith =>
      __$$DeliveryNoteImplCopyWithImpl<_$DeliveryNoteImpl>(this, _$identity);
}

abstract class _DeliveryNote implements DeliveryNote {
  const factory _DeliveryNote(
      {final int id,
      final int goodsRequestNoteId,
      final String goodsDeliveryNoteCode,
      final String issueDate,
      final String deliveryDate,
      final String? deliveryCompleteDate,
      final DeliveryNoteStatus status,
      final String referenceId,
      final String invoiceDate,
      final String customerFirstName,
      final String customerAddress,
      final String customerLastName,
      final String customerPhone,
      final String businessUnitName,
      final String businessUnitAddress,
      final String description,
      final String signUrl,
      final List<Product> products,
      final String wayName}) = _$DeliveryNoteImpl;

  @override
  int get id;
  @override
  int get goodsRequestNoteId;
  @override
  String get goodsDeliveryNoteCode;
  @override
  String get issueDate;
  @override
  String get deliveryDate;
  @override
  String? get deliveryCompleteDate;
  @override
  DeliveryNoteStatus get status;
  @override
  String get referenceId;
  @override
  String get invoiceDate;
  @override
  String get customerFirstName;
  @override
  String get customerAddress;
  @override
  String get customerLastName;
  @override
  String get customerPhone;
  @override
  String get businessUnitName;
  @override
  String get businessUnitAddress;
  @override
  String get description;
  @override
  String get signUrl;
  @override
  List<Product> get products;
  @override
  String get wayName;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryNoteImplCopyWith<_$DeliveryNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
