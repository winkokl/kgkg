import 'package:mgkaung_dms_mobile/core/helpers/dateformat.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(dependencies: [])
int currentIndex(CurrentIndexRef ref) {
  throw UnimplementedError();
}

@Riverpod(keepAlive: true)
class SelectedDate extends _$SelectedDate {
  @override
  String build() => dateFormat(DateTime.now());

  void setDate(String? val) {
    if (val == null) return;
    state = val;
  }
}

@riverpod
class IsSessionExpiredNotifier extends _$IsSessionExpiredNotifier {
  @override
  bool build() => false;

  void setSessionExpired() => state = true;
}

@riverpod
class TabIndex extends _$TabIndex {
  @override
  int build() => 0;
  void setIndex(int index) => state = index;
}

@Riverpod(keepAlive: true)
class IsLogin extends _$IsLogin {
  @override
  bool build() => false;

  void setIsLogin(bool isLogin) => state = isLogin;
}
