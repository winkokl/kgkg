// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerCategoryDTO _$CustomerCategoryDTOFromJson(Map<String, dynamic> json) {
  return _CustomerCategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerCategoryDTO {
  @JsonKey(name: 'customer_category_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_category_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCategoryDTOCopyWith<CustomerCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCategoryDTOCopyWith<$Res> {
  factory $CustomerCategoryDTOCopyWith(
          CustomerCategoryDTO value, $Res Function(CustomerCategoryDTO) then) =
      _$CustomerCategoryDTOCopyWithImpl<$Res, CustomerCategoryDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_category_id') int id,
      @JsonKey(name: 'customer_category_name') String name,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class _$CustomerCategoryDTOCopyWithImpl<$Res, $Val extends CustomerCategoryDTO>
    implements $CustomerCategoryDTOCopyWith<$Res> {
  _$CustomerCategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerCategoryDTOImplCopyWith<$Res>
    implements $CustomerCategoryDTOCopyWith<$Res> {
  factory _$$CustomerCategoryDTOImplCopyWith(_$CustomerCategoryDTOImpl value,
          $Res Function(_$CustomerCategoryDTOImpl) then) =
      __$$CustomerCategoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_category_id') int id,
      @JsonKey(name: 'customer_category_name') String name,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$CustomerCategoryDTOImplCopyWithImpl<$Res>
    extends _$CustomerCategoryDTOCopyWithImpl<$Res, _$CustomerCategoryDTOImpl>
    implements _$$CustomerCategoryDTOImplCopyWith<$Res> {
  __$$CustomerCategoryDTOImplCopyWithImpl(_$CustomerCategoryDTOImpl _value,
      $Res Function(_$CustomerCategoryDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$CustomerCategoryDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerCategoryDTOImpl extends _CustomerCategoryDTO {
  const _$CustomerCategoryDTOImpl(
      {@JsonKey(name: 'customer_category_id') this.id = -1,
      @JsonKey(name: 'customer_category_name') this.name = "",
      @JsonKey(name: 'status') this.status = -1})
      : super._();

  factory _$CustomerCategoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerCategoryDTOImplFromJson(json);

  @override
  @JsonKey(name: 'customer_category_id')
  final int id;
  @override
  @JsonKey(name: 'customer_category_name')
  final String name;
  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'CustomerCategoryDTO(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCategoryDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCategoryDTOImplCopyWith<_$CustomerCategoryDTOImpl> get copyWith =>
      __$$CustomerCategoryDTOImplCopyWithImpl<_$CustomerCategoryDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerCategoryDTOImplToJson(
      this,
    );
  }
}

abstract class _CustomerCategoryDTO extends CustomerCategoryDTO {
  const factory _CustomerCategoryDTO(
      {@JsonKey(name: 'customer_category_id') final int id,
      @JsonKey(name: 'customer_category_name') final String name,
      @JsonKey(name: 'status') final int status}) = _$CustomerCategoryDTOImpl;
  const _CustomerCategoryDTO._() : super._();

  factory _CustomerCategoryDTO.fromJson(Map<String, dynamic> json) =
      _$CustomerCategoryDTOImpl.fromJson;

  @override
  @JsonKey(name: 'customer_category_id')
  int get id;
  @override
  @JsonKey(name: 'customer_category_name')
  String get name;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$CustomerCategoryDTOImplCopyWith<_$CustomerCategoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
