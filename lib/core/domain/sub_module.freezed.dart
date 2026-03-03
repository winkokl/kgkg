// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubModule {
  String get name => throw _privateConstructorUsedError;
  List<String> get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubModuleCopyWith<SubModule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubModuleCopyWith<$Res> {
  factory $SubModuleCopyWith(SubModule value, $Res Function(SubModule) then) =
      _$SubModuleCopyWithImpl<$Res, SubModule>;
  @useResult
  $Res call({String name, List<String> actions});
}

/// @nodoc
class _$SubModuleCopyWithImpl<$Res, $Val extends SubModule>
    implements $SubModuleCopyWith<$Res> {
  _$SubModuleCopyWithImpl(this._value, this._then);

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
abstract class _$$SubModuleImplCopyWith<$Res>
    implements $SubModuleCopyWith<$Res> {
  factory _$$SubModuleImplCopyWith(
          _$SubModuleImpl value, $Res Function(_$SubModuleImpl) then) =
      __$$SubModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> actions});
}

/// @nodoc
class __$$SubModuleImplCopyWithImpl<$Res>
    extends _$SubModuleCopyWithImpl<$Res, _$SubModuleImpl>
    implements _$$SubModuleImplCopyWith<$Res> {
  __$$SubModuleImplCopyWithImpl(
      _$SubModuleImpl _value, $Res Function(_$SubModuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? actions = null,
  }) {
    return _then(_$SubModuleImpl(
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

class _$SubModuleImpl implements _SubModule {
  const _$SubModuleImpl({this.name = "", final List<String> actions = const []})
      : _actions = actions;

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
    return 'SubModule(name: $name, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubModuleImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubModuleImplCopyWith<_$SubModuleImpl> get copyWith =>
      __$$SubModuleImplCopyWithImpl<_$SubModuleImpl>(this, _$identity);
}

abstract class _SubModule implements SubModule {
  const factory _SubModule({final String name, final List<String> actions}) =
      _$SubModuleImpl;

  @override
  String get name;
  @override
  List<String> get actions;
  @override
  @JsonKey(ignore: true)
  _$$SubModuleImplCopyWith<_$SubModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
