// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userRepositoryHash() => r'b50f116a2c8ceb46334d5bb61988f0b26f4f7df5';

/// See also [userRepository].
@ProviderFor(userRepository)
final userRepositoryProvider = AutoDisposeProvider<UserRepository>.internal(
  userRepository,
  name: r'userRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userRepositoryHash,
  dependencies: <ProviderOrFamily>[userDataSourceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    userDataSourceProvider,
    ...?userDataSourceProvider.allTransitiveDependencies
  },
);

typedef UserRepositoryRef = AutoDisposeProviderRef<UserRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
