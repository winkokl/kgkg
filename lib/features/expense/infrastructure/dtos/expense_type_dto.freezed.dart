// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseTypeDTO _$ExpenseTypeDTOFromJson(Map<String, dynamic> json) {
  return _ExpenseTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$ExpenseTypeDTO {
  @JsonKey(name: "expense_type_id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "expense_type_name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseTypeDTOCopyWith<ExpenseTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTypeDTOCopyWith<$Res> {
  factory $ExpenseTypeDTOCopyWith(
          ExpenseTypeDTO value, $Res Function(ExpenseTypeDTO) then) =
      _$ExpenseTypeDTOCopyWithImpl<$Res, ExpenseTypeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "expense_type_id") int id,
      @JsonKey(name: "expense_type_name") String name});
}

/// @nodoc
class _$ExpenseTypeDTOCopyWithImpl<$Res, $Val extends ExpenseTypeDTO>
    implements $ExpenseTypeDTOCopyWith<$Res> {
  _$ExpenseTypeDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$ExpenseTypeDTOImplCopyWith<$Res>
    implements $ExpenseTypeDTOCopyWith<$Res> {
  factory _$$ExpenseTypeDTOImplCopyWith(_$ExpenseTypeDTOImpl value,
          $Res Function(_$ExpenseTypeDTOImpl) then) =
      __$$ExpenseTypeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "expense_type_id") int id,
      @JsonKey(name: "expense_type_name") String name});
}

/// @nodoc
class __$$ExpenseTypeDTOImplCopyWithImpl<$Res>
    extends _$ExpenseTypeDTOCopyWithImpl<$Res, _$ExpenseTypeDTOImpl>
    implements _$$ExpenseTypeDTOImplCopyWith<$Res> {
  __$$ExpenseTypeDTOImplCopyWithImpl(
      _$ExpenseTypeDTOImpl _value, $Res Function(_$ExpenseTypeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ExpenseTypeDTOImpl(
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
class _$ExpenseTypeDTOImpl extends _ExpenseTypeDTO {
  const _$ExpenseTypeDTOImpl(
      {@JsonKey(name: "expense_type_id") this.id = -1,
      @JsonKey(name: "expense_type_name") this.name = ""})
      : super._();

  factory _$ExpenseTypeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseTypeDTOImplFromJson(json);

  @override
  @JsonKey(name: "expense_type_id")
  final int id;
  @override
  @JsonKey(name: "expense_type_name")
  final String name;

  @override
  String toString() {
    return 'ExpenseTypeDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTypeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseTypeDTOImplCopyWith<_$ExpenseTypeDTOImpl> get copyWith =>
      __$$ExpenseTypeDTOImplCopyWithImpl<_$ExpenseTypeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseTypeDTOImplToJson(
      this,
    );
  }
}

abstract class _ExpenseTypeDTO extends ExpenseTypeDTO {
  const factory _ExpenseTypeDTO(
          {@JsonKey(name: "expense_type_id") final int id,
          @JsonKey(name: "expense_type_name") final String name}) =
      _$ExpenseTypeDTOImpl;
  const _ExpenseTypeDTO._() : super._();

  factory _ExpenseTypeDTO.fromJson(Map<String, dynamic> json) =
      _$ExpenseTypeDTOImpl.fromJson;

  @override
  @JsonKey(name: "expense_type_id")
  int get id;
  @override
  @JsonKey(name: "expense_type_name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseTypeDTOImplCopyWith<_$ExpenseTypeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
