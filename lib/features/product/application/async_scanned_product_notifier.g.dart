// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'async_scanned_product_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAllProductsHash() => r'36d8a55920b53775b17465b529a0676184c6bb3a';

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

/// See also [getAllProducts].
@ProviderFor(getAllProducts)
const getAllProductsProvider = GetAllProductsFamily();

/// See also [getAllProducts].
class GetAllProductsFamily extends Family<AsyncValue<List<Product>>> {
  /// See also [getAllProducts].
  const GetAllProductsFamily();

  /// See also [getAllProducts].
  GetAllProductsProvider call(
    String warehouseId,
  ) {
    return GetAllProductsProvider(
      warehouseId,
    );
  }

  @override
  GetAllProductsProvider getProviderOverride(
    covariant GetAllProductsProvider provider,
  ) {
    return call(
      provider.warehouseId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAllProductsProvider';
}

/// See also [getAllProducts].
class GetAllProductsProvider extends AutoDisposeFutureProvider<List<Product>> {
  /// See also [getAllProducts].
  GetAllProductsProvider(
    String warehouseId,
  ) : this._internal(
          (ref) => getAllProducts(
            ref as GetAllProductsRef,
            warehouseId,
          ),
          from: getAllProductsProvider,
          name: r'getAllProductsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAllProductsHash,
          dependencies: GetAllProductsFamily._dependencies,
          allTransitiveDependencies:
              GetAllProductsFamily._allTransitiveDependencies,
          warehouseId: warehouseId,
        );

  GetAllProductsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.warehouseId,
  }) : super.internal();

  final String warehouseId;

  @override
  Override overrideWith(
    FutureOr<List<Product>> Function(GetAllProductsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAllProductsProvider._internal(
        (ref) => create(ref as GetAllProductsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        warehouseId: warehouseId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Product>> createElement() {
    return _GetAllProductsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAllProductsProvider && other.warehouseId == warehouseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, warehouseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetAllProductsRef on AutoDisposeFutureProviderRef<List<Product>> {
  /// The parameter `warehouseId` of this provider.
  String get warehouseId;
}

class _GetAllProductsProviderElement
    extends AutoDisposeFutureProviderElement<List<Product>>
    with GetAllProductsRef {
  _GetAllProductsProviderElement(super.provider);

  @override
  String get warehouseId => (origin as GetAllProductsProvider).warehouseId;
}

String _$asyncScannedProductNotifierHash() =>
    r'4ae4d418bce6ccfd1a8efd59f76b782ada4cf1f0';

/// See also [AsyncScannedProductNotifier].
@ProviderFor(AsyncScannedProductNotifier)
final asyncScannedProductNotifierProvider = AutoDisposeAsyncNotifierProvider<
    AsyncScannedProductNotifier, Option<Product?>>.internal(
  AsyncScannedProductNotifier.new,
  name: r'asyncScannedProductNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$asyncScannedProductNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AsyncScannedProductNotifier
    = AutoDisposeAsyncNotifier<Option<Product?>>;
String _$asyncAvailabeQtyNotifierHash() =>
    r'8856a1c5c96ed75b1b54ef94ea23e0d8becf8b11';

abstract class _$AsyncAvailabeQtyNotifier
    extends BuildlessAutoDisposeAsyncNotifier<Option<int?>> {
  late final dynamic value;

  FutureOr<Option<int?>> build(
    dynamic value,
  );
}

/// See also [AsyncAvailabeQtyNotifier].
@ProviderFor(AsyncAvailabeQtyNotifier)
const asyncAvailabeQtyNotifierProvider = AsyncAvailabeQtyNotifierFamily();

/// See also [AsyncAvailabeQtyNotifier].
class AsyncAvailabeQtyNotifierFamily extends Family<AsyncValue<Option<int?>>> {
  /// See also [AsyncAvailabeQtyNotifier].
  const AsyncAvailabeQtyNotifierFamily();

  /// See also [AsyncAvailabeQtyNotifier].
  AsyncAvailabeQtyNotifierProvider call(
    dynamic value,
  ) {
    return AsyncAvailabeQtyNotifierProvider(
      value,
    );
  }

  @override
  AsyncAvailabeQtyNotifierProvider getProviderOverride(
    covariant AsyncAvailabeQtyNotifierProvider provider,
  ) {
    return call(
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'asyncAvailabeQtyNotifierProvider';
}

/// See also [AsyncAvailabeQtyNotifier].
class AsyncAvailabeQtyNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AsyncAvailabeQtyNotifier,
        Option<int?>> {
  /// See also [AsyncAvailabeQtyNotifier].
  AsyncAvailabeQtyNotifierProvider(
    dynamic value,
  ) : this._internal(
          () => AsyncAvailabeQtyNotifier()..value = value,
          from: asyncAvailabeQtyNotifierProvider,
          name: r'asyncAvailabeQtyNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncAvailabeQtyNotifierHash,
          dependencies: AsyncAvailabeQtyNotifierFamily._dependencies,
          allTransitiveDependencies:
              AsyncAvailabeQtyNotifierFamily._allTransitiveDependencies,
          value: value,
        );

  AsyncAvailabeQtyNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.value,
  }) : super.internal();

  final dynamic value;

  @override
  FutureOr<Option<int?>> runNotifierBuild(
    covariant AsyncAvailabeQtyNotifier notifier,
  ) {
    return notifier.build(
      value,
    );
  }

  @override
  Override overrideWith(AsyncAvailabeQtyNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncAvailabeQtyNotifierProvider._internal(
        () => create()..value = value,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AsyncAvailabeQtyNotifier,
      Option<int?>> createElement() {
    return _AsyncAvailabeQtyNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncAvailabeQtyNotifierProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncAvailabeQtyNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<Option<int?>> {
  /// The parameter `value` of this provider.
  dynamic get value;
}

class _AsyncAvailabeQtyNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncAvailabeQtyNotifier,
        Option<int?>> with AsyncAvailabeQtyNotifierRef {
  _AsyncAvailabeQtyNotifierProviderElement(super.provider);

  @override
  dynamic get value => (origin as AsyncAvailabeQtyNotifierProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
