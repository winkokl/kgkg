import 'package:freezed_annotation/freezed_annotation.dart';

part 'allocation_account.freezed.dart';

@freezed
class AllocationAccount with _$AllocationAccount {
  const factory AllocationAccount({
    @Default(-1) int id,
    @Default("") String name,
  }) = _AllocationAccount;
}
