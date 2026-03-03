import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit.freezed.dart';

@freezed
class Unit with _$Unit {
  const factory Unit({
    @Default(-1) int id,
    @Default("") String name,
  }) = _Unit;
}
