// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thermal_printer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThermalPrinter _$ThermalPrinterFromJson(Map<String, dynamic> json) {
  return _ThermalPrinter.fromJson(json);
}

/// @nodoc
mixin _$ThermalPrinter {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  PrinterType get type => throw _privateConstructorUsedError;
  PrinterStatus get status => throw _privateConstructorUsedError;
  String? get macAddress => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  int? get port => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  int? get paperWidth => throw _privateConstructorUsedError; // in millimeters
  int? get maxPrintWidth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThermalPrinterCopyWith<ThermalPrinter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThermalPrinterCopyWith<$Res> {
  factory $ThermalPrinterCopyWith(
          ThermalPrinter value, $Res Function(ThermalPrinter) then) =
      _$ThermalPrinterCopyWithImpl<$Res, ThermalPrinter>;
  @useResult
  $Res call(
      {String id,
      String name,
      PrinterType type,
      PrinterStatus status,
      String? macAddress,
      String? ipAddress,
      int? port,
      String? model,
      int? paperWidth,
      int? maxPrintWidth});
}

/// @nodoc
class _$ThermalPrinterCopyWithImpl<$Res, $Val extends ThermalPrinter>
    implements $ThermalPrinterCopyWith<$Res> {
  _$ThermalPrinterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? status = null,
    Object? macAddress = freezed,
    Object? ipAddress = freezed,
    Object? port = freezed,
    Object? model = freezed,
    Object? paperWidth = freezed,
    Object? maxPrintWidth = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PrinterType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PrinterStatus,
      macAddress: freezed == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      paperWidth: freezed == paperWidth
          ? _value.paperWidth
          : paperWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrintWidth: freezed == maxPrintWidth
          ? _value.maxPrintWidth
          : maxPrintWidth // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThermalPrinterImplCopyWith<$Res>
    implements $ThermalPrinterCopyWith<$Res> {
  factory _$$ThermalPrinterImplCopyWith(_$ThermalPrinterImpl value,
          $Res Function(_$ThermalPrinterImpl) then) =
      __$$ThermalPrinterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      PrinterType type,
      PrinterStatus status,
      String? macAddress,
      String? ipAddress,
      int? port,
      String? model,
      int? paperWidth,
      int? maxPrintWidth});
}

