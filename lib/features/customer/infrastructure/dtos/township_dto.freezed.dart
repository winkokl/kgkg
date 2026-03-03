// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'township_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TownshipDTO _$TownshipDTOFromJson(Map<String, dynamic> json) {
  return _TownshipDTO.fromJson(json);
}

/// @nodoc
mixin _$TownshipDTO {
  @JsonKey(name: 'townshipid')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'townshipname')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TownshipDTOCopyWith<TownshipDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownshipDTOCopyWith<$Res> {
  factory $TownshipDTOCopyWith(
          TownshipDTO value, $Res Function(TownshipDTO) then) =
      _$TownshipDTOCopyWithImpl<$Res, TownshipDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'townshipid') int id,
      @JsonKey(name: 'townshipname') String name});
}

/// @nodoc
class _$TownshipDTOCopyWithImpl<$Res, $Val extends TownshipDTO>
    implements $TownshipDTOCopyWith<$Res> {
  _$TownshipDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TownshipDTOImplCopyWith<$Res>
    implements $TownshipDTOCopyWith<$Res> {
  factory _$$TownshipDTOImplCopyWith(
          _$TownshipDTOImpl value, $Res Function(_$TownshipDTOImpl) then) =
      __$$TownshipDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'townshipid') int id,
      @JsonKey(name: 'townshipname') String name});
}

/// @nodoc
class __$$TownshipDTOImplCopyWithImpl<$Res>
    extends _$TownshipDTOCopyWithImpl<$Res, _$TownshipDTOImpl>
    implements _$$TownshipDTOImplCopyWith<$Res> {
  __$$TownshipDTOImplCopyWithImpl(
      _$TownshipDTOImpl _value, $Res Function(_$TownshipDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TownshipDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TownshipDTOImpl extends _TownshipDTO {
  const _$TownshipDTOImpl(
      {@JsonKey(name: 'townshipid') this.id = -1,
      @JsonKey(name: 'townshipname') this.name = ""})
      : super._();

  factory _$TownshipDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TownshipDTOImplFromJson(json);

  @override
  @JsonKey(name: 'townshipid')
  final int id;
  @override
  @JsonKey(name: 'townshipname')
  final String name;

  @override
  String toString() {
    return 'TownshipDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TownshipDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TownshipDTOImplCopyWith<_$TownshipDTOImpl> get copyWith =>
      __$$TownshipDTOImplCopyWithImpl<_$TownshipDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TownshipDTOImplToJson(
      this,
    );
  }
}

abstract class _TownshipDTO extends TownshipDTO {
  const factory _TownshipDTO(
      {@JsonKey(name: 'townshipid') final int id,
      @JsonKey(name: 'townshipname') final String name}) = _$TownshipDTOImpl;
  const _TownshipDTO._() : super._();

  factory _TownshipDTO.fromJson(Map<String, dynamic> json) =
      _$TownshipDTOImpl.fromJson;

  @override
  @JsonKey(name: 'townshipid')
  int get id;
  @override
  @JsonKey(name: 'townshipname')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TownshipDTOImplCopyWith<_$TownshipDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
