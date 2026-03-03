import 'package:mgkaung_dms_mobile/features/customer/domain/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'division.freezed.dart';

@freezed
class Division with _$Division {
  const factory Division({
    @Default(-1) int id,
    @Default("") String name,
    @Default([]) List<City> cities,
  }) = _Division;
}