/// @nodoc
class __$$ThermalPrinterImplCopyWithImpl<$Res>
    extends _$ThermalPrinterCopyWithImpl<$Res, _$ThermalPrinterImpl>
    implements _$$ThermalPrinterImplCopyWith<$Res> {
  __$$ThermalPrinterImplCopyWithImpl(
      _$ThermalPrinterImpl _value, $Res Function(_$ThermalPrinterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? status = null,
    Object? macAddress = freezed,
    Object? ipAddress = freezed,
    Object? port = freezed,
    Object? model = freezed,
    Object? paperWidth = freezed,
    Object? maxPrintWidth = freezed,
  }) {
    return _then(_$ThermalPrinterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PrinterType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PrinterStatus,
      macAddress: freezed == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      paperWidth: freezed == paperWidth
          ? _value.paperWidth
          : paperWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrintWidth: freezed == maxPrintWidth
          ? _value.maxPrintWidth
          : maxPrintWidth // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThermalPrinterImpl implements _ThermalPrinter {
  const _$ThermalPrinterImpl(
      {required this.id,
      required this.name,
      required this.type,
      this.status = PrinterStatus.disconnected,
      this.macAddress,
      this.ipAddress,
      this.port,
      this.model,
      this.paperWidth,
      this.maxPrintWidth});

  factory _$ThermalPrinterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThermalPrinterImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final PrinterType type;
  @override
  @JsonKey()
  final PrinterStatus status;
  @override
  final String? macAddress;
  @override
  final String? ipAddress;
  @override
  final int? port;
  @override
  final String? model;
  @override
  final int? paperWidth;
// in millimeters
  @override
  final int? maxPrintWidth;

  @override
  String toString() {
    return 'ThermalPrinter(id: $id, name: $name, type: $type, status: $status, macAddress: $macAddress, ipAddress: $ipAddress, port: $port, model: $model, paperWidth: $paperWidth, maxPrintWidth: $maxPrintWidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThermalPrinterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.paperWidth, paperWidth) ||
                other.paperWidth == paperWidth) &&
            (identical(other.maxPrintWidth, maxPrintWidth) ||
                other.maxPrintWidth == maxPrintWidth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, status,
      macAddress, ipAddress, port, model, paperWidth, maxPrintWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThermalPrinterImplCopyWith<_$ThermalPrinterImpl> get copyWith =>
      __$$ThermalPrinterImplCopyWithImpl<_$ThermalPrinterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThermalPrinterImplToJson(
      this,
    );
  }
}

abstract class _ThermalPrinter implements ThermalPrinter {
  const factory _ThermalPrinter(
      {required final String id,
      required final String name,
      required final PrinterType type,
      final PrinterStatus status,
      final String? macAddress,
      final String? ipAddress,
      final int? port,
      final String? model,
      final int? paperWidth,
      final int? maxPrintWidth}) = _$ThermalPrinterImpl;

  factory _ThermalPrinter.fromJson(Map<String, dynamic> json) =
      _$ThermalPrinterImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  PrinterType get type;
  @override
  PrinterStatus get status;
  @override
  String? get macAddress;
  @override
  String? get ipAddress;
  @override
  int? get port;
  @override
  String? get model;
  @override
  int? get paperWidth;
  @override // in millimeters
  int? get maxPrintWidth;
  @override
  @JsonKey(ignore: true)
  _$$ThermalPrinterImplCopyWith<_$ThermalPrinterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrintResult _$PrintResultFromJson(Map<String, dynamic> json) {
  return _PrintResult.fromJson(json);
}

/// @nodoc
mixin _$PrintResult {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get jobId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrintResultCopyWith<PrintResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintResultCopyWith<$Res> {
  factory $PrintResultCopyWith(
          PrintResult value, $Res Function(PrintResult) then) =
      _$PrintResultCopyWithImpl<$Res, PrintResult>;
  @useResult
  $Res call({bool success, String? message, int? jobId});
}

/// @nodoc
class _$PrintResultCopyWithImpl<$Res, $Val extends PrintResult>
    implements $PrintResultCopyWith<$Res> {
  _$PrintResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrintResultImplCopyWith<$Res>
    implements $PrintResultCopyWith<$Res> {
  factory _$$PrintResultImplCopyWith(
          _$PrintResultImpl value, $Res Function(_$PrintResultImpl) then) =
      __$$PrintResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, int? jobId});
}

/// @nodoc
class __$$PrintResultImplCopyWithImpl<$Res>
    extends _$PrintResultCopyWithImpl<$Res, _$PrintResultImpl>
    implements _$$PrintResultImplCopyWith<$Res> {
  __$$PrintResultImplCopyWithImpl(
      _$PrintResultImpl _value, $Res Function(_$PrintResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? jobId = freezed,
  }) {
    return _then(_$PrintResultImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrintResultImpl implements _PrintResult {
  const _$PrintResultImpl(
      {required this.success, required this.message, required this.jobId});

  factory _$PrintResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrintResultImplFromJson(json);

  @override
  final bool success;
  @override
  final String? message;
  @override
  final int? jobId;

  @override
  String toString() {
    return 'PrintResult(success: $success, message: $message, jobId: $jobId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrintResultImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.jobId, jobId) || other.jobId == jobId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, jobId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrintResultImplCopyWith<_$PrintResultImpl> get copyWith =>
      __$$PrintResultImplCopyWithImpl<_$PrintResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrintResultImplToJson(
      this,
    );
  }
}

abstract class _PrintResult implements PrintResult {
  const factory _PrintResult(
      {required final bool success,
      required final String? message,
      required final int? jobId}) = _$PrintResultImpl;

  factory _PrintResult.fromJson(Map<String, dynamic> json) =
      _$PrintResultImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  int? get jobId;
  @override
  @JsonKey(ignore: true)
  _$$PrintResultImplCopyWith<_$PrintResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrinterDiscoveryConfig _$PrinterDiscoveryConfigFromJson(
    Map<String, dynamic> json) {
  return _PrinterDiscoveryConfig.fromJson(json);
}

/// @nodoc
mixin _$PrinterDiscoveryConfig {
  bool get searchBluetooth => throw _privateConstructorUsedError;
  bool get searchNetwork => throw _privateConstructorUsedError;
  int get timeoutSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrinterDiscoveryConfigCopyWith<PrinterDiscoveryConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterDiscoveryConfigCopyWith<$Res> {
  factory $PrinterDiscoveryConfigCopyWith(PrinterDiscoveryConfig value,
          $Res Function(PrinterDiscoveryConfig) then) =
      _$PrinterDiscoveryConfigCopyWithImpl<$Res, PrinterDiscoveryConfig>;
  @useResult
  $Res call({bool searchBluetooth, bool searchNetwork, int timeoutSeconds});
}

/// @nodoc
class _$PrinterDiscoveryConfigCopyWithImpl<$Res,
        $Val extends PrinterDiscoveryConfig>
    implements $PrinterDiscoveryConfigCopyWith<$Res> {
  _$PrinterDiscoveryConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchBluetooth = null,
    Object? searchNetwork = null,
    Object? timeoutSeconds = null,
  }) {
    return _then(_value.copyWith(
      searchBluetooth: null == searchBluetooth
          ? _value.searchBluetooth
          : searchBluetooth // ignore: cast_nullable_to_non_nullable
              as bool,
      searchNetwork: null == searchNetwork
          ? _value.searchNetwork
          : searchNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      timeoutSeconds: null == timeoutSeconds
          ? _value.timeoutSeconds
          : timeoutSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrinterDiscoveryConfigImplCopyWith<$Res>
    implements $PrinterDiscoveryConfigCopyWith<$Res> {
  factory _$$PrinterDiscoveryConfigImplCopyWith(
          _$PrinterDiscoveryConfigImpl value,
          $Res Function(_$PrinterDiscoveryConfigImpl) then) =
      __$$PrinterDiscoveryConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool searchBluetooth, bool searchNetwork, int timeoutSeconds});
}

/// @nodoc
class __$$PrinterDiscoveryConfigImplCopyWithImpl<$Res>
    extends _$PrinterDiscoveryConfigCopyWithImpl<$Res,
        _$PrinterDiscoveryConfigImpl>
    implements _$$PrinterDiscoveryConfigImplCopyWith<$Res> {
  __$$PrinterDiscoveryConfigImplCopyWithImpl(
      _$PrinterDiscoveryConfigImpl _value,
      $Res Function(_$PrinterDiscoveryConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchBluetooth = null,
    Object? searchNetwork = null,
    Object? timeoutSeconds = null,
  }) {
    return _then(_$PrinterDiscoveryConfigImpl(
      searchBluetooth: null == searchBluetooth
          ? _value.searchBluetooth
          : searchBluetooth // ignore: cast_nullable_to_non_nullable
              as bool,
      searchNetwork: null == searchNetwork
          ? _value.searchNetwork
          : searchNetwork // ignore: cast_nullable_to_non_nullable
              as bool,
      timeoutSeconds: null == timeoutSeconds
          ? _value.timeoutSeconds
          : timeoutSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrinterDiscoveryConfigImpl implements _PrinterDiscoveryConfig {
  const _$PrinterDiscoveryConfigImpl(
      {this.searchBluetooth = true,
      this.searchNetwork = false,
      this.timeoutSeconds = 30});

  factory _$PrinterDiscoveryConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrinterDiscoveryConfigImplFromJson(json);

  @override
  @JsonKey()
  final bool searchBluetooth;
  @override
  @JsonKey()
  final bool searchNetwork;
  @override
  @JsonKey()
  final int timeoutSeconds;

  @override
  String toString() {
    return 'PrinterDiscoveryConfig(searchBluetooth: $searchBluetooth, searchNetwork: $searchNetwork, timeoutSeconds: $timeoutSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrinterDiscoveryConfigImpl &&
            (identical(other.searchBluetooth, searchBluetooth) ||
                other.searchBluetooth == searchBluetooth) &&
            (identical(other.searchNetwork, searchNetwork) ||
                other.searchNetwork == searchNetwork) &&
            (identical(other.timeoutSeconds, timeoutSeconds) ||
                other.timeoutSeconds == timeoutSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, searchBluetooth, searchNetwork, timeoutSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrinterDiscoveryConfigImplCopyWith<_$PrinterDiscoveryConfigImpl>
      get copyWith => __$$PrinterDiscoveryConfigImplCopyWithImpl<
          _$PrinterDiscoveryConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrinterDiscoveryConfigImplToJson(
      this,
    );
  }
}

abstract class _PrinterDiscoveryConfig implements PrinterDiscoveryConfig {
  const factory _PrinterDiscoveryConfig(
      {final bool searchBluetooth,
      final bool searchNetwork,
      final int timeoutSeconds}) = _$PrinterDiscoveryConfigImpl;

  factory _PrinterDiscoveryConfig.fromJson(Map<String, dynamic> json) =
      _$PrinterDiscoveryConfigImpl.fromJson;

  @override
  bool get searchBluetooth;
  @override
  bool get searchNetwork;
  @override
  int get timeoutSeconds;
  @override
  @JsonKey(ignore: true)
  _$$PrinterDiscoveryConfigImplCopyWith<_$PrinterDiscoveryConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}
