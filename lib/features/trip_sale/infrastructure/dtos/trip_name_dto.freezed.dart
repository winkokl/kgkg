// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_name_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripNameDTO _$TripNameDTOFromJson(Map<String, dynamic> json) {
  return _TripNameDTO.fromJson(json);
}

/// @nodoc
mixin _$TripNameDTO {
  @JsonKey(name: "trip_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripNameDTOCopyWith<TripNameDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripNameDTOCopyWith<$Res> {
  factory $TripNameDTOCopyWith(
          TripNameDTO value, $Res Function(TripNameDTO) then) =
      _$TripNameDTOCopyWithImpl<$Res, TripNameDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "trip_id") int id,
      @JsonKey(name: "trip_name") String name});
}

/// @nodoc
class _$TripNameDTOCopyWithImpl<$Res, $Val extends TripNameDTO>
    implements $TripNameDTOCopyWith<$Res> {
  _$TripNameDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$TripNameDTOImplCopyWith<$Res>
    implements $TripNameDTOCopyWith<$Res> {
  factory _$$TripNameDTOImplCopyWith(
          _$TripNameDTOImpl value, $Res Function(_$TripNameDTOImpl) then) =
      __$$TripNameDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "trip_id") int id,
      @JsonKey(name: "trip_name") String name});
}

/// @nodoc
class __$$TripNameDTOImplCopyWithImpl<$Res>
    extends _$TripNameDTOCopyWithImpl<$Res, _$TripNameDTOImpl>
    implements _$$TripNameDTOImplCopyWith<$Res> {
  __$$TripNameDTOImplCopyWithImpl(
      _$TripNameDTOImpl _value, $Res Function(_$TripNameDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TripNameDTOImpl(
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
class _$TripNameDTOImpl extends _TripNameDTO {
  const _$TripNameDTOImpl(
      {@JsonKey(name: "trip_id") this.id = -1,
      @JsonKey(name: "trip_name") this.name = ""})
      : super._();

  factory _$TripNameDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripNameDTOImplFromJson(json);

  @override
  @JsonKey(name: "trip_id")
  final int id;
  @override
  @JsonKey(name: "trip_name")
  final String name;

  @override
  String toString() {
    return 'TripNameDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripNameDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripNameDTOImplCopyWith<_$TripNameDTOImpl> get copyWith =>
      __$$TripNameDTOImplCopyWithImpl<_$TripNameDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripNameDTOImplToJson(
      this,
    );
  }
}

abstract class _TripNameDTO extends TripNameDTO {
  const factory _TripNameDTO(
      {@JsonKey(name: "trip_id") final int id,
      @JsonKey(name: "trip_name") final String name}) = _$TripNameDTOImpl;
  const _TripNameDTO._() : super._();

  factory _TripNameDTO.fromJson(Map<String, dynamic> json) =
      _$TripNameDTOImpl.fromJson;

  @override
  @JsonKey(name: "trip_id")
  int get id;
  @override
  @JsonKey(name: "trip_name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TripNameDTOImplCopyWith<_$TripNameDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
