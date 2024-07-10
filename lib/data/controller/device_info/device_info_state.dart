// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:

part 'device_info_state.freezed.dart';

@freezed
abstract class DeviceInfoState with _$DeviceInfoState {
  const factory DeviceInfoState.idle() = _Idle;
  const factory DeviceInfoState.data(String appVersion) = AppVersionData;
}
