// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/user/user.dart';
import 'package:flutter_stv_kit/data/remote/user/user_data_source.dart';
import 'package:flutter_stv_kit/data/remote/user/user_data_source_impl.dart';
import 'package:flutter_stv_kit/data/repository/user/user_repository.dart';
import 'package:flutter_stv_kit/data/result.dart';

part 'user_repository_impl.g.dart';

@Riverpod(dependencies: [userDataSource])
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepositoryImpl(
    ref.watch(userDataSourceProvider),
  );
}

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this.dataSource);

  final UserDataSource dataSource;

  @override
  Future<Result<User>> fetch() async => Result.guardFuture(
        () async => await dataSource.fetch(),
      );
}
