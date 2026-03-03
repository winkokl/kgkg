import 'package:freezed_annotation/freezed_annotation.dart';

part 'sku.freezed.dart';

@freezed
class Sku with _$Sku {
  const factory Sku({
    @Default("") String label,
    @Default(-1) int value,
  }) = _Sku;
}
