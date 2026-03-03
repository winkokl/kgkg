// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$marketingPromotionReturnByIdHash() =>
    r'3fd247c1169394f83e59cea38a31556780e8c00e';

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

/// See also [marketingPromotionReturnById].
@ProviderFor(marketingPromotionReturnById)
const marketingPromotionReturnByIdProvider =
    MarketingPromotionReturnByIdFamily();

/// See also [marketingPromotionReturnById].
class MarketingPromotionReturnByIdFamily
    extends Family<AsyncValue<MarketingPromotionReturn>> {
  /// See also [marketingPromotionReturnById].
  const MarketingPromotionReturnByIdFamily();

  /// See also [marketingPromotionReturnById].
  MarketingPromotionReturnByIdProvider call(
    int id,
  ) {
    return MarketingPromotionReturnByIdProvider(
      id,
    );
  }

  @override
  MarketingPromotionReturnByIdProvider getProviderOverride(
    covariant MarketingPromotionReturnByIdProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'marketingPromotionReturnByIdProvider';
}

/// See also [marketingPromotionReturnById].
class MarketingPromotionReturnByIdProvider
    extends AutoDisposeFutureProvider<MarketingPromotionReturn> {
  /// See also [marketingPromotionReturnById].
  MarketingPromotionReturnByIdProvider(
    int id,
  ) : this._internal(
          (ref) => marketingPromotionReturnById(
            ref as MarketingPromotionReturnByIdRef,
            id,
          ),
          from: marketingPromotionReturnByIdProvider,
          name: r'marketingPromotionReturnByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$marketingPromotionReturnByIdHash,
          dependencies: MarketingPromotionReturnByIdFamily._dependencies,
          allTransitiveDependencies:
              MarketingPromotionReturnByIdFamily._allTransitiveDependencies,
          id: id,
        );

  MarketingPromotionReturnByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<MarketingPromotionReturn> Function(
            MarketingPromotionReturnByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MarketingPromotionReturnByIdProvider._internal(
        (ref) => create(ref as MarketingPromotionReturnByIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MarketingPromotionReturn> createElement() {
    return _MarketingPromotionReturnByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarketingPromotionReturnByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MarketingPromotionReturnByIdRef
    on AutoDisposeFutureProviderRef<MarketingPromotionReturn> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MarketingPromotionReturnByIdProviderElement
    extends AutoDisposeFutureProviderElement<MarketingPromotionReturn>
    with MarketingPromotionReturnByIdRef {
  _MarketingPromotionReturnByIdProviderElement(super.provider);

  @override
  int get id => (origin as MarketingPromotionReturnByIdProvider).id;
}

String _$paginatedMarketingPromotionReturnNotifierHash() =>
    r'ef4bc7a91eba2e83fcd476dbb7eca3464efb368d';

/// See also [PaginatedMarketingPromotionReturnNotifier].
@ProviderFor(PaginatedMarketingPromotionReturnNotifier)
final paginatedMarketingPromotionReturnNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedMarketingPromotionReturnNotifier,
        PaginatedData<MarketingPromotionReturn>>.internal(
  PaginatedMarketingPromotionReturnNotifier.new,
  name: r'paginatedMarketingPromotionReturnNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedMarketingPromotionReturnNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedMarketingPromotionReturnNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<MarketingPromotionReturn>>;
String _$paginatedReturnReceiptNotifierHash() =>
    r'5b137ac28974b272b387372d8c75c4a68d4fbedf';

/// See also [PaginatedReturnReceiptNotifier].
@ProviderFor(PaginatedReturnReceiptNotifier)
final paginatedReturnReceiptNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedReturnReceiptNotifier, PaginatedData<ReturnReceipt>>.internal(
  PaginatedReturnReceiptNotifier.new,
  name: r'paginatedReturnReceiptNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedReturnReceiptNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedReturnReceiptNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<ReturnReceipt>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
