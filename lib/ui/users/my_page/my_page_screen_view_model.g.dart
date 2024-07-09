// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_page_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myPageScreenViewModelHash() =>
    r'f1cd45daeb8de765876b602068d0304623c38e48';

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

abstract class _$MyPageScreenViewModel
    extends BuildlessAutoDisposeNotifier<MyPageScreenState> {
  late final MyPageScreenState initialState;

  MyPageScreenState build({
    MyPageScreenState initialState =
        const MyPageScreenState(user: null, isLoading: false),
  });
}

/// See also [MyPageScreenViewModel].
@ProviderFor(MyPageScreenViewModel)
const myPageScreenViewModelProvider = MyPageScreenViewModelFamily();

/// See also [MyPageScreenViewModel].
class MyPageScreenViewModelFamily extends Family<MyPageScreenState> {
  /// See also [MyPageScreenViewModel].
  const MyPageScreenViewModelFamily();

  /// See also [MyPageScreenViewModel].
  MyPageScreenViewModelProvider call({
    MyPageScreenState initialState =
        const MyPageScreenState(user: null, isLoading: false),
  }) {
    return MyPageScreenViewModelProvider(
      initialState: initialState,
    );
  }

  @override
  MyPageScreenViewModelProvider getProviderOverride(
    covariant MyPageScreenViewModelProvider provider,
  ) {
    return call(
      initialState: provider.initialState,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    userRepositoryProvider,
    authRepositoryProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    userRepositoryProvider,
    ...?userRepositoryProvider.allTransitiveDependencies,
    authRepositoryProvider,
    ...?authRepositoryProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'myPageScreenViewModelProvider';
}

/// See also [MyPageScreenViewModel].
class MyPageScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    MyPageScreenViewModel, MyPageScreenState> {
  /// See also [MyPageScreenViewModel].
  MyPageScreenViewModelProvider({
    MyPageScreenState initialState =
        const MyPageScreenState(user: null, isLoading: false),
  }) : this._internal(
          () => MyPageScreenViewModel()..initialState = initialState,
          from: myPageScreenViewModelProvider,
          name: r'myPageScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myPageScreenViewModelHash,
          dependencies: MyPageScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              MyPageScreenViewModelFamily._allTransitiveDependencies,
          initialState: initialState,
        );

  MyPageScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialState,
  }) : super.internal();

  final MyPageScreenState initialState;

  @override
  MyPageScreenState runNotifierBuild(
    covariant MyPageScreenViewModel notifier,
  ) {
    return notifier.build(
      initialState: initialState,
    );
  }

  @override
  Override overrideWith(MyPageScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyPageScreenViewModelProvider._internal(
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
  AutoDisposeNotifierProviderElement<MyPageScreenViewModel, MyPageScreenState>
      createElement() {
    return _MyPageScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyPageScreenViewModelProvider &&
        other.initialState == initialState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialState.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyPageScreenViewModelRef
    on AutoDisposeNotifierProviderRef<MyPageScreenState> {
  /// The parameter `initialState` of this provider.
  MyPageScreenState get initialState;
}

class _MyPageScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<MyPageScreenViewModel,
        MyPageScreenState> with MyPageScreenViewModelRef {
  _MyPageScreenViewModelProviderElement(super.provider);

  @override
  MyPageScreenState get initialState =>
      (origin as MyPageScreenViewModelProvider).initialState;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
