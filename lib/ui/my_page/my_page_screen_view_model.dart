// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_stv_kit/data/repository/user/user_repository_impl.dart';
import 'package:flutter_stv_kit/ui/my_page/my_page_screen_state.dart';

part 'my_page_screen_view_model.g.dart';

@Riverpod(dependencies: [userRepository, authRepository])
class MyPageScreenViewModel extends _$MyPageScreenViewModel {
  @override
  MyPageScreenState build({
    MyPageScreenState initialState = const MyPageScreenState(
      user: null,
      isLoading: false,
    ),
  }) {
    return initialState;
  }

  Future<void> fetch() async {
    state = state.copyWith(isLoading: true);

    final result = await ref.read(userRepositoryProvider).fetch();

    result.when(
      success: (data) {
        state = state.copyWith(user: data, isLoading: false);
      },
      failure: (e) {
        state = state.copyWith(isLoading: false);
      },
    );
  }

  Future<void> signOut() async {
    state = state.copyWith(isLoading: true);
    final _ = await ref.read(authRepositoryProvider).signOut();
    state = state.copyWith(user: null, isLoading: false);
  }
}
