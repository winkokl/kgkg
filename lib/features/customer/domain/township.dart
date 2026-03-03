import 'package:freezed_annotation/freezed_annotation.dart';

part 'township.freezed.dart';

@freezed
class Township with _$Township {
  const factory Township({
    @Default(-1) int id,
    @Default("") String name,
  }) = _Township;
}
