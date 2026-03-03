import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'indicator_notifer.g.dart';

@riverpod
class IndicatorNotifier extends _$IndicatorNotifier {
  @override
  int build() => 0;

  void setValue(int val) => state = val;
}
