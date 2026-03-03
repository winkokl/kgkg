// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CityDTO _$CityDTOFromJson(Map<String, dynamic> json) {
  return _CityDTO.fromJson(json);
}

/// @nodoc
mixin _$CityDTO {
  @JsonKey(name: 'cityid')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cityname')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'townships')
  List<TownshipDTO> get townshipDTO => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDTOCopyWith<CityDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDTOCopyWith<$Res> {
  factory $CityDTOCopyWith(CityDTO value, $Res Function(CityDTO) then) =
      _$CityDTOCopyWithImpl<$Res, CityDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cityid') int id,
      @JsonKey(name: 'cityname') String name,
      @JsonKey(name: 'townships') List<TownshipDTO> townshipDTO});
}

/// @nodoc
class _$CityDTOCopyWithImpl<$Res, $Val extends CityDTO>
    implements $CityDTOCopyWith<$Res> {
  _$CityDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? townshipDTO = null,
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
      townshipDTO: null == townshipDTO
          ? _value.townshipDTO
          : townshipDTO // ignore: cast_nullable_to_non_nullable
              as List<TownshipDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityDTOImplCopyWith<$Res> implements $CityDTOCopyWith<$Res> {
  factory _$$CityDTOImplCopyWith(
          _$CityDTOImpl value, $Res Function(_$CityDTOImpl) then) =
      __$$CityDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cityid') int id,
      @JsonKey(name: 'cityname') String name,
      @JsonKey(name: 'townships') List<TownshipDTO> townshipDTO});
}

/// @nodoc
class __$$CityDTOImplCopyWithImpl<$Res>
    extends _$CityDTOCopyWithImpl<$Res, _$CityDTOImpl>
    implements _$$CityDTOImplCopyWith<$Res> {
  __$$CityDTOImplCopyWithImpl(
      _$CityDTOImpl _value, $Res Function(_$CityDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? townshipDTO = null,
  }) {
    return _then(_$CityDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      townshipDTO: null == townshipDTO
          ? _value._townshipDTO
          : townshipDTO // ignore: cast_nullable_to_non_nullable
              as List<TownshipDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDTOImpl extends _CityDTO {
  const _$CityDTOImpl(
      {@JsonKey(name: 'cityid') this.id = -1,
      @JsonKey(name: 'cityname') this.name = '',
      @JsonKey(name: 'townships')
      final List<TownshipDTO> townshipDTO = const []})
      : _townshipDTO = townshipDTO,
        super._();

  factory _$CityDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDTOImplFromJson(json);

  @override
  @JsonKey(name: 'cityid')
  final int id;
  @override
  @JsonKey(name: 'cityname')
  final String name;
  final List<TownshipDTO> _townshipDTO;
  @override
  @JsonKey(name: 'townships')
  List<TownshipDTO> get townshipDTO {
    if (_townshipDTO is EqualUnmodifiableListView) return _townshipDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_townshipDTO);
  }

  @override
  String toString() {
    return 'CityDTO(id: $id, name: $name, townshipDTO: $townshipDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._townshipDTO, _townshipDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_townshipDTO));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDTOImplCopyWith<_$CityDTOImpl> get copyWith =>
      __$$CityDTOImplCopyWithImpl<_$CityDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDTOImplToJson(
      this,
    );
  }
}

abstract class _CityDTO extends CityDTO {
  const factory _CityDTO(
          {@JsonKey(name: 'cityid') final int id,
          @JsonKey(name: 'cityname') final String name,
          @JsonKey(name: 'townships') final List<TownshipDTO> townshipDTO}) =
      _$CityDTOImpl;
  const _CityDTO._() : super._();

  factory _CityDTO.fromJson(Map<String, dynamic> json) = _$CityDTOImpl.fromJson;

  @override
  @JsonKey(name: 'cityid')
  int get id;
  @override
  @JsonKey(name: 'cityname')
  String get name;
  @override
  @JsonKey(name: 'townships')
  List<TownshipDTO> get townshipDTO;
  @override
  @JsonKey(ignore: true)
  _$$CityDTOImplCopyWith<_$CityDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
