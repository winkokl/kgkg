// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tripSaleRequestByIdHash() =>
    r'05068bf4f407a4077d1133296d506a661a75308b';

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

/// See also [tripSaleRequestById].
@ProviderFor(tripSaleRequestById)
const tripSaleRequestByIdProvider = TripSaleRequestByIdFamily();

/// See also [tripSaleRequestById].
class TripSaleRequestByIdFamily extends Family<AsyncValue<TripSaleRequest>> {
  /// See also [tripSaleRequestById].
  const TripSaleRequestByIdFamily();

  /// See also [tripSaleRequestById].
  TripSaleRequestByIdProvider call(
    int id,
  ) {
    return TripSaleRequestByIdProvider(
      id,
    );
  }

  @override
  TripSaleRequestByIdProvider getProviderOverride(
    covariant TripSaleRequestByIdProvider provider,
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
  String? get name => r'tripSaleRequestByIdProvider';
}

/// See also [tripSaleRequestById].
class TripSaleRequestByIdProvider
    extends AutoDisposeFutureProvider<TripSaleRequest> {
  /// See also [tripSaleRequestById].
  TripSaleRequestByIdProvider(
    int id,
  ) : this._internal(
          (ref) => tripSaleRequestById(
            ref as TripSaleRequestByIdRef,
            id,
          ),
          from: tripSaleRequestByIdProvider,
          name: r'tripSaleRequestByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tripSaleRequestByIdHash,
          dependencies: TripSaleRequestByIdFamily._dependencies,
          allTransitiveDependencies:
              TripSaleRequestByIdFamily._allTransitiveDependencies,
          id: id,
        );

  TripSaleRequestByIdProvider._internal(
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
    FutureOr<TripSaleRequest> Function(TripSaleRequestByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TripSaleRequestByIdProvider._internal(
        (ref) => create(ref as TripSaleRequestByIdRef),
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
  AutoDisposeFutureProviderElement<TripSaleRequest> createElement() {
    return _TripSaleRequestByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripSaleRequestByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TripSaleRequestByIdRef on AutoDisposeFutureProviderRef<TripSaleRequest> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TripSaleRequestByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripSaleRequest>
    with TripSaleRequestByIdRef {
  _TripSaleRequestByIdProviderElement(super.provider);

  @override
  int get id => (origin as TripSaleRequestByIdProvider).id;
}

String _$tripManagementByIdHash() =>
    r'5cbc4b3ed93335971abfdcb70a630b7883afa227';

/// See also [tripManagementById].
@ProviderFor(tripManagementById)
const tripManagementByIdProvider = TripManagementByIdFamily();

/// See also [tripManagementById].
class TripManagementByIdFamily extends Family<AsyncValue<TripManagement>> {
  /// See also [tripManagementById].
  const TripManagementByIdFamily();

  /// See also [tripManagementById].
  TripManagementByIdProvider call(
    int id,
  ) {
    return TripManagementByIdProvider(
      id,
    );
  }

  @override
  TripManagementByIdProvider getProviderOverride(
    covariant TripManagementByIdProvider provider,
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
  String? get name => r'tripManagementByIdProvider';
}

/// See also [tripManagementById].
class TripManagementByIdProvider
    extends AutoDisposeFutureProvider<TripManagement> {
  /// See also [tripManagementById].
  TripManagementByIdProvider(
    int id,
  ) : this._internal(
          (ref) => tripManagementById(
            ref as TripManagementByIdRef,
            id,
          ),
          from: tripManagementByIdProvider,
          name: r'tripManagementByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tripManagementByIdHash,
          dependencies: TripManagementByIdFamily._dependencies,
          allTransitiveDependencies:
              TripManagementByIdFamily._allTransitiveDependencies,
          id: id,
        );

  TripManagementByIdProvider._internal(
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
    FutureOr<TripManagement> Function(TripManagementByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TripManagementByIdProvider._internal(
        (ref) => create(ref as TripManagementByIdRef),
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
  AutoDisposeFutureProviderElement<TripManagement> createElement() {
    return _TripManagementByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripManagementByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TripManagementByIdRef on AutoDisposeFutureProviderRef<TripManagement> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TripManagementByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripManagement>
    with TripManagementByIdRef {
  _TripManagementByIdProviderElement(super.provider);

  @override
  int get id => (origin as TripManagementByIdProvider).id;
}

String _$tripProposalByIdHash() => r'7a88551a58bc2799a8ae70ee62cd3d12ceaff684';

/// See also [tripProposalById].
@ProviderFor(tripProposalById)
const tripProposalByIdProvider = TripProposalByIdFamily();

/// See also [tripProposalById].
class TripProposalByIdFamily extends Family<AsyncValue<TripProposal>> {
  /// See also [tripProposalById].
  const TripProposalByIdFamily();

  /// See also [tripProposalById].
  TripProposalByIdProvider call(
    int id,
  ) {
    return TripProposalByIdProvider(
      id,
    );
  }

  @override
  TripProposalByIdProvider getProviderOverride(
    covariant TripProposalByIdProvider provider,
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
  String? get name => r'tripProposalByIdProvider';
}

/// See also [tripProposalById].
class TripProposalByIdProvider extends AutoDisposeFutureProvider<TripProposal> {
  /// See also [tripProposalById].
  TripProposalByIdProvider(
    int id,
  ) : this._internal(
          (ref) => tripProposalById(
            ref as TripProposalByIdRef,
            id,
          ),
          from: tripProposalByIdProvider,
          name: r'tripProposalByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tripProposalByIdHash,
          dependencies: TripProposalByIdFamily._dependencies,
          allTransitiveDependencies:
              TripProposalByIdFamily._allTransitiveDependencies,
          id: id,
        );

  TripProposalByIdProvider._internal(
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
    FutureOr<TripProposal> Function(TripProposalByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TripProposalByIdProvider._internal(
        (ref) => create(ref as TripProposalByIdRef),
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
  AutoDisposeFutureProviderElement<TripProposal> createElement() {
    return _TripProposalByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripProposalByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TripProposalByIdRef on AutoDisposeFutureProviderRef<TripProposal> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TripProposalByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripProposal>
    with TripProposalByIdRef {
  _TripProposalByIdProviderElement(super.provider);

  @override
  int get id => (origin as TripProposalByIdProvider).id;
}

String _$tripSaleByIdHash() => r'cf4932c16a5514916f94a20e1e2a5582eaaba26e';

/// See also [tripSaleById].
@ProviderFor(tripSaleById)
const tripSaleByIdProvider = TripSaleByIdFamily();

/// See also [tripSaleById].
class TripSaleByIdFamily extends Family<AsyncValue<TripSale>> {
  /// See also [tripSaleById].
  const TripSaleByIdFamily();

  /// See also [tripSaleById].
  TripSaleByIdProvider call(
    int id,
  ) {
    return TripSaleByIdProvider(
      id,
    );
  }

  @override
  TripSaleByIdProvider getProviderOverride(
    covariant TripSaleByIdProvider provider,
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
  String? get name => r'tripSaleByIdProvider';
}

/// See also [tripSaleById].
class TripSaleByIdProvider extends AutoDisposeFutureProvider<TripSale> {
  /// See also [tripSaleById].
  TripSaleByIdProvider(
    int id,
  ) : this._internal(
          (ref) => tripSaleById(
            ref as TripSaleByIdRef,
            id,
          ),
          from: tripSaleByIdProvider,
          name: r'tripSaleByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tripSaleByIdHash,
          dependencies: TripSaleByIdFamily._dependencies,
          allTransitiveDependencies:
              TripSaleByIdFamily._allTransitiveDependencies,
          id: id,
        );

  TripSaleByIdProvider._internal(
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
    FutureOr<TripSale> Function(TripSaleByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TripSaleByIdProvider._internal(
        (ref) => create(ref as TripSaleByIdRef),
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
  AutoDisposeFutureProviderElement<TripSale> createElement() {
    return _TripSaleByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripSaleByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TripSaleByIdRef on AutoDisposeFutureProviderRef<TripSale> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TripSaleByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripSale> with TripSaleByIdRef {
  _TripSaleByIdProviderElement(super.provider);

  @override
  int get id => (origin as TripSaleByIdProvider).id;
}

String _$tripSaleInvoiceByIdHash() =>
    r'd9f1e73874e31d73280a839032a6c3e6a96641dd';

/// See also [tripSaleInvoiceById].
@ProviderFor(tripSaleInvoiceById)
const tripSaleInvoiceByIdProvider = TripSaleInvoiceByIdFamily();

/// See also [tripSaleInvoiceById].
class TripSaleInvoiceByIdFamily extends Family<AsyncValue<TripSaleInvoice>> {
  /// See also [tripSaleInvoiceById].
  const TripSaleInvoiceByIdFamily();

  /// See also [tripSaleInvoiceById].
  TripSaleInvoiceByIdProvider call(
    int id,
  ) {
    return TripSaleInvoiceByIdProvider(
      id,
    );
  }

  @override
  TripSaleInvoiceByIdProvider getProviderOverride(
    covariant TripSaleInvoiceByIdProvider provider,
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
  String? get name => r'tripSaleInvoiceByIdProvider';
}

/// See also [tripSaleInvoiceById].
class TripSaleInvoiceByIdProvider
    extends AutoDisposeFutureProvider<TripSaleInvoice> {
  /// See also [tripSaleInvoiceById].
  TripSaleInvoiceByIdProvider(
    int id,
  ) : this._internal(
          (ref) => tripSaleInvoiceById(
            ref as TripSaleInvoiceByIdRef,
            id,
          ),
          from: tripSaleInvoiceByIdProvider,
          name: r'tripSaleInvoiceByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tripSaleInvoiceByIdHash,
          dependencies: TripSaleInvoiceByIdFamily._dependencies,
          allTransitiveDependencies:
              TripSaleInvoiceByIdFamily._allTransitiveDependencies,
          id: id,
        );

  TripSaleInvoiceByIdProvider._internal(
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
    FutureOr<TripSaleInvoice> Function(TripSaleInvoiceByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TripSaleInvoiceByIdProvider._internal(
        (ref) => create(ref as TripSaleInvoiceByIdRef),
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
  AutoDisposeFutureProviderElement<TripSaleInvoice> createElement() {
    return _TripSaleInvoiceByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripSaleInvoiceByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TripSaleInvoiceByIdRef on AutoDisposeFutureProviderRef<TripSaleInvoice> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TripSaleInvoiceByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripSaleInvoice>
    with TripSaleInvoiceByIdRef {
  _TripSaleInvoiceByIdProviderElement(super.provider);

  @override
  int get id => (origin as TripSaleInvoiceByIdProvider).id;
}

String _$paymentReceiveByIdHash() =>
    r'50806df42aa14e44992f894e4bd490c2e3fc646e';

/// See also [paymentReceiveById].
@ProviderFor(paymentReceiveById)
const paymentReceiveByIdProvider = PaymentReceiveByIdFamily();

/// See also [paymentReceiveById].
class PaymentReceiveByIdFamily extends Family<AsyncValue<TripSaleReceipt>> {
  /// See also [paymentReceiveById].
  const PaymentReceiveByIdFamily();

  /// See also [paymentReceiveById].
  PaymentReceiveByIdProvider call(
    int id,
  ) {
    return PaymentReceiveByIdProvider(
      id,
    );
  }

  @override
  PaymentReceiveByIdProvider getProviderOverride(
    covariant PaymentReceiveByIdProvider provider,
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
  String? get name => r'paymentReceiveByIdProvider';
}

/// See also [paymentReceiveById].
class PaymentReceiveByIdProvider
    extends AutoDisposeFutureProvider<TripSaleReceipt> {
  /// See also [paymentReceiveById].
  PaymentReceiveByIdProvider(
    int id,
  ) : this._internal(
          (ref) => paymentReceiveById(
            ref as PaymentReceiveByIdRef,
            id,
          ),
          from: paymentReceiveByIdProvider,
          name: r'paymentReceiveByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paymentReceiveByIdHash,
          dependencies: PaymentReceiveByIdFamily._dependencies,
          allTransitiveDependencies:
              PaymentReceiveByIdFamily._allTransitiveDependencies,
          id: id,
        );

  PaymentReceiveByIdProvider._internal(
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
    FutureOr<TripSaleReceipt> Function(PaymentReceiveByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PaymentReceiveByIdProvider._internal(
        (ref) => create(ref as PaymentReceiveByIdRef),
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
  AutoDisposeFutureProviderElement<TripSaleReceipt> createElement() {
    return _PaymentReceiveByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentReceiveByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PaymentReceiveByIdRef on AutoDisposeFutureProviderRef<TripSaleReceipt> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PaymentReceiveByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripSaleReceipt>
    with PaymentReceiveByIdRef {
  _PaymentReceiveByIdProviderElement(super.provider);

  @override
  int get id => (origin as PaymentReceiveByIdProvider).id;
}

String _$paginatedTripSaleNotifierHash() =>
    r'e0b9fdec2925babc0e26feeb684d10976dbee0a9';

/// See also [PaginatedTripSaleNotifier].
@ProviderFor(PaginatedTripSaleNotifier)
final paginatedTripSaleNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedTripSaleNotifier, PaginatedData<TripSale>>.internal(
  PaginatedTripSaleNotifier.new,
  name: r'paginatedTripSaleNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripSaleNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripSaleNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripSale>>;
String _$paginatedTripSaleRequestNotifierHash() =>
    r'c4d0b1d09e9d4af2fc871d3c51fe7872fc63f357';

/// See also [PaginatedTripSaleRequestNotifier].
@ProviderFor(PaginatedTripSaleRequestNotifier)
final paginatedTripSaleRequestNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedTripSaleRequestNotifier,
        PaginatedData<TripSaleRequest>>.internal(
  PaginatedTripSaleRequestNotifier.new,
  name: r'paginatedTripSaleRequestNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripSaleRequestNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripSaleRequestNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripSaleRequest>>;
String _$paginatedTripManagementNotifierHash() =>
    r'ca567ed3c5558788ff0d8f6ca1a09acfbd6807d6';

/// See also [PaginatedTripManagementNotifier].
@ProviderFor(PaginatedTripManagementNotifier)
final paginatedTripManagementNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedTripManagementNotifier,
        PaginatedData<TripManagement>>.internal(
  PaginatedTripManagementNotifier.new,
  name: r'paginatedTripManagementNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripManagementNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripManagementNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripManagement>>;
String _$paginatedTripProposalNotifierHash() =>
    r'eaae4dc425cc1991df3dd300249e439b1ebfeef9';

/// See also [PaginatedTripProposalNotifier].
@ProviderFor(PaginatedTripProposalNotifier)
final paginatedTripProposalNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedTripProposalNotifier, PaginatedData<TripProposal>>.internal(
  PaginatedTripProposalNotifier.new,
  name: r'paginatedTripProposalNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripProposalNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripProposalNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripProposal>>;
String _$paginatedTripUserAssignNotifierHash() =>
    r'977d1d3ff799f255c01c71d90946ef8cb4408064';

/// See also [PaginatedTripUserAssignNotifier].
@ProviderFor(PaginatedTripUserAssignNotifier)
final paginatedTripUserAssignNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedTripUserAssignNotifier,
        PaginatedData<TripUserAssign>>.internal(
  PaginatedTripUserAssignNotifier.new,
  name: r'paginatedTripUserAssignNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripUserAssignNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripUserAssignNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripUserAssign>>;
String _$paginatedTripSaleInvoiceNotifierHash() =>
    r'd58782b30cb86f333abe40819fff0e46226f440d';

/// See also [PaginatedTripSaleInvoiceNotifier].
@ProviderFor(PaginatedTripSaleInvoiceNotifier)
final paginatedTripSaleInvoiceNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedTripSaleInvoiceNotifier,
        PaginatedData<TripSaleInvoice>>.internal(
  PaginatedTripSaleInvoiceNotifier.new,
  name: r'paginatedTripSaleInvoiceNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripSaleInvoiceNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripSaleInvoiceNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripSaleInvoice>>;
String _$paginatedTripSaleReceiptNotifierHash() =>
    r'a4f967aa4fc353df39dc3882572c19d06978db4a';

/// See also [PaginatedTripSaleReceiptNotifier].
@ProviderFor(PaginatedTripSaleReceiptNotifier)
final paginatedTripSaleReceiptNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedTripSaleReceiptNotifier,
        PaginatedData<TripSaleReceipt>>.internal(
  PaginatedTripSaleReceiptNotifier.new,
  name: r'paginatedTripSaleReceiptNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripSaleReceiptNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripSaleReceiptNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripSaleReceipt>>;
String _$paginatedTripNameNotifierHash() =>
    r'eddbf4d7f253a4f5b99803aa7e747b9e8b3f67cf';

/// See also [PaginatedTripNameNotifier].
@ProviderFor(PaginatedTripNameNotifier)
final paginatedTripNameNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedTripNameNotifier, PaginatedData<TripName>>.internal(
  PaginatedTripNameNotifier.new,
  name: r'paginatedTripNameNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripNameNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripNameNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripName>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
