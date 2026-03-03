// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$marketingPromotionPlanByIdHash() =>
    r'56b0defa0b6df77e0d3685a9382dcc65e275ba60';

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

/// See also [marketingPromotionPlanById].
@ProviderFor(marketingPromotionPlanById)
const marketingPromotionPlanByIdProvider = MarketingPromotionPlanByIdFamily();

/// See also [marketingPromotionPlanById].
class MarketingPromotionPlanByIdFamily
    extends Family<AsyncValue<MarketingPromotionPlan>> {
  /// See also [marketingPromotionPlanById].
  const MarketingPromotionPlanByIdFamily();

  /// See also [marketingPromotionPlanById].
  MarketingPromotionPlanByIdProvider call(
    int id,
  ) {
    return MarketingPromotionPlanByIdProvider(
      id,
    );
  }

  @override
  MarketingPromotionPlanByIdProvider getProviderOverride(
    covariant MarketingPromotionPlanByIdProvider provider,
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
  String? get name => r'marketingPromotionPlanByIdProvider';
}

/// See also [marketingPromotionPlanById].
class MarketingPromotionPlanByIdProvider
    extends AutoDisposeFutureProvider<MarketingPromotionPlan> {
  /// See also [marketingPromotionPlanById].
  MarketingPromotionPlanByIdProvider(
    int id,
  ) : this._internal(
          (ref) => marketingPromotionPlanById(
            ref as MarketingPromotionPlanByIdRef,
            id,
          ),
          from: marketingPromotionPlanByIdProvider,
          name: r'marketingPromotionPlanByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$marketingPromotionPlanByIdHash,
          dependencies: MarketingPromotionPlanByIdFamily._dependencies,
          allTransitiveDependencies:
              MarketingPromotionPlanByIdFamily._allTransitiveDependencies,
          id: id,
        );

  MarketingPromotionPlanByIdProvider._internal(
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
    FutureOr<MarketingPromotionPlan> Function(
            MarketingPromotionPlanByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MarketingPromotionPlanByIdProvider._internal(
        (ref) => create(ref as MarketingPromotionPlanByIdRef),
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
  AutoDisposeFutureProviderElement<MarketingPromotionPlan> createElement() {
    return _MarketingPromotionPlanByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MarketingPromotionPlanByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MarketingPromotionPlanByIdRef
    on AutoDisposeFutureProviderRef<MarketingPromotionPlan> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MarketingPromotionPlanByIdProviderElement
    extends AutoDisposeFutureProviderElement<MarketingPromotionPlan>
    with MarketingPromotionPlanByIdRef {
  _MarketingPromotionPlanByIdProviderElement(super.provider);

  @override
  int get id => (origin as MarketingPromotionPlanByIdProvider).id;
}

String _$goodRequisitionByIdHash() =>
    r'f7e33529e5a3f7b354f917c8252790a2df2b5878';

/// See also [goodRequisitionById].
@ProviderFor(goodRequisitionById)
const goodRequisitionByIdProvider = GoodRequisitionByIdFamily();

/// See also [goodRequisitionById].
class GoodRequisitionByIdFamily extends Family<AsyncValue<GoodRequisition>> {
  /// See also [goodRequisitionById].
  const GoodRequisitionByIdFamily();

  /// See also [goodRequisitionById].
  GoodRequisitionByIdProvider call(
    int id,
  ) {
    return GoodRequisitionByIdProvider(
      id,
    );
  }

  @override
  GoodRequisitionByIdProvider getProviderOverride(
    covariant GoodRequisitionByIdProvider provider,
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
  String? get name => r'goodRequisitionByIdProvider';
}

/// See also [goodRequisitionById].
class GoodRequisitionByIdProvider
    extends AutoDisposeFutureProvider<GoodRequisition> {
  /// See also [goodRequisitionById].
  GoodRequisitionByIdProvider(
    int id,
  ) : this._internal(
          (ref) => goodRequisitionById(
            ref as GoodRequisitionByIdRef,
            id,
          ),
          from: goodRequisitionByIdProvider,
          name: r'goodRequisitionByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$goodRequisitionByIdHash,
          dependencies: GoodRequisitionByIdFamily._dependencies,
          allTransitiveDependencies:
              GoodRequisitionByIdFamily._allTransitiveDependencies,
          id: id,
        );

  GoodRequisitionByIdProvider._internal(
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
    FutureOr<GoodRequisition> Function(GoodRequisitionByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GoodRequisitionByIdProvider._internal(
        (ref) => create(ref as GoodRequisitionByIdRef),
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
  AutoDisposeFutureProviderElement<GoodRequisition> createElement() {
    return _GoodRequisitionByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GoodRequisitionByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GoodRequisitionByIdRef on AutoDisposeFutureProviderRef<GoodRequisition> {
  /// The parameter `id` of this provider.
  int get id;
}

class _GoodRequisitionByIdProviderElement
    extends AutoDisposeFutureProviderElement<GoodRequisition>
    with GoodRequisitionByIdRef {
  _GoodRequisitionByIdProviderElement(super.provider);

  @override
  int get id => (origin as GoodRequisitionByIdProvider).id;
}

String _$invoiceByIdHash() => r'd998e1cb0ede4a7b2d8af4f60c3a34b0d596797c';

/// See also [invoiceById].
@ProviderFor(invoiceById)
const invoiceByIdProvider = InvoiceByIdFamily();

/// See also [invoiceById].
class InvoiceByIdFamily extends Family<AsyncValue<Invoice>> {
  /// See also [invoiceById].
  const InvoiceByIdFamily();

  /// See also [invoiceById].
  InvoiceByIdProvider call(
    int id,
  ) {
    return InvoiceByIdProvider(
      id,
    );
  }

  @override
  InvoiceByIdProvider getProviderOverride(
    covariant InvoiceByIdProvider provider,
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
  String? get name => r'invoiceByIdProvider';
}

/// See also [invoiceById].
class InvoiceByIdProvider extends AutoDisposeFutureProvider<Invoice> {
  /// See also [invoiceById].
  InvoiceByIdProvider(
    int id,
  ) : this._internal(
          (ref) => invoiceById(
            ref as InvoiceByIdRef,
            id,
          ),
          from: invoiceByIdProvider,
          name: r'invoiceByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$invoiceByIdHash,
          dependencies: InvoiceByIdFamily._dependencies,
          allTransitiveDependencies:
              InvoiceByIdFamily._allTransitiveDependencies,
          id: id,
        );

  InvoiceByIdProvider._internal(
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
    FutureOr<Invoice> Function(InvoiceByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InvoiceByIdProvider._internal(
        (ref) => create(ref as InvoiceByIdRef),
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
  AutoDisposeFutureProviderElement<Invoice> createElement() {
    return _InvoiceByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InvoiceByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InvoiceByIdRef on AutoDisposeFutureProviderRef<Invoice> {
  /// The parameter `id` of this provider.
  int get id;
}

class _InvoiceByIdProviderElement
    extends AutoDisposeFutureProviderElement<Invoice> with InvoiceByIdRef {
  _InvoiceByIdProviderElement(super.provider);

  @override
  int get id => (origin as InvoiceByIdProvider).id;
}

String _$paginatedMarketingPromotionPlanNotifierHash() =>
    r'd369ce5772d1d4c6a3fa96d89fa32faacfa10dd9';

/// See also [PaginatedMarketingPromotionPlanNotifier].
@ProviderFor(PaginatedMarketingPromotionPlanNotifier)
final paginatedMarketingPromotionPlanNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedMarketingPromotionPlanNotifier,
        PaginatedData<MarketingPromotionPlan>>.internal(
  PaginatedMarketingPromotionPlanNotifier.new,
  name: r'paginatedMarketingPromotionPlanNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedMarketingPromotionPlanNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedMarketingPromotionPlanNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<MarketingPromotionPlan>>;
String _$marketingPromotionNotifierHash() =>
    r'539b26ad7fbde90cbee8c4c3a3ed79ab9b5579d6';

/// See also [MarketingPromotionNotifier].
@ProviderFor(MarketingPromotionNotifier)
final marketingPromotionNotifierProvider = AutoDisposeAsyncNotifierProvider<
    MarketingPromotionNotifier, Option<MarketingPromotionPlan>>.internal(
  MarketingPromotionNotifier.new,
  name: r'marketingPromotionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marketingPromotionNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarketingPromotionNotifier
    = AutoDisposeAsyncNotifier<Option<MarketingPromotionPlan>>;
String _$paginatedGoodRequisitionNotifierHash() =>
    r'ec2ed343b1b42f826a239418e8f5d601f7dcc9b7';

/// See also [PaginatedGoodRequisitionNotifier].
@ProviderFor(PaginatedGoodRequisitionNotifier)
final paginatedGoodRequisitionNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedGoodRequisitionNotifier,
        PaginatedData<GoodRequisition>>.internal(
  PaginatedGoodRequisitionNotifier.new,
  name: r'paginatedGoodRequisitionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedGoodRequisitionNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedGoodRequisitionNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<GoodRequisition>>;
String _$paginatedInvoiceNotifierHash() =>
    r'f1b723c4d806e875cb22d2bad2ec248e5a11a562';

/// See also [PaginatedInvoiceNotifier].
@ProviderFor(PaginatedInvoiceNotifier)
final paginatedInvoiceNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedInvoiceNotifier, PaginatedData<Invoice>>.internal(
  PaginatedInvoiceNotifier.new,
  name: r'paginatedInvoiceNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedInvoiceNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedInvoiceNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Invoice>>;
String _$paginatedReceiptNotifierHash() =>
    r'bda5688d3b03d85564429da1d74ba933886dfffa';

/// See also [PaginatedReceiptNotifier].
@ProviderFor(PaginatedReceiptNotifier)
final paginatedReceiptNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedReceiptNotifier, PaginatedData<Receipt>>.internal(
  PaginatedReceiptNotifier.new,
  name: r'paginatedReceiptNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedReceiptNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedReceiptNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Receipt>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
