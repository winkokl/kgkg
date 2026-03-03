import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_module.freezed.dart';

@freezed
class SubModule with _$SubModule {
  const factory SubModule({
    @Default("") String name,
    @Default([]) List<String> actions,
  }) = _SubModule;
}
