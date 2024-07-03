// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsListScreenViewModelHash() =>
    r'ce7267682a87f1691e32b0a188ce66f7971925b6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$NewsListScreenViewModel
    extends BuildlessAutoDisposeNotifier<NewsListScreenState> {
  late final NewsListScreenState initialState;

  NewsListScreenState build({
    NewsListScreenState initialState = const NewsListScreenState(),
  });
}

/// See also [NewsListScreenViewModel].
@ProviderFor(NewsListScreenViewModel)
const newsListScreenViewModelProvider = NewsListScreenViewModelFamily();

/// See also [NewsListScreenViewModel].
class NewsListScreenViewModelFamily extends Family<NewsListScreenState> {
  /// See also [NewsListScreenViewModel].
  const NewsListScreenViewModelFamily();

  /// See also [NewsListScreenViewModel].
  NewsListScreenViewModelProvider call({
    NewsListScreenState initialState = const NewsListScreenState(),
  }) {
    return NewsListScreenViewModelProvider(
      initialState: initialState,
    );
  }

  @override
  NewsListScreenViewModelProvider getProviderOverride(
    covariant NewsListScreenViewModelProvider provider,
  ) {
    return call(
      initialState: provider.initialState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    newsRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    newsRepositoryProvider,
    ...?newsRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newsListScreenViewModelProvider';
}

/// See also [NewsListScreenViewModel].
class NewsListScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    NewsListScreenViewModel, NewsListScreenState> {
  /// See also [NewsListScreenViewModel].
  NewsListScreenViewModelProvider({
    NewsListScreenState initialState = const NewsListScreenState(),
  }) : this._internal(
          () => NewsListScreenViewModel()..initialState = initialState,
          from: newsListScreenViewModelProvider,
          name: r'newsListScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsListScreenViewModelHash,
          dependencies: NewsListScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              NewsListScreenViewModelFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  NewsListScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final NewsListScreenState initialState;

  @override
  NewsListScreenState runNotifierBuild(
    covariant NewsListScreenViewModel notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(NewsListScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: NewsListScreenViewModelProvider._internal(
        () => create()..initialState = initialState,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialState: initialState,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<NewsListScreenViewModel,
      NewsListScreenState> createElement() {
    return _NewsListScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NewsListScreenViewModelProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NewsListScreenViewModelRef
    on AutoDisposeNotifierProviderRef<NewsListScreenState> {
  /// The parameter `initialState` of this provider.
  NewsListScreenState get initialState;
}

class _NewsListScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<NewsListScreenViewModel,
        NewsListScreenState> with NewsListScreenViewModelRef {
  _NewsListScreenViewModelProviderElement(super.provider);

  @override
  NewsListScreenState get initialState =>
      (origin as NewsListScreenViewModelProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
