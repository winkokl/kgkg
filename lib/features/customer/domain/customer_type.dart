import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_type.freezed.dart';

@freezed
class CustomerType with _$CustomerType {
  const factory CustomerType({
    @Default(-1) int id,
    @Default("") String name,
    @Default(-1) int status,
  }) = _CustomerType;
}
