import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
sealed class Auth with _$Auth {
  const Auth._();
  const factory Auth.authenticated() = Authenticated;
  const factory Auth.unauthenticated() = Unauthenticated;

  bool get isAuth {
    return switch (this) {
      Authenticated() => true,
      Unauthenticated() => false,
    };
  }
}
