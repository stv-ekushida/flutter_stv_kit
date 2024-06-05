// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/data/result.dart';
import 'package:flutter_stv_kit/ui/authentication/password_reset/password_reset_screen_state.dart';

part 'password_reset_screen_view_model.g.dart';

@Riverpod(dependencies: [authRepository])
class PasswordResetScreenViewModel extends _$PasswordResetScreenViewModel {
  @override
  PasswordResetScreenState build({
    PasswordResetScreenState initialState = const PasswordResetScreenState(
      isSuccess: false,
      isLoading: false,
    ),
  }) {
    return initialState;
  }

  Future<bool> resetPassword({required String email}) async {
    state = state.copyWith(isLoading: true);

    final result =
        await ref.read(authRepositoryProvider).resetPassword(email: email);

    result.when(
      success: (data) {
        state = state.copyWith(isSuccess: true, isLoading: false);
      },
      failure: (e) {
        state = state.copyWith(isSuccess: false, isLoading: false);
      },
    );

    return result is Success;
  }
}
