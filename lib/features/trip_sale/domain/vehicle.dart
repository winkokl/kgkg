import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    @Default(-1) int id,
    @Default("") String name,
  }) = _Vehicle;
}
