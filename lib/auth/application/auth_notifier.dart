import 'package:mgkaung_dms_mobile/auth/domain/auth.dart';
import 'package:mgkaung_dms_mobile/auth/infrastructure/repos/auth_repository.dart';
import 'package:mgkaung_dms_mobile/core/extensions/async_value_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  FutureOr<Auth> build() async {
    await Future.delayed(const Duration(seconds: 2));
    final isSignIn = await ref.watch(authRepositoryProvider).isSignIn();
    if (!isSignIn) return const Auth.unauthenticated();
    return const Auth.authenticated();
  }

  Future<void> signIn(String email, String password) async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      await ref.watch(authRepositoryProvider).signIn(email, password);
      return const Auth.authenticated();
    });
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();

    state = await state.guardX(() async {
      await ref.watch(authRepositoryProvider).signOut();
      return const Auth.unauthenticated();
    });
  }
}
