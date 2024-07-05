// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/email/sign_up_with_email_screen_state.dart';

part 'sign_up_with_email_screen_view_model.g.dart';

@Riverpod(dependencies: [authRepository])
class SignUpWithEmailScreenViewModel extends _$SignUpWithEmailScreenViewModel {
  @override
  SignUpWithEmailScreenState build({
    SignUpWithEmailScreenState initialState =
        const SignUpWithEmailScreenState.none(),
  }) {
    return initialState;
  }

  Future<void> signUpWithEmail(
      {required String email, required String password}) async {
    state = const SignUpWithEmailScreenState.loading();

    final result = await ref
        .read(authRepositoryProvider)
        .signInWithEmailAndPassword(email: email, password: password);

    result.when(success: (auth) {
      state = SignUpWithEmailScreenState.data(auth);
    }, failure: (error) {
      state = SignUpWithEmailScreenState.error(error);
    });
  }
}
