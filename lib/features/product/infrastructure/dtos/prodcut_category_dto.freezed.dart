// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prodcut_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductCategoryDTO _$ProductCategoryDTOFromJson(Map<String, dynamic> json) {
  return _ProductCategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryDTO {
  @JsonKey(name: "product_category_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_category_name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "consignment_contract_id")
  int? get consignmentContractId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryDTOCopyWith<ProductCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryDTOCopyWith<$Res> {
  factory $ProductCategoryDTOCopyWith(
          ProductCategoryDTO value, $Res Function(ProductCategoryDTO) then) =
      _$ProductCategoryDTOCopyWithImpl<$Res, ProductCategoryDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_category_id") int id,
      @JsonKey(name: "product_category_name") String name,
      @JsonKey(name: "consignment_contract_id") int? consignmentContractId});
}

/// @nodoc
class _$ProductCategoryDTOCopyWithImpl<$Res, $Val extends ProductCategoryDTO>
    implements $ProductCategoryDTOCopyWith<$Res> {
  _$ProductCategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? consignmentContractId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentContractId: freezed == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryDTOImplCopyWith<$Res>
    implements $ProductCategoryDTOCopyWith<$Res> {
  factory _$$ProductCategoryDTOImplCopyWith(_$ProductCategoryDTOImpl value,
          $Res Function(_$ProductCategoryDTOImpl) then) =
      __$$ProductCategoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_category_id") int id,
      @JsonKey(name: "product_category_name") String name,
      @JsonKey(name: "consignment_contract_id") int? consignmentContractId});
}

/// @nodoc
class __$$ProductCategoryDTOImplCopyWithImpl<$Res>
    extends _$ProductCategoryDTOCopyWithImpl<$Res, _$ProductCategoryDTOImpl>
    implements _$$ProductCategoryDTOImplCopyWith<$Res> {
  __$$ProductCategoryDTOImplCopyWithImpl(_$ProductCategoryDTOImpl _value,
      $Res Function(_$ProductCategoryDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? consignmentContractId = freezed,
  }) {
    return _then(_$ProductCategoryDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      consignmentContractId: freezed == consignmentContractId
          ? _value.consignmentContractId
          : consignmentContractId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryDTOImpl extends _ProductCategoryDTO {
  const _$ProductCategoryDTOImpl(
      {@JsonKey(name: "product_category_id") this.id = -1,
      @JsonKey(name: "product_category_name") this.name = "",
      @JsonKey(name: "consignment_contract_id") this.consignmentContractId})
      : super._();

  factory _$ProductCategoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryDTOImplFromJson(json);

  @override
  @JsonKey(name: "product_category_id")
  final int id;
  @override
  @JsonKey(name: "product_category_name")
  final String name;
  @override
  @JsonKey(name: "consignment_contract_id")
  final int? consignmentContractId;

  @override
  String toString() {
    return 'ProductCategoryDTO(id: $id, name: $name, consignmentContractId: $consignmentContractId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.consignmentContractId, consignmentContractId) ||
                other.consignmentContractId == consignmentContractId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, consignmentContractId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryDTOImplCopyWith<_$ProductCategoryDTOImpl> get copyWith =>
      __$$ProductCategoryDTOImplCopyWithImpl<_$ProductCategoryDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductCategoryDTO extends ProductCategoryDTO {
  const factory _ProductCategoryDTO(
      {@JsonKey(name: "product_category_id") final int id,
      @JsonKey(name: "product_category_name") final String name,
      @JsonKey(name: "consignment_contract_id")
      final int? consignmentContractId}) = _$ProductCategoryDTOImpl;
  const _ProductCategoryDTO._() : super._();

  factory _ProductCategoryDTO.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryDTOImpl.fromJson;

  @override
  @JsonKey(name: "product_category_id")
  int get id;
  @override
  @JsonKey(name: "product_category_name")
  String get name;
  @override
  @JsonKey(name: "consignment_contract_id")
  int? get consignmentContractId;
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryDTOImplCopyWith<_$ProductCategoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
