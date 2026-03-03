// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$consignmentApprovalByIdHash() =>
    r'fb632b0e06938bc67cb4b0ae7be7bf32388ff766';

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

/// See also [consignmentApprovalById].
@ProviderFor(consignmentApprovalById)
const consignmentApprovalByIdProvider = ConsignmentApprovalByIdFamily();

/// See also [consignmentApprovalById].
class ConsignmentApprovalByIdFamily
    extends Family<AsyncValue<ConsignmentApproval>> {
  /// See also [consignmentApprovalById].
  const ConsignmentApprovalByIdFamily();

  /// See also [consignmentApprovalById].
  ConsignmentApprovalByIdProvider call(
    int id,
  ) {
    return ConsignmentApprovalByIdProvider(
      id,
    );
  }

  @override
  ConsignmentApprovalByIdProvider getProviderOverride(
    covariant ConsignmentApprovalByIdProvider provider,
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
  String? get name => r'consignmentApprovalByIdProvider';
}

/// See also [consignmentApprovalById].
class ConsignmentApprovalByIdProvider
    extends AutoDisposeFutureProvider<ConsignmentApproval> {
  /// See also [consignmentApprovalById].
  ConsignmentApprovalByIdProvider(
    int id,
  ) : this._internal(
          (ref) => consignmentApprovalById(
            ref as ConsignmentApprovalByIdRef,
            id,
          ),
          from: consignmentApprovalByIdProvider,
          name: r'consignmentApprovalByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$consignmentApprovalByIdHash,
          dependencies: ConsignmentApprovalByIdFamily._dependencies,
          allTransitiveDependencies:
              ConsignmentApprovalByIdFamily._allTransitiveDependencies,
          id: id,
        );

  ConsignmentApprovalByIdProvider._internal(
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
    FutureOr<ConsignmentApproval> Function(ConsignmentApprovalByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConsignmentApprovalByIdProvider._internal(
        (ref) => create(ref as ConsignmentApprovalByIdRef),
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
  AutoDisposeFutureProviderElement<ConsignmentApproval> createElement() {
    return _ConsignmentApprovalByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConsignmentApprovalByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConsignmentApprovalByIdRef
    on AutoDisposeFutureProviderRef<ConsignmentApproval> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ConsignmentApprovalByIdProviderElement
    extends AutoDisposeFutureProviderElement<ConsignmentApproval>
    with ConsignmentApprovalByIdRef {
  _ConsignmentApprovalByIdProviderElement(super.provider);

  @override
  int get id => (origin as ConsignmentApprovalByIdProvider).id;
}

String _$consignmentContractByIdHash() =>
    r'dc929aebe69271dcb71d54bf9f36ede6c1cd68c6';

/// See also [consignmentContractById].
@ProviderFor(consignmentContractById)
const consignmentContractByIdProvider = ConsignmentContractByIdFamily();

/// See also [consignmentContractById].
class ConsignmentContractByIdFamily
    extends Family<AsyncValue<ConsignmentContract>> {
  /// See also [consignmentContractById].
  const ConsignmentContractByIdFamily();

  /// See also [consignmentContractById].
  ConsignmentContractByIdProvider call(
    int id,
  ) {
    return ConsignmentContractByIdProvider(
      id,
    );
  }

  @override
  ConsignmentContractByIdProvider getProviderOverride(
    covariant ConsignmentContractByIdProvider provider,
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
  String? get name => r'consignmentContractByIdProvider';
}

/// See also [consignmentContractById].
class ConsignmentContractByIdProvider
    extends AutoDisposeFutureProvider<ConsignmentContract> {
  /// See also [consignmentContractById].
  ConsignmentContractByIdProvider(
    int id,
  ) : this._internal(
          (ref) => consignmentContractById(
            ref as ConsignmentContractByIdRef,
            id,
          ),
          from: consignmentContractByIdProvider,
          name: r'consignmentContractByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$consignmentContractByIdHash,
          dependencies: ConsignmentContractByIdFamily._dependencies,
          allTransitiveDependencies:
              ConsignmentContractByIdFamily._allTransitiveDependencies,
          id: id,
        );

  ConsignmentContractByIdProvider._internal(
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
    FutureOr<ConsignmentContract> Function(ConsignmentContractByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConsignmentContractByIdProvider._internal(
        (ref) => create(ref as ConsignmentContractByIdRef),
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
  AutoDisposeFutureProviderElement<ConsignmentContract> createElement() {
    return _ConsignmentContractByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConsignmentContractByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConsignmentContractByIdRef
    on AutoDisposeFutureProviderRef<ConsignmentContract> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ConsignmentContractByIdProviderElement
    extends AutoDisposeFutureProviderElement<ConsignmentContract>
    with ConsignmentContractByIdRef {
  _ConsignmentContractByIdProviderElement(super.provider);

  @override
  int get id => (origin as ConsignmentContractByIdProvider).id;
}

String _$consignmentByIdHash() => r'89daa1c235e6718149347b4534630a133e337bb9';

/// See also [consignmentById].
@ProviderFor(consignmentById)
const consignmentByIdProvider = ConsignmentByIdFamily();

/// See also [consignmentById].
class ConsignmentByIdFamily extends Family<AsyncValue<Consignment>> {
  /// See also [consignmentById].
  const ConsignmentByIdFamily();

  /// See also [consignmentById].
  ConsignmentByIdProvider call(
    int id,
  ) {
    return ConsignmentByIdProvider(
      id,
    );
  }

  @override
  ConsignmentByIdProvider getProviderOverride(
    covariant ConsignmentByIdProvider provider,
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
  String? get name => r'consignmentByIdProvider';
}

/// See also [consignmentById].
class ConsignmentByIdProvider extends AutoDisposeFutureProvider<Consignment> {
  /// See also [consignmentById].
  ConsignmentByIdProvider(
    int id,
  ) : this._internal(
          (ref) => consignmentById(
            ref as ConsignmentByIdRef,
            id,
          ),
          from: consignmentByIdProvider,
          name: r'consignmentByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$consignmentByIdHash,
          dependencies: ConsignmentByIdFamily._dependencies,
          allTransitiveDependencies:
              ConsignmentByIdFamily._allTransitiveDependencies,
          id: id,
        );

  ConsignmentByIdProvider._internal(
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
    FutureOr<Consignment> Function(ConsignmentByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConsignmentByIdProvider._internal(
        (ref) => create(ref as ConsignmentByIdRef),
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
  AutoDisposeFutureProviderElement<Consignment> createElement() {
    return _ConsignmentByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConsignmentByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConsignmentByIdRef on AutoDisposeFutureProviderRef<Consignment> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ConsignmentByIdProviderElement
    extends AutoDisposeFutureProviderElement<Consignment>
    with ConsignmentByIdRef {
  _ConsignmentByIdProviderElement(super.provider);

  @override
  int get id => (origin as ConsignmentByIdProvider).id;
}

String _$consignmentInvoiceByIdHash() =>
    r'70eaddd8030dc4fbdd992e2708832261176ca3e4';

/// See also [consignmentInvoiceById].
@ProviderFor(consignmentInvoiceById)
const consignmentInvoiceByIdProvider = ConsignmentInvoiceByIdFamily();

/// See also [consignmentInvoiceById].
class ConsignmentInvoiceByIdFamily
    extends Family<AsyncValue<ConsignmentInvoice>> {
  /// See also [consignmentInvoiceById].
  const ConsignmentInvoiceByIdFamily();

  /// See also [consignmentInvoiceById].
  ConsignmentInvoiceByIdProvider call(
    int id,
  ) {
    return ConsignmentInvoiceByIdProvider(
      id,
    );
  }

  @override
  ConsignmentInvoiceByIdProvider getProviderOverride(
    covariant ConsignmentInvoiceByIdProvider provider,
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
  String? get name => r'consignmentInvoiceByIdProvider';
}

/// See also [consignmentInvoiceById].
class ConsignmentInvoiceByIdProvider
    extends AutoDisposeFutureProvider<ConsignmentInvoice> {
  /// See also [consignmentInvoiceById].
  ConsignmentInvoiceByIdProvider(
    int id,
  ) : this._internal(
          (ref) => consignmentInvoiceById(
            ref as ConsignmentInvoiceByIdRef,
            id,
          ),
          from: consignmentInvoiceByIdProvider,
          name: r'consignmentInvoiceByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$consignmentInvoiceByIdHash,
          dependencies: ConsignmentInvoiceByIdFamily._dependencies,
          allTransitiveDependencies:
              ConsignmentInvoiceByIdFamily._allTransitiveDependencies,
          id: id,
        );

  ConsignmentInvoiceByIdProvider._internal(
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
    FutureOr<ConsignmentInvoice> Function(ConsignmentInvoiceByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConsignmentInvoiceByIdProvider._internal(
        (ref) => create(ref as ConsignmentInvoiceByIdRef),
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
  AutoDisposeFutureProviderElement<ConsignmentInvoice> createElement() {
    return _ConsignmentInvoiceByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConsignmentInvoiceByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConsignmentInvoiceByIdRef
    on AutoDisposeFutureProviderRef<ConsignmentInvoice> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ConsignmentInvoiceByIdProviderElement
    extends AutoDisposeFutureProviderElement<ConsignmentInvoice>
    with ConsignmentInvoiceByIdRef {
  _ConsignmentInvoiceByIdProviderElement(super.provider);

  @override
  int get id => (origin as ConsignmentInvoiceByIdProvider).id;
}

String _$consignmentContractsByBUHash() =>
    r'98965572ce31da72c115a6f843870e3fa2463d1c';

/// See also [consignmentContractsByBU].
@ProviderFor(consignmentContractsByBU)
const consignmentContractsByBUProvider = ConsignmentContractsByBUFamily();

/// See also [consignmentContractsByBU].
class ConsignmentContractsByBUFamily
    extends Family<AsyncValue<List<ConsignmentContract>>> {
  /// See also [consignmentContractsByBU].
  const ConsignmentContractsByBUFamily();

  /// See also [consignmentContractsByBU].
  ConsignmentContractsByBUProvider call(
    int buId,
  ) {
    return ConsignmentContractsByBUProvider(
      buId,
    );
  }

  @override
  ConsignmentContractsByBUProvider getProviderOverride(
    covariant ConsignmentContractsByBUProvider provider,
  ) {
    return call(
      provider.buId,
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
  String? get name => r'consignmentContractsByBUProvider';
}

/// See also [consignmentContractsByBU].
class ConsignmentContractsByBUProvider
    extends AutoDisposeFutureProvider<List<ConsignmentContract>> {
  /// See also [consignmentContractsByBU].
  ConsignmentContractsByBUProvider(
    int buId,
  ) : this._internal(
          (ref) => consignmentContractsByBU(
            ref as ConsignmentContractsByBURef,
            buId,
          ),
          from: consignmentContractsByBUProvider,
          name: r'consignmentContractsByBUProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$consignmentContractsByBUHash,
          dependencies: ConsignmentContractsByBUFamily._dependencies,
          allTransitiveDependencies:
              ConsignmentContractsByBUFamily._allTransitiveDependencies,
          buId: buId,
        );

  ConsignmentContractsByBUProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.buId,
  }) : super.internal();

  final int buId;

  @override
  Override overrideWith(
    FutureOr<List<ConsignmentContract>> Function(
            ConsignmentContractsByBURef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConsignmentContractsByBUProvider._internal(
        (ref) => create(ref as ConsignmentContractsByBURef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        buId: buId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ConsignmentContract>> createElement() {
    return _ConsignmentContractsByBUProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConsignmentContractsByBUProvider && other.buId == buId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, buId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConsignmentContractsByBURef
    on AutoDisposeFutureProviderRef<List<ConsignmentContract>> {
  /// The parameter `buId` of this provider.
  int get buId;
}

class _ConsignmentContractsByBUProviderElement
    extends AutoDisposeFutureProviderElement<List<ConsignmentContract>>
    with ConsignmentContractsByBURef {
  _ConsignmentContractsByBUProviderElement(super.provider);

  @override
  int get buId => (origin as ConsignmentContractsByBUProvider).buId;
}

String _$paymentReceiveByIdHash() =>
    r'2e1f0b2b608fd511aa5d1923acbe730afb9e3471';

/// See also [paymentReceiveById].
@ProviderFor(paymentReceiveById)
const paymentReceiveByIdProvider = PaymentReceiveByIdFamily();

/// See also [paymentReceiveById].
class PaymentReceiveByIdFamily extends Family<AsyncValue<ConsignmentReceipt>> {
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
    extends AutoDisposeFutureProvider<ConsignmentReceipt> {
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
    FutureOr<ConsignmentReceipt> Function(PaymentReceiveByIdRef provider)
        create,
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
  AutoDisposeFutureProviderElement<ConsignmentReceipt> createElement() {
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

mixin PaymentReceiveByIdRef
    on AutoDisposeFutureProviderRef<ConsignmentReceipt> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PaymentReceiveByIdProviderElement
    extends AutoDisposeFutureProviderElement<ConsignmentReceipt>
    with PaymentReceiveByIdRef {
  _PaymentReceiveByIdProviderElement(super.provider);

  @override
  int get id => (origin as PaymentReceiveByIdProvider).id;
}

String _$paginatedConsignmentNotifierHash() =>
    r'31b8afb33a6161414b20ed39e4bb9ff522fb3fb0';

/// See also [PaginatedConsignmentNotifier].
@ProviderFor(PaginatedConsignmentNotifier)
final paginatedConsignmentNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedConsignmentNotifier, PaginatedData<Consignment>>.internal(
  PaginatedConsignmentNotifier.new,
  name: r'paginatedConsignmentNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedConsignmentNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedConsignmentNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Consignment>>;
String _$paginatedConsignmentApprovalNotifierHash() =>
    r'c803fcff692ee74a0db6ed01610a80e5dfdd963f';

/// See also [PaginatedConsignmentApprovalNotifier].
@ProviderFor(PaginatedConsignmentApprovalNotifier)
final paginatedConsignmentApprovalNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedConsignmentApprovalNotifier,
        PaginatedData<Consignment>>.internal(
  PaginatedConsignmentApprovalNotifier.new,
  name: r'paginatedConsignmentApprovalNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedConsignmentApprovalNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedConsignmentApprovalNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Consignment>>;
String _$paginatedConsignmentContractNotifierHash() =>
    r'256961e6f7ef01887855df65b7cf4969595d41bc';

/// See also [PaginatedConsignmentContractNotifier].
@ProviderFor(PaginatedConsignmentContractNotifier)
final paginatedConsignmentContractNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedConsignmentContractNotifier,
        PaginatedData<ConsignmentContract>>.internal(
  PaginatedConsignmentContractNotifier.new,
  name: r'paginatedConsignmentContractNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedConsignmentContractNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedConsignmentContractNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<ConsignmentContract>>;
String _$paginatedConsignmentInvoiceNotifierHash() =>
    r'a3f9910db6fdf6fee95a357814e3d22ffd8ff6f5';

/// See also [PaginatedConsignmentInvoiceNotifier].
@ProviderFor(PaginatedConsignmentInvoiceNotifier)
final paginatedConsignmentInvoiceNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedConsignmentInvoiceNotifier,
        PaginatedData<ConsignmentInvoice>>.internal(
  PaginatedConsignmentInvoiceNotifier.new,
  name: r'paginatedConsignmentInvoiceNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedConsignmentInvoiceNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedConsignmentInvoiceNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<ConsignmentInvoice>>;
String _$paginatedConsignmentReceiptNotifierHash() =>
    r'e7ef3687930bf3ec43d788bc920661eeba4a4d15';

/// See also [PaginatedConsignmentReceiptNotifier].
@ProviderFor(PaginatedConsignmentReceiptNotifier)
final paginatedConsignmentReceiptNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedConsignmentReceiptNotifier,
        PaginatedData<ConsignmentReceipt>>.internal(
  PaginatedConsignmentReceiptNotifier.new,
  name: r'paginatedConsignmentReceiptNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedConsignmentReceiptNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedConsignmentReceiptNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<ConsignmentReceipt>>;
String _$paginatedConsignmentContractCustomerNotifierHash() =>
    r'90ce8f356c5c9ddd67b099538b3d9ce4b2df4b2a';

/// See also [PaginatedConsignmentContractCustomerNotifier].
@ProviderFor(PaginatedConsignmentContractCustomerNotifier)
final paginatedConsignmentContractCustomerNotifierProvider =
    AutoDisposeAsyncNotifierProvider<
        PaginatedConsignmentContractCustomerNotifier,
        PaginatedData<Customer>>.internal(
  PaginatedConsignmentContractCustomerNotifier.new,
  name: r'paginatedConsignmentContractCustomerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedConsignmentContractCustomerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedConsignmentContractCustomerNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Customer>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
