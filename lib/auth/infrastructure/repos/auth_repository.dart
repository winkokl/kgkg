import 'package:mgkaung_dms_mobile/auth/infrastructure/data_socurces/auth_local_data_source.dart';
import 'package:mgkaung_dms_mobile/auth/infrastructure/data_socurces/auth_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepository(
      authRemoteDataSource: ref.watch(authRemoteDataSourceProvider),
      authLocalDataSource: ref.watch(authLocalDataSourceProvider),
    );

class AuthRepository {
  AuthRepository({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  Future<bool> isSignIn() async {
    return authLocalDataSource.getToken() != null;
  }

  Future<void> signIn(String userName, String password) async {
    final res = await authRemoteDataSource.signIn(userName, password);
    await authLocalDataSource.saveToken(res);
    if (!authLocalDataSource.isFirstInstall()) {
      authLocalDataSource.setFirstInstallAndPinCode();
    }
  }

  Future<void> signOut() async {
    await Future.wait([
      authLocalDataSource.signOut(),
    ]);
  }
}
