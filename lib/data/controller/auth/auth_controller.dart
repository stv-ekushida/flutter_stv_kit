// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/controller/auth/auth_state.dart';
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/data/result.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state_controller.dart';

part 'auth_controller.g.dart';

@Riverpod(dependencies: [authRepository])
class AuthController extends _$AuthController {
  @override
  AuthState build({
    AuthState initialState = const AuthState.idle(),
  }) {
    return initialState;
  }

  Future<bool> signUpWithEmail(
      {required String email, required String password}) async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result = await ref
        .read(authRepositoryProvider)
        .signInWithEmailAndPassword(email: email, password: password);

    result.when(
      success: (auth) {
        state = AuthState.data(auth);
      },
      failure: (error) {
        notifier.error(error);
      },
    );

    notifier.idle();

    return result is Success;
  }

  Future<bool> authCodeInput({required String code}) async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result =
        await ref.read(authRepositoryProvider).authCodeInput(code: code);

    result.when(success: (auth) {
      state = AuthState.data(auth);
    }, failure: (error) {
      notifier.error(error);
    });

    notifier.idle();

    return result is Success;
  }

  Future<bool> signUpWithSns({required String idToken}) async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();
    final result =
        await ref.read(authRepositoryProvider).signUpWithSns(idToken: idToken);

    result.when(success: (auth) {
      state = AuthState.data(auth);
    }, failure: (error) {
      notifier.error(error);
    });

    notifier.idle();

    return result is Success;
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
      state = AuthState.data(auth);
    }, failure: (error) {
      notifier.error(error);
    });

    notifier.idle();

    return result is Success;
  }

  Future<bool> resetPassword({required String email}) async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result =
        await ref.read(authRepositoryProvider).resetPassword(email: email);

    result.whenOrNull(
      failure: (error) {
        notifier.error(error);
      },
    );

    notifier.idle();

    return result is Success;
  }

  Future<bool> signOut() async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result = await ref.read(authRepositoryProvider).signOut();

    result.whenOrNull(
      failure: (error) {
        notifier.error(error);
      },
    );

    notifier.idle();

    return result is Success;
  }

  Future<bool> cancel() async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result = await ref.read(authRepositoryProvider).cancel();

    result.whenOrNull(
      failure: (error) {
        notifier.error(error);
      },
    );

    notifier.idle();

    return result is Success;
  }
}
