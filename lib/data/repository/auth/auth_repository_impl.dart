// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/auth/auth.dart';
import 'package:flutter_stv_kit/data/remote/auth/auth_data_source.dart';
import 'package:flutter_stv_kit/data/remote/auth/auth_data_source_impl.dart';
import 'package:flutter_stv_kit/data/repository/auth/auth_repository.dart';
import 'package:flutter_stv_kit/data/result.dart';

part 'auth_repository_impl.g.dart';

@Riverpod(dependencies: [authDataSource])
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(
    ref.watch(authDataSourceProvider),
  );
}

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this.dataSource);

  final AuthDataSource dataSource;

  @override
  Future<Result<Auth>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async =>
      Result.guardFuture(
        () async => dataSource.signUpWithEmailAndPassword(
            email: email, password: password),
      );

  @override
  Future<Result<Auth>> authCodeInput({required String code}) async =>
      Result.guardFuture(
        () async => await dataSource.authCodeInput(code: code),
      );
  @override
  Future<Result<Auth>> signUpWithSns({
    required String idToken,
  }) async =>
      Result.guardFuture(
        () async => await dataSource.signUpWithSns(idToken: idToken),
      );

  @override
  Future<Result<Auth>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async =>
      Result.guardFuture(
        () async => await dataSource.signUpWithEmailAndPassword(
            email: email, password: password),
      );

  @override
  Future<Result<void>> signOut() => Result.guardFuture(
        () async => await dataSource.signOut(),
      );

  @override
  Future<Result<bool>> resetPassword({
    required String email,
  }) async =>
      Result.guardFuture(
        () async => await dataSource.resetPassword(email: email),
      );
}
