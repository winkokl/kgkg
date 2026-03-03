// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DivisionDTO _$DivisionDTOFromJson(Map<String, dynamic> json) {
  return _DivisionDTO.fromJson(json);
}

/// @nodoc
mixin _$DivisionDTO {
  @JsonKey(name: "stateid")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "cities")
  List<CityDTO> get cityDTO => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DivisionDTOCopyWith<DivisionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionDTOCopyWith<$Res> {
  factory $DivisionDTOCopyWith(
          DivisionDTO value, $Res Function(DivisionDTO) then) =
      _$DivisionDTOCopyWithImpl<$Res, DivisionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "stateid") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "cities") List<CityDTO> cityDTO});
}

/// @nodoc
class _$DivisionDTOCopyWithImpl<$Res, $Val extends DivisionDTO>
    implements $DivisionDTOCopyWith<$Res> {
  _$DivisionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cityDTO = null,
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
      cityDTO: null == cityDTO
          ? _value.cityDTO
          : cityDTO // ignore: cast_nullable_to_non_nullable
              as List<CityDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionDTOImplCopyWith<$Res>
    implements $DivisionDTOCopyWith<$Res> {
  factory _$$DivisionDTOImplCopyWith(
          _$DivisionDTOImpl value, $Res Function(_$DivisionDTOImpl) then) =
      __$$DivisionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "stateid") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "cities") List<CityDTO> cityDTO});
}

/// @nodoc
class __$$DivisionDTOImplCopyWithImpl<$Res>
    extends _$DivisionDTOCopyWithImpl<$Res, _$DivisionDTOImpl>
    implements _$$DivisionDTOImplCopyWith<$Res> {
  __$$DivisionDTOImplCopyWithImpl(
      _$DivisionDTOImpl _value, $Res Function(_$DivisionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cityDTO = null,
  }) {
    return _then(_$DivisionDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cityDTO: null == cityDTO
          ? _value._cityDTO
          : cityDTO // ignore: cast_nullable_to_non_nullable
              as List<CityDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionDTOImpl extends _DivisionDTO {
  const _$DivisionDTOImpl(
      {@JsonKey(name: "stateid") this.id = -1,
      @JsonKey(name: "name") this.name = "",
      @JsonKey(name: "cities") final List<CityDTO> cityDTO = const []})
      : _cityDTO = cityDTO,
        super._();

  factory _$DivisionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionDTOImplFromJson(json);

  @override
  @JsonKey(name: "stateid")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  final List<CityDTO> _cityDTO;
  @override
  @JsonKey(name: "cities")
  List<CityDTO> get cityDTO {
    if (_cityDTO is EqualUnmodifiableListView) return _cityDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cityDTO);
  }

  @override
  String toString() {
    return 'DivisionDTO(id: $id, name: $name, cityDTO: $cityDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._cityDTO, _cityDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_cityDTO));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionDTOImplCopyWith<_$DivisionDTOImpl> get copyWith =>
      __$$DivisionDTOImplCopyWithImpl<_$DivisionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionDTOImplToJson(
      this,
    );
  }
}

abstract class _DivisionDTO extends DivisionDTO {
  const factory _DivisionDTO(
          {@JsonKey(name: "stateid") final int id,
          @JsonKey(name: "name") final String name,
          @JsonKey(name: "cities") final List<CityDTO> cityDTO}) =
      _$DivisionDTOImpl;
  const _DivisionDTO._() : super._();

  factory _DivisionDTO.fromJson(Map<String, dynamic> json) =
      _$DivisionDTOImpl.fromJson;

  @override
  @JsonKey(name: "stateid")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "cities")
  List<CityDTO> get cityDTO;
  @override
  @JsonKey(ignore: true)
  _$$DivisionDTOImplCopyWith<_$DivisionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
