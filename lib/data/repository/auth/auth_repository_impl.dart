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
  }) {
    return Result.guardFuture(
      () async => dataSource.signUpWithEmailAndPassword(
          email: email, password: password),
    );
  }

  @override
  Future<Result<Auth>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return Result.guardFuture(
      () async => dataSource.signUpWithEmailAndPassword(
          email: email, password: password),
    );
  }

  @override
  Future<Result<void>> signOut() {
    return Result.guardFuture(
      () async => await dataSource.signOut(),
    );
  }

  @override
  Future<Result<bool>> resetPassword({
    required String email,
  }) async {
    return Result.guardFuture(
      () async => await dataSource.resetPassword(email: email),
    );
  }
}
