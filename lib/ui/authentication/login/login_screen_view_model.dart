// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/ui/authentication/login/login_screen_state.dart';

part 'login_screen_view_model.g.dart';

@Riverpod(dependencies: [authRepository])
class LoginScreenViewModel extends _$LoginScreenViewModel {
  @override
  LoginScreenState build({
    LoginScreenState initialState = const LoginScreenState(
      auth: null,
      isLoading: false,
    ),
  }) {
    return initialState;
  }

  Future<void> login({required String email, required String password}) async {
    state = state.copyWith(isLoading: true);

    final result = await ref
        .read(authRepositoryProvider)
        .signInWithEmailAndPassword(email: email, password: password);

    result.when(
      success: (data) {
        state = state.copyWith(auth: data, isLoading: false);
      },
      failure: (e) {
        state = state.copyWith(isLoading: false);
      },
    );
  }
}
