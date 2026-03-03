// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_module_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubModuleDTO _$SubModuleDTOFromJson(Map<String, dynamic> json) {
  return _SubModuleDTO.fromJson(json);
}

/// @nodoc
mixin _$SubModuleDTO {
  String get name => throw _privateConstructorUsedError;
  List<String> get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubModuleDTOCopyWith<SubModuleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubModuleDTOCopyWith<$Res> {
  factory $SubModuleDTOCopyWith(
          SubModuleDTO value, $Res Function(SubModuleDTO) then) =
      _$SubModuleDTOCopyWithImpl<$Res, SubModuleDTO>;
  @useResult
  $Res call({String name, List<String> actions});
}

/// @nodoc
class _$SubModuleDTOCopyWithImpl<$Res, $Val extends SubModuleDTO>
    implements $SubModuleDTOCopyWith<$Res> {
  _$SubModuleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubModuleDTOImplCopyWith<$Res>
    implements $SubModuleDTOCopyWith<$Res> {
  factory _$$SubModuleDTOImplCopyWith(
          _$SubModuleDTOImpl value, $Res Function(_$SubModuleDTOImpl) then) =
      __$$SubModuleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> actions});
}

/// @nodoc
class __$$SubModuleDTOImplCopyWithImpl<$Res>
    extends _$SubModuleDTOCopyWithImpl<$Res, _$SubModuleDTOImpl>
    implements _$$SubModuleDTOImplCopyWith<$Res> {
  __$$SubModuleDTOImplCopyWithImpl(
      _$SubModuleDTOImpl _value, $Res Function(_$SubModuleDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? actions = null,
  }) {
    return _then(_$SubModuleDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubModuleDTOImpl extends _SubModuleDTO {
  const _$SubModuleDTOImpl(
      {this.name = "", final List<String> actions = const []})
      : _actions = actions,
        super._();

  factory _$SubModuleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubModuleDTOImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  final List<String> _actions;
  @override
  @JsonKey()
  List<String> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'SubModuleDTO(name: $name, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubModuleDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubModuleDTOImplCopyWith<_$SubModuleDTOImpl> get copyWith =>
      __$$SubModuleDTOImplCopyWithImpl<_$SubModuleDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubModuleDTOImplToJson(
      this,
    );
  }
}

abstract class _SubModuleDTO extends SubModuleDTO {
  const factory _SubModuleDTO({final String name, final List<String> actions}) =
      _$SubModuleDTOImpl;
  const _SubModuleDTO._() : super._();

  factory _SubModuleDTO.fromJson(Map<String, dynamic> json) =
      _$SubModuleDTOImpl.fromJson;

  @override
  String get name;
  @override
  List<String> get actions;
  @override
  @JsonKey(ignore: true)
  _$$SubModuleDTOImplCopyWith<_$SubModuleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
