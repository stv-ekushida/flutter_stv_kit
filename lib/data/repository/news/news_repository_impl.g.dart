// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsRepositoryHash() => r'678a451d0e28ab008fd939acee27ac8a7ce629c6';

/// See also [newsRepository].
@ProviderFor(newsRepository)
final newsRepositoryProvider = AutoDisposeProvider<NewsRepository>.internal(
  newsRepository,
  name: r'newsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newsRepositoryHash,
  dependencies: <ProviderOrFamily>[newsDataSourceProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    newsDataSourceProvider,
    ...?newsDataSourceProvider.allTransitiveDependencies
  },
);

typedef NewsRepositoryRef = AutoDisposeProviderRef<NewsRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
