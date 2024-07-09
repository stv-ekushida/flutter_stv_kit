// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/user/user.dart';
import 'package:flutter_stv_kit/data/remote/user/user_data_source.dart';
import 'package:flutter_stv_kit/foundation/delay.dart';

part 'user_data_source_impl.g.dart';

@Riverpod(dependencies: [])
UserDataSource userDataSource(UserDataSourceRef ref) => UserDataSourceImpl();

class UserDataSourceImpl implements UserDataSource {
  @override
  Future<User> fetch() async {
    await delay(500);

    return Future.value(
      const User(
        userId: '12345678',
        userName: 'STV 太郎',
        email: 'example@stv-tech.co.jp',
      ),
    );
  }
}
