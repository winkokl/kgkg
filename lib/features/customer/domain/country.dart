import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

@freezed
class Country with _$Country {
  const factory Country({
    @Default(-1) int id,
    @Default("") String name,
  }) = _Country;
}
