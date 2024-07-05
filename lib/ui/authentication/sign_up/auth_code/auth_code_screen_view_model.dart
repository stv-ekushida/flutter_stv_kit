// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/auth_code/auth_code_screen_state.dart';

part 'auth_code_screen_view_model.g.dart';

@Riverpod(dependencies: [authRepository])
class AuthCodeScreenViewModel extends _$AuthCodeScreenViewModel {
  @override
  AuthCodeScreenState build({
    AuthCodeScreenState initialState = const AuthCodeScreenState.none(),
  }) {
    return initialState;
  }

  Future<bool> authCodeInput({required String code}) async {
    state = const AuthCodeScreenState.loading();

    final result =
        await ref.read(authRepositoryProvider).authCodeInput(code: code);

    return result.when(success: (_) {
      state = const AuthCodeScreenState.data();

      return true;
    }, failure: (error) {
      state = AuthCodeScreenState.error(error);

      return false;
    });
  }
}
