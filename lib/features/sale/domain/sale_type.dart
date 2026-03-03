import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_type.freezed.dart';

@freezed
class SaleType with _$SaleType {
  const factory SaleType({
    @Default(-1) int id,
    @Default("") String name,
  }) = _SaleType;
}
