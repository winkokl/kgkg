// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$salePromotionByIdHash() => r'c3a166816a4b640f5fbc7141cb16d7b5e52e8d64';

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

/// See also [salePromotionById].
@ProviderFor(salePromotionById)
const salePromotionByIdProvider = SalePromotionByIdFamily();

/// See also [salePromotionById].
class SalePromotionByIdFamily extends Family<AsyncValue<SalePromotion>> {
  /// See also [salePromotionById].
  const SalePromotionByIdFamily();

  /// See also [salePromotionById].
  SalePromotionByIdProvider call(
    int id,
  ) {
    return SalePromotionByIdProvider(
      id,
    );
  }

  @override
  SalePromotionByIdProvider getProviderOverride(
    covariant SalePromotionByIdProvider provider,
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
  String? get name => r'salePromotionByIdProvider';
}

/// See also [salePromotionById].
class SalePromotionByIdProvider
    extends AutoDisposeFutureProvider<SalePromotion> {
  /// See also [salePromotionById].
  SalePromotionByIdProvider(
    int id,
  ) : this._internal(
          (ref) => salePromotionById(
            ref as SalePromotionByIdRef,
            id,
          ),
          from: salePromotionByIdProvider,
          name: r'salePromotionByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$salePromotionByIdHash,
          dependencies: SalePromotionByIdFamily._dependencies,
          allTransitiveDependencies:
              SalePromotionByIdFamily._allTransitiveDependencies,
          id: id,
        );

  SalePromotionByIdProvider._internal(
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
    FutureOr<SalePromotion> Function(SalePromotionByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SalePromotionByIdProvider._internal(
        (ref) => create(ref as SalePromotionByIdRef),
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
  AutoDisposeFutureProviderElement<SalePromotion> createElement() {
    return _SalePromotionByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SalePromotionByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SalePromotionByIdRef on AutoDisposeFutureProviderRef<SalePromotion> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SalePromotionByIdProviderElement
    extends AutoDisposeFutureProviderElement<SalePromotion>
    with SalePromotionByIdRef {
  _SalePromotionByIdProviderElement(super.provider);

  @override
  int get id => (origin as SalePromotionByIdProvider).id;
}

String _$salePromotionsByCusChannelWayHash() =>
    r'18475e51bdcb54097d8911c254eb92b57916f7f9';

/// See also [salePromotionsByCusChannelWay].
@ProviderFor(salePromotionsByCusChannelWay)
const salePromotionsByCusChannelWayProvider =
    SalePromotionsByCusChannelWayFamily();

/// See also [salePromotionsByCusChannelWay].
class SalePromotionsByCusChannelWayFamily
    extends Family<AsyncValue<List<SalePromotion>>> {
  /// See also [salePromotionsByCusChannelWay].
  const SalePromotionsByCusChannelWayFamily();

  /// See also [salePromotionsByCusChannelWay].
  SalePromotionsByCusChannelWayProvider call(
    int cusId,
    int wayId,
    String startDate,
  ) {
    return SalePromotionsByCusChannelWayProvider(
      cusId,
      wayId,
      startDate,
    );
  }

  @override
  SalePromotionsByCusChannelWayProvider getProviderOverride(
    covariant SalePromotionsByCusChannelWayProvider provider,
  ) {
    return call(
      provider.cusId,
      provider.wayId,
      provider.startDate,
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
  String? get name => r'salePromotionsByCusChannelWayProvider';
}

/// See also [salePromotionsByCusChannelWay].
class SalePromotionsByCusChannelWayProvider
    extends AutoDisposeFutureProvider<List<SalePromotion>> {
  /// See also [salePromotionsByCusChannelWay].
  SalePromotionsByCusChannelWayProvider(
    int cusId,
    int wayId,
    String startDate,
  ) : this._internal(
          (ref) => salePromotionsByCusChannelWay(
            ref as SalePromotionsByCusChannelWayRef,
            cusId,
            wayId,
            startDate,
          ),
          from: salePromotionsByCusChannelWayProvider,
          name: r'salePromotionsByCusChannelWayProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$salePromotionsByCusChannelWayHash,
          dependencies: SalePromotionsByCusChannelWayFamily._dependencies,
          allTransitiveDependencies:
              SalePromotionsByCusChannelWayFamily._allTransitiveDependencies,
          cusId: cusId,
          wayId: wayId,
          startDate: startDate,
        );

  SalePromotionsByCusChannelWayProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cusId,
    required this.wayId,
    required this.startDate,
  }) : super.internal();

  final int cusId;
  final int wayId;
  final String startDate;

  @override
  Override overrideWith(
    FutureOr<List<SalePromotion>> Function(
            SalePromotionsByCusChannelWayRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SalePromotionsByCusChannelWayProvider._internal(
        (ref) => create(ref as SalePromotionsByCusChannelWayRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cusId: cusId,
        wayId: wayId,
        startDate: startDate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SalePromotion>> createElement() {
    return _SalePromotionsByCusChannelWayProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SalePromotionsByCusChannelWayProvider &&
        other.cusId == cusId &&
        other.wayId == wayId &&
        other.startDate == startDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cusId.hashCode);
    hash = _SystemHash.combine(hash, wayId.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SalePromotionsByCusChannelWayRef
    on AutoDisposeFutureProviderRef<List<SalePromotion>> {
  /// The parameter `cusId` of this provider.
  int get cusId;

  /// The parameter `wayId` of this provider.
  int get wayId;

  /// The parameter `startDate` of this provider.
  String get startDate;
}

class _SalePromotionsByCusChannelWayProviderElement
    extends AutoDisposeFutureProviderElement<List<SalePromotion>>
    with SalePromotionsByCusChannelWayRef {
  _SalePromotionsByCusChannelWayProviderElement(super.provider);

  @override
  int get cusId => (origin as SalePromotionsByCusChannelWayProvider).cusId;
  @override
  int get wayId => (origin as SalePromotionsByCusChannelWayProvider).wayId;
  @override
  String get startDate =>
      (origin as SalePromotionsByCusChannelWayProvider).startDate;
}

String _$salePromotionsByCusChannelWayByIdHash() =>
    r'e02e0efe97fe65d3ff095a612d05ef7175f180cc';

/// See also [salePromotionsByCusChannelWayById].
@ProviderFor(salePromotionsByCusChannelWayById)
const salePromotionsByCusChannelWayByIdProvider =
    SalePromotionsByCusChannelWayByIdFamily();

/// See also [salePromotionsByCusChannelWayById].
class SalePromotionsByCusChannelWayByIdFamily
    extends Family<AsyncValue<SalePromotion>> {
  /// See also [salePromotionsByCusChannelWayById].
  const SalePromotionsByCusChannelWayByIdFamily();

  /// See also [salePromotionsByCusChannelWayById].
  SalePromotionsByCusChannelWayByIdProvider call(
    int id,
  ) {
    return SalePromotionsByCusChannelWayByIdProvider(
      id,
    );
  }

  @override
  SalePromotionsByCusChannelWayByIdProvider getProviderOverride(
    covariant SalePromotionsByCusChannelWayByIdProvider provider,
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
  String? get name => r'salePromotionsByCusChannelWayByIdProvider';
}

/// See also [salePromotionsByCusChannelWayById].
class SalePromotionsByCusChannelWayByIdProvider
    extends AutoDisposeFutureProvider<SalePromotion> {
  /// See also [salePromotionsByCusChannelWayById].
  SalePromotionsByCusChannelWayByIdProvider(
    int id,
  ) : this._internal(
          (ref) => salePromotionsByCusChannelWayById(
            ref as SalePromotionsByCusChannelWayByIdRef,
            id,
          ),
          from: salePromotionsByCusChannelWayByIdProvider,
          name: r'salePromotionsByCusChannelWayByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$salePromotionsByCusChannelWayByIdHash,
          dependencies: SalePromotionsByCusChannelWayByIdFamily._dependencies,
          allTransitiveDependencies: SalePromotionsByCusChannelWayByIdFamily
              ._allTransitiveDependencies,
          id: id,
        );

  SalePromotionsByCusChannelWayByIdProvider._internal(
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
    FutureOr<SalePromotion> Function(
            SalePromotionsByCusChannelWayByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SalePromotionsByCusChannelWayByIdProvider._internal(
        (ref) => create(ref as SalePromotionsByCusChannelWayByIdRef),
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
  AutoDisposeFutureProviderElement<SalePromotion> createElement() {
    return _SalePromotionsByCusChannelWayByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SalePromotionsByCusChannelWayByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SalePromotionsByCusChannelWayByIdRef
    on AutoDisposeFutureProviderRef<SalePromotion> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SalePromotionsByCusChannelWayByIdProviderElement
    extends AutoDisposeFutureProviderElement<SalePromotion>
    with SalePromotionsByCusChannelWayByIdRef {
  _SalePromotionsByCusChannelWayByIdProviderElement(super.provider);

  @override
  int get id => (origin as SalePromotionsByCusChannelWayByIdProvider).id;
}

String _$paginatedSalePromotionNotifierHash() =>
    r'caab29219b81e532c088a23b3fd575c6eac4ec3d';

/// See also [PaginatedSalePromotionNotifier].
@ProviderFor(PaginatedSalePromotionNotifier)
final paginatedSalePromotionNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedSalePromotionNotifier, PaginatedData<SalePromotion>>.internal(
  PaginatedSalePromotionNotifier.new,
  name: r'paginatedSalePromotionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedSalePromotionNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedSalePromotionNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<SalePromotion>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
