import 'package:mgkaung_dms_mobile/features/customer/domain/township.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
class City with _$City {
  const factory City({
    @Default(-1) int id,
    @Default("") String name,
    @Default([]) List<Township> townships,
  }) = _City;
}
