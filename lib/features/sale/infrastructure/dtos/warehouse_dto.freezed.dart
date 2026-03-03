// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WarehouseDTO _$WarehouseDTOFromJson(Map<String, dynamic> json) {
  return _WarehouseDTO.fromJson(json);
}

/// @nodoc
mixin _$WarehouseDTO {
  @JsonKey(name: 'warehouse_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'warehouse_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_warehouse_name')
  String get mainWarehouseName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarehouseDTOCopyWith<WarehouseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseDTOCopyWith<$Res> {
  factory $WarehouseDTOCopyWith(
          WarehouseDTO value, $Res Function(WarehouseDTO) then) =
      _$WarehouseDTOCopyWithImpl<$Res, WarehouseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'warehouse_id') int id,
      @JsonKey(name: 'warehouse_name') String name,
      @JsonKey(name: 'main_warehouse_name') String mainWarehouseName});
}

/// @nodoc
class _$WarehouseDTOCopyWithImpl<$Res, $Val extends WarehouseDTO>
    implements $WarehouseDTOCopyWith<$Res> {
  _$WarehouseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainWarehouseName = null,
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
      mainWarehouseName: null == mainWarehouseName
          ? _value.mainWarehouseName
          : mainWarehouseName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseDTOImplCopyWith<$Res>
    implements $WarehouseDTOCopyWith<$Res> {
  factory _$$WarehouseDTOImplCopyWith(
          _$WarehouseDTOImpl value, $Res Function(_$WarehouseDTOImpl) then) =
      __$$WarehouseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'warehouse_id') int id,
      @JsonKey(name: 'warehouse_name') String name,
      @JsonKey(name: 'main_warehouse_name') String mainWarehouseName});
}

/// @nodoc
class __$$WarehouseDTOImplCopyWithImpl<$Res>
    extends _$WarehouseDTOCopyWithImpl<$Res, _$WarehouseDTOImpl>
    implements _$$WarehouseDTOImplCopyWith<$Res> {
  __$$WarehouseDTOImplCopyWithImpl(
      _$WarehouseDTOImpl _value, $Res Function(_$WarehouseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainWarehouseName = null,
  }) {
    return _then(_$WarehouseDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainWarehouseName: null == mainWarehouseName
          ? _value.mainWarehouseName
          : mainWarehouseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseDTOImpl extends _WarehouseDTO {
  _$WarehouseDTOImpl(
      {@JsonKey(name: 'warehouse_id') this.id = -1,
      @JsonKey(name: 'warehouse_name') this.name = "",
      @JsonKey(name: 'main_warehouse_name') this.mainWarehouseName = ""})
      : super._();

  factory _$WarehouseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseDTOImplFromJson(json);

  @override
  @JsonKey(name: 'warehouse_id')
  final int id;
  @override
  @JsonKey(name: 'warehouse_name')
  final String name;
  @override
  @JsonKey(name: 'main_warehouse_name')
  final String mainWarehouseName;

  @override
  String toString() {
    return 'WarehouseDTO(id: $id, name: $name, mainWarehouseName: $mainWarehouseName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainWarehouseName, mainWarehouseName) ||
                other.mainWarehouseName == mainWarehouseName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mainWarehouseName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseDTOImplCopyWith<_$WarehouseDTOImpl> get copyWith =>
      __$$WarehouseDTOImplCopyWithImpl<_$WarehouseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseDTOImplToJson(
      this,
    );
  }
}

abstract class _WarehouseDTO extends WarehouseDTO {
  factory _WarehouseDTO(
      {@JsonKey(name: 'warehouse_id') final int id,
      @JsonKey(name: 'warehouse_name') final String name,
      @JsonKey(name: 'main_warehouse_name')
      final String mainWarehouseName}) = _$WarehouseDTOImpl;
  _WarehouseDTO._() : super._();

  factory _WarehouseDTO.fromJson(Map<String, dynamic> json) =
      _$WarehouseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'warehouse_id')
  int get id;
  @override
  @JsonKey(name: 'warehouse_name')
  String get name;
  @override
  @JsonKey(name: 'main_warehouse_name')
  String get mainWarehouseName;
  @override
  @JsonKey(ignore: true)
  _$$WarehouseDTOImplCopyWith<_$WarehouseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
