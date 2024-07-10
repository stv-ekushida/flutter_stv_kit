// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/controller/device_info/device_info_state.dart';
import 'package:flutter_stv_kit/data/repository/device_info/device_info_repository_impl.dart';
import 'package:flutter_stv_kit/data/result.dart';
import 'package:flutter_stv_kit/ui/component/widget_basic/widget_basic_state_controller.dart';

part 'device_info_controller.g.dart';

@Riverpod(dependencies: [deviceInfoRepository])
class DeviceInfoController extends _$DeviceInfoController {
  @override
  DeviceInfoState build({
    DeviceInfoState initialState = const DeviceInfoState.idle(),
  }) {
    return initialState;
  }

  Future<bool> readAppVersion() async {
    final notifier = ref.read((widgetBasicStateControllerProvider()).notifier);
    notifier.loading();

    final result =
        await ref.read(deviceInfoRepositoryProvider).readAppVersion();

    result.when(
      success: (deviceInfo) => state = DeviceInfoState.data(deviceInfo),
      failure: (e) => notifier.error(e),
    );

    notifier.idle();

    return result is Success;
  }
}
