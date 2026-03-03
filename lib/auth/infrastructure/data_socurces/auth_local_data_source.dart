import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_local_data_source.g.dart';

@riverpod
AuthLocalDataSource authLocalDataSource(AuthLocalDataSourceRef ref) => AuthLocalDataSource();

class AuthLocalDataSource {
  AuthLocalDataSource();

  Future<void> signOut() async => await SharedPrefs.remove("token");

  Future<void> saveToken(AuthorizationToken authorizationToken) async => await Future.wait([
        SharedPrefs.setString('token', authorizationToken.accessToken),
        SharedPrefs.setString('refreshToken', authorizationToken.refreshToken),
      ]);

  String? getToken() => SharedPrefs.getString('token');

  bool isFirstInstall() => SharedPrefs.getBool("firstInstall") ?? false;

  void setFirstInstallAndPinCode() {
    SharedPrefs.setBool("firstInstall", true);
    SharedPrefs.setString("storedPin", "1111");
  }
}
