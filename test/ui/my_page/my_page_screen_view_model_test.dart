// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_kit/data/model/user/user.dart';
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/data/result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/user/user_repository_impl.dart';
import 'package:flutter_stv_kit/ui/my_page/my_page_screen_state.dart';
import 'package:flutter_stv_kit/ui/my_page/my_page_screen_view_model.dart';
import 'package:mockito/mockito.dart';
import 'my_page_screen_view_model_test.mocks.dart';

@GenerateMocks([
  UserRepositoryImpl,
  AuthRepositoryImpl,
])
void main() {
  // Arrange
  final mockUserRepository = MockUserRepositoryImpl();
  final mockAuthRepository = MockAuthRepositoryImpl();
  late ProviderContainer container;

  const expectValue = User(
    userName: 'STV　太郎',
    userId: '12345678',
    email: 'example@stv-tech.co.jp',
  );

  setUpAll(() {
    container = ProviderContainer(
      overrides: [
        userRepositoryProvider.overrideWithValue(mockUserRepository),
        authRepositoryProvider.overrideWithValue(mockAuthRepository),
      ],
    );
  });

  tearDownAll(() {
    container.dispose();
  });

  MyPageScreenViewModel create() => container.read(
        myPageScreenViewModelProvider().notifier,
      );

  group(
    'MyPageScreenViewModelテスト',
    () {
      test(
        '初期ステータスのチェック',
        () {
          // Arrange
          final viewModel = create();

          // Assert
          expect(
            viewModel.state,
            const MyPageScreenState(user: null, isLoading: false),
          );
        },
      );

      test(
        'プロフィール取得後のステータスチェック',
        () async {
          // Arrange
          final viewModel = create();

          when(mockUserRepository.fetch()).thenAnswer(
            (_) async => Future.value(
              const Result.success(
                data: expectValue,
              ),
            ),
          );

          // Act
          await viewModel.fetch();

          // Assert
          expect(
            viewModel.state,
            const MyPageScreenState(
              user: expectValue,
              isLoading: false,
            ),
          );
        },
      );

      test(
        'ログアウト後のステータスチェック',
        () async {
          // Arrange
          final viewModel = create();

          when(mockAuthRepository.signOut()).thenAnswer(
            (_) async => Future.value(
              const Result.success(data: null),
            ),
          );

          // Act
          await viewModel.signOut();

          // Assert
          expect(
            viewModel.state,
            const MyPageScreenState(
              user: null,
              isLoading: false,
            ),
          );
        },
      );
    },
  );
}
