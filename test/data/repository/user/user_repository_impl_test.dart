// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Project imports:
import 'package:flutter_stv_kit/data/model/user/user.dart';
import 'package:flutter_stv_kit/data/remote/user/user_data_source_impl.dart';
import 'package:flutter_stv_kit/data/repository/user/user_repository_impl.dart';
import 'package:flutter_stv_kit/data/result.dart';
import 'user_repository_impl_test.mocks.dart';

@GenerateMocks([
  UserDataSourceImpl,
])
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Arrange
  final mockUserDataSource = MockUserDataSourceImpl();
  final userRepository = UserRepositoryImpl(mockUserDataSource);
  const expectValue = User(
    userId: '12345678',
    userName: 'STV 太郎',
    email: 'example@stv-tech.co.jp',
  );

  test(
    'Success to get User Info',
    () async {
      when(mockUserDataSource.fetch()).thenAnswer(
        (_) async => Future.value(expectValue),
      );

      // Act
      final result = await userRepository.fetch();

      // Assert
      expect(
        result,
        const Result.success(
          data: User(
            userId: '12345678',
            userName: 'STV 太郎',
            email: 'example@stv-tech.co.jp',
          ),
        ),
      );
    },
  );
}
