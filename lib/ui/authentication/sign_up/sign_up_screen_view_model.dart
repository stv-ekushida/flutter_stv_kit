// Package imports:
import 'package:flutter_stv_kit/ui/authentication/sign_up/sign_up_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';

part 'sign_up_screen_view_model.g.dart';

@Riverpod(dependencies: [authRepository])
class SignUpScreenViewModel extends _$SignUpScreenViewModel {
  @override
  SignUpScreenState build({
    SignUpScreenState initialState = const SignUpScreenState.none(),
  }) {
    return initialState;
  }

  Future<void> signUpWithEmail(
      {required String email, required String password}) async {
    state = const SignUpScreenState.loading();

    final result = await ref
        .read(authRepositoryProvider)
        .signInWithEmailAndPassword(email: email, password: password);

    result.when(success: (auth) {
      state = SignUpScreenState.data(auth);
    }, failure: (error) {
      state = SignUpScreenState.error(error);
    });
  }

  Future<void> signUpWithSns({required String idToken}) async {
    state = const SignUpScreenState.loading();

    final result =
        await ref.read(authRepositoryProvider).signUpWithSns(idToken: idToken);

    result.when(success: (auth) {
      state = SignUpScreenState.data(auth);
    }, failure: (error) {
      state = SignUpScreenState.error(error);
    });
  }
}
