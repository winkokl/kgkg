import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_remote_data_source.g.dart';

@riverpod
AuthRemoteDataSource authRemoteDataSource(AuthRemoteDataSourceRef ref) => AuthRemoteDataSource(ref.watch(dioClientProvider));

class AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSource(this.dioClient);

  Future<AuthorizationToken> signIn(String username, String password) async {
    final response = await dioClient.post('${ApiBase.baseUrl}/mobile/auth/login', data: {
      "username": username,
      "password": password,
    });

    final accessToken = response.data['access_token'] as String;
    final refreshToken = response.data['refresh_token'] as String;
    final userId = response.data['user']['user_id'];
    SharedPrefs.setInt("user_id", userId);
    return (accessToken: accessToken, refreshToken: refreshToken);
  }
}
