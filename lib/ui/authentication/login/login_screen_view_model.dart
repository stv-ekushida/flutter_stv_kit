// Package imports:
import 'package:flutter_stv_kit/data/result.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/ui/authentication/login/login_screen_state.dart';

part 'login_screen_view_model.g.dart';

@Riverpod(dependencies: [authRepository])
class LoginScreenViewModel extends _$LoginScreenViewModel {
  @override
  LoginScreenState build({
    LoginScreenState initialState = const LoginScreenState.none(),
  }) {
    return initialState;
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result = await ref
        .read(authRepositoryProvider)
        .signInWithEmailAndPassword(email: email, password: password);

    result.when(success: (auth) {
      state = LoginScreenState.data(auth);
    }, failure: (error) {
      notifier.error(error);
    });
    notifier.none();

    return result is Success;
  }
}
