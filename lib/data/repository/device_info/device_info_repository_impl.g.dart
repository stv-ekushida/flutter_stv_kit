// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deviceInfoRepositoryHash() =>
    r'5b3093ca0ec3ecd1dc6a170193197c3bff7a9f08';

/// See also [deviceInfoRepository].
@ProviderFor(deviceInfoRepository)
final deviceInfoRepositoryProvider =
    AutoDisposeProvider<DeviceInfoRepository>.internal(
  deviceInfoRepository,
  name: r'deviceInfoRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$deviceInfoRepositoryHash,
  dependencies: <ProviderOrFamily>[deviceInfoDataSourceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    deviceInfoDataSourceProvider,
    ...?deviceInfoDataSourceProvider.allTransitiveDependencies
  },
);

typedef DeviceInfoRepositoryRef = AutoDisposeProviderRef<DeviceInfoRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
