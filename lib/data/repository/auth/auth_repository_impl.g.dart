// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepositoryHash() => r'40032b63ec811c9c67f5a60d97f92794e87d103b';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = AutoDisposeProvider<AuthRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: <ProviderOrFamily>[authDataSourceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    authDataSourceProvider,
    ...?authDataSourceProvider.allTransitiveDependencies
  },
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
