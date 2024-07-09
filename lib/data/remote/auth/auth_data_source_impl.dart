// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/auth/auth.dart';
import 'package:flutter_stv_kit/data/remote/auth/auth_data_source.dart';
import 'package:flutter_stv_kit/foundation/delay.dart';

part 'auth_data_source_impl.g.dart';

@Riverpod(dependencies: [])
AuthDataSource authDataSource(AuthDataSourceRef ref) {
  return AuthDataSourceImpl();
}

class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<Auth> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await delay(500);

    return Future.value(
      const Auth(
          accessToken: 'abcde', refreshToken: 'fghij', expired: '123456789'),
    );
  }

  @override
  Future<Auth> authCodeInput({required String code}) async {
    await delay(500);

    return Future.value(
      const Auth(
          accessToken: 'abcde', refreshToken: 'fghij', expired: '123456789'),
    );
  }

  @override
  Future<Auth> signUpWithSns({
    required String idToken,
  }) async {
    await delay(500);

    return Future.value(
      const Auth(
          accessToken: 'abcde', refreshToken: 'fghij', expired: '123456789'),
    );
  }

  @override
  Future<Auth> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await delay(1000);

    return Future.value(
      const Auth(accessToken: '', refreshToken: '', expired: '123456789'),
    );
  }

  @override
  Future<void> signOut() async {
    await delay(500);
  }

  @override
  Future<bool> resetPassword({required String email}) async {
    await delay(500);

    return Future.value(true);
  }
}
