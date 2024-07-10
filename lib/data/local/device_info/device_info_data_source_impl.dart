// Package imports:
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/local/device_info/device_info_data_source.dart';

// Project imports:

part 'device_info_data_source_impl.g.dart';

@Riverpod(dependencies: [])
DeviceInfoDataSource deviceInfoDataSource(DeviceInfoDataSourceRef ref) {
  return DeviceInfoDataSourceImpl();
}

class DeviceInfoDataSourceImpl implements DeviceInfoDataSource {
  @override
  Future<String> readAppVersion() async {
    final info = await PackageInfo.fromPlatform();

    return info.version;
  }
}
