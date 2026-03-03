import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_reason.freezed.dart';

@freezed
class ReturnReason with _$ReturnReason {
  const factory ReturnReason({
    @Default(-1) int id,
    @Default("") String name,
  }) = _ReturnReason;
}
