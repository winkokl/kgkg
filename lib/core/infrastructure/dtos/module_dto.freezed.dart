// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModuleDTO _$ModuleDTOFromJson(Map<String, dynamic> json) {
  return _ModuleDTO.fromJson(json);
}

/// @nodoc
mixin _$ModuleDTO {
  @JsonKey(name: "module")
  String get name => throw _privateConstructorUsedError;
  List<String> get actions => throw _privateConstructorUsedError;
  @JsonKey(name: "submodules")
  List<SubModuleDTO> get subModuleDtos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModuleDTOCopyWith<ModuleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleDTOCopyWith<$Res> {
  factory $ModuleDTOCopyWith(ModuleDTO value, $Res Function(ModuleDTO) then) =
      _$ModuleDTOCopyWithImpl<$Res, ModuleDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "module") String name,
      List<String> actions,
      @JsonKey(name: "submodules") List<SubModuleDTO> subModuleDtos});
}

/// @nodoc
class _$ModuleDTOCopyWithImpl<$Res, $Val extends ModuleDTO>
    implements $ModuleDTOCopyWith<$Res> {
  _$ModuleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? actions = null,
    Object? subModuleDtos = null,
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
      subModuleDtos: null == subModuleDtos
          ? _value.subModuleDtos
          : subModuleDtos // ignore: cast_nullable_to_non_nullable
              as List<SubModuleDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleDTOImplCopyWith<$Res>
    implements $ModuleDTOCopyWith<$Res> {
  factory _$$ModuleDTOImplCopyWith(
          _$ModuleDTOImpl value, $Res Function(_$ModuleDTOImpl) then) =
      __$$ModuleDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "module") String name,
      List<String> actions,
      @JsonKey(name: "submodules") List<SubModuleDTO> subModuleDtos});
}

/// @nodoc
class __$$ModuleDTOImplCopyWithImpl<$Res>
    extends _$ModuleDTOCopyWithImpl<$Res, _$ModuleDTOImpl>
    implements _$$ModuleDTOImplCopyWith<$Res> {
  __$$ModuleDTOImplCopyWithImpl(
      _$ModuleDTOImpl _value, $Res Function(_$ModuleDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? actions = null,
    Object? subModuleDtos = null,
  }) {
    return _then(_$ModuleDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subModuleDtos: null == subModuleDtos
          ? _value._subModuleDtos
          : subModuleDtos // ignore: cast_nullable_to_non_nullable
              as List<SubModuleDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleDTOImpl extends _ModuleDTO {
  const _$ModuleDTOImpl(
      {@JsonKey(name: "module") this.name = "",
      final List<String> actions = const [],
      @JsonKey(name: "submodules")
      final List<SubModuleDTO> subModuleDtos = const []})
      : _actions = actions,
        _subModuleDtos = subModuleDtos,
        super._();

  factory _$ModuleDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModuleDTOImplFromJson(json);

  @override
  @JsonKey(name: "module")
  final String name;
  final List<String> _actions;
  @override
  @JsonKey()
  List<String> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  final List<SubModuleDTO> _subModuleDtos;
  @override
  @JsonKey(name: "submodules")
  List<SubModuleDTO> get subModuleDtos {
    if (_subModuleDtos is EqualUnmodifiableListView) return _subModuleDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subModuleDtos);
  }

  @override
  String toString() {
    return 'ModuleDTO(name: $name, actions: $actions, subModuleDtos: $subModuleDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            const DeepCollectionEquality()
                .equals(other._subModuleDtos, _subModuleDtos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_actions),
      const DeepCollectionEquality().hash(_subModuleDtos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleDTOImplCopyWith<_$ModuleDTOImpl> get copyWith =>
      __$$ModuleDTOImplCopyWithImpl<_$ModuleDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleDTOImplToJson(
      this,
    );
  }
}

abstract class _ModuleDTO extends ModuleDTO {
  const factory _ModuleDTO(
      {@JsonKey(name: "module") final String name,
      final List<String> actions,
      @JsonKey(name: "submodules")
      final List<SubModuleDTO> subModuleDtos}) = _$ModuleDTOImpl;
  const _ModuleDTO._() : super._();

  factory _ModuleDTO.fromJson(Map<String, dynamic> json) =
      _$ModuleDTOImpl.fromJson;

  @override
  @JsonKey(name: "module")
  String get name;
  @override
  List<String> get actions;
  @override
  @JsonKey(name: "submodules")
  List<SubModuleDTO> get subModuleDtos;
  @override
  @JsonKey(ignore: true)
  _$$ModuleDTOImplCopyWith<_$ModuleDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
