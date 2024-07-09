// Package imports:
import 'package:flutter_stv_kit/data/repository/user/user_notification_settings_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/controller/user/user_notification_settings_state.dart';
import 'package:flutter_stv_kit/data/result.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state_controller.dart';

part 'user_notification_settings_controller.g.dart';

@Riverpod(dependencies: [userNotificationSettingsRepository])
class UserNotificationSettingsController
    extends _$UserNotificationSettingsController {
  @override
  UserNotificationSettingsState build({
    UserNotificationSettingsState initialState =
        const UserNotificationSettingsState.idle(),
  }) {
    return initialState;
  }

  Future<bool> fetch() async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result =
        await ref.read(userNotificationSettingsRepositoryProvider).fetch();

    result.when(
      success: (userNotificationSettings) =>
          state = UserNotificationSettingsState.data(userNotificationSettings),
      failure: (e) => notifier.error(e),
    );

    notifier.idle();

    return result is Success;
  }
}
