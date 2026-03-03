// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'way_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WayDto _$WayDtoFromJson(Map<String, dynamic> json) {
  return _WayDto.fromJson(json);
}

/// @nodoc
mixin _$WayDto {
  @JsonKey(name: 'way_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'way_name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WayDtoCopyWith<WayDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WayDtoCopyWith<$Res> {
  factory $WayDtoCopyWith(WayDto value, $Res Function(WayDto) then) =
      _$WayDtoCopyWithImpl<$Res, WayDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'way_id') int id,
      @JsonKey(name: 'way_name') String name});
}

/// @nodoc
class _$WayDtoCopyWithImpl<$Res, $Val extends WayDto>
    implements $WayDtoCopyWith<$Res> {
  _$WayDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$WayDtoImplCopyWith<$Res> implements $WayDtoCopyWith<$Res> {
  factory _$$WayDtoImplCopyWith(
          _$WayDtoImpl value, $Res Function(_$WayDtoImpl) then) =
      __$$WayDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'way_id') int id,
      @JsonKey(name: 'way_name') String name});
}

/// @nodoc
class __$$WayDtoImplCopyWithImpl<$Res>
    extends _$WayDtoCopyWithImpl<$Res, _$WayDtoImpl>
    implements _$$WayDtoImplCopyWith<$Res> {
  __$$WayDtoImplCopyWithImpl(
      _$WayDtoImpl _value, $Res Function(_$WayDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$WayDtoImpl(
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
class _$WayDtoImpl extends _WayDto {
  const _$WayDtoImpl(
      {@JsonKey(name: 'way_id') this.id = -1,
      @JsonKey(name: 'way_name') this.name = ""})
      : super._();

  factory _$WayDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WayDtoImplFromJson(json);

  @override
  @JsonKey(name: 'way_id')
  final int id;
  @override
  @JsonKey(name: 'way_name')
  final String name;

  @override
  String toString() {
    return 'WayDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WayDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WayDtoImplCopyWith<_$WayDtoImpl> get copyWith =>
      __$$WayDtoImplCopyWithImpl<_$WayDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WayDtoImplToJson(
      this,
    );
  }
}

abstract class _WayDto extends WayDto {
  const factory _WayDto(
      {@JsonKey(name: 'way_id') final int id,
      @JsonKey(name: 'way_name') final String name}) = _$WayDtoImpl;
  const _WayDto._() : super._();

  factory _WayDto.fromJson(Map<String, dynamic> json) = _$WayDtoImpl.fromJson;

  @override
  @JsonKey(name: 'way_id')
  int get id;
  @override
  @JsonKey(name: 'way_name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WayDtoImplCopyWith<_$WayDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
