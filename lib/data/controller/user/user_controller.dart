// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/controller/user/user_state.dart';
import 'package:flutter_stv_kit/data/repository/user/user_repository_impl.dart';
import 'package:flutter_stv_kit/data/result.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state_controller.dart';

part 'user_controller.g.dart';

@Riverpod(dependencies: [userRepository])
class UserController extends _$UserController {
  @override
  UserState build({
    UserState initialState = const UserState.idle(),
  }) {
    return initialState;
  }

  Future<bool> fetch() async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result = await ref.read(userRepositoryProvider).fetch();

    result.when(
      success: (user) => state = UserState.data(user),
      failure: (e) => notifier.error(e),
    );

    notifier.none();

    return result is Success;
  }

  Future<void> clearUser() async {
    state = const UserState.idle();
  }
}
