// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_stv_kit/data/local/device_info/device_info_data_source.dart';
import 'package:flutter_stv_kit/data/local/device_info/device_info_data_source_impl.dart';
import 'package:flutter_stv_kit/data/repository/device_info/device_info_repository.dart';
import 'package:flutter_stv_kit/data/result.dart';

part 'device_info_repository_impl.g.dart';

@Riverpod(dependencies: [deviceInfoDataSource])
DeviceInfoRepository deviceInfoRepository(DeviceInfoRepositoryRef ref) =>
    DeviceInfoRepositoryImpl(
      ref.watch(deviceInfoDataSourceProvider),
    );

class DeviceInfoRepositoryImpl implements DeviceInfoRepository {
  const DeviceInfoRepositoryImpl(this.dataSource);

  final DeviceInfoDataSource dataSource;

  @override
  Future<Result<String>> readAppVersion() =>
      Result.guardFuture(() async => await dataSource.readAppVersion());
}
