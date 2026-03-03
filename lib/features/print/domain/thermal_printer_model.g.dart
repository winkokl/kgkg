// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thermal_printer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThermalPrinterImpl _$$ThermalPrinterImplFromJson(Map<String, dynamic> json) =>
    _$ThermalPrinterImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$PrinterTypeEnumMap, json['type']),
      status: $enumDecodeNullable(_$PrinterStatusEnumMap, json['status']) ??
          PrinterStatus.disconnected,
      macAddress: json['macAddress'] as String?,
      ipAddress: json['ipAddress'] as String?,
      port: (json['port'] as num?)?.toInt(),
      model: json['model'] as String?,
      paperWidth: (json['paperWidth'] as num?)?.toInt(),
      maxPrintWidth: (json['maxPrintWidth'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ThermalPrinterImplToJson(
        _$ThermalPrinterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$PrinterTypeEnumMap[instance.type]!,
      'status': _$PrinterStatusEnumMap[instance.status]!,
      'macAddress': instance.macAddress,
      'ipAddress': instance.ipAddress,
      'port': instance.port,
      'model': instance.model,
      'paperWidth': instance.paperWidth,
      'maxPrintWidth': instance.maxPrintWidth,
    };

const _$PrinterTypeEnumMap = {
  PrinterType.sunmi: 'sunmi',
  PrinterType.escopos: 'escopos',
  PrinterType.bluetooth: 'bluetooth',
  PrinterType.network: 'network',
};

const _$PrinterStatusEnumMap = {
  PrinterStatus.connected: 'connected',
  PrinterStatus.disconnected: 'disconnected',
  PrinterStatus.printing: 'printing',
  PrinterStatus.error: 'error',
  PrinterStatus.offline: 'offline',
  PrinterStatus.outOfPaper: 'outOfPaper',
};

_$PrintResultImpl _$$PrintResultImplFromJson(Map<String, dynamic> json) =>
    _$PrintResultImpl(
      success: json['success'] as bool,
      message: json['message'] as String?,
      jobId: (json['jobId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PrintResultImplToJson(_$PrintResultImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'jobId': instance.jobId,
    };

_$PrinterDiscoveryConfigImpl _$$PrinterDiscoveryConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$PrinterDiscoveryConfigImpl(
      searchBluetooth: json['searchBluetooth'] as bool? ?? true,
      searchNetwork: json['searchNetwork'] as bool? ?? false,
      timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$$PrinterDiscoveryConfigImplToJson(
        _$PrinterDiscoveryConfigImpl instance) =>
    <String, dynamic>{
      'searchBluetooth': instance.searchBluetooth,
      'searchNetwork': instance.searchNetwork,
      'timeoutSeconds': instance.timeoutSeconds,
    };
