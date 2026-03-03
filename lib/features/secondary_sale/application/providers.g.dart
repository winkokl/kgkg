// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$secondarySaleByIdHash() => r'b64062d920eee80aa8d41eb5bb99653698fa4803';

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

/// See also [secondarySaleById].
@ProviderFor(secondarySaleById)
const secondarySaleByIdProvider = SecondarySaleByIdFamily();

/// See also [secondarySaleById].
class SecondarySaleByIdFamily extends Family<AsyncValue<SecondarySale>> {
  /// See also [secondarySaleById].
  const SecondarySaleByIdFamily();

  /// See also [secondarySaleById].
  SecondarySaleByIdProvider call(
    int id,
  ) {
    return SecondarySaleByIdProvider(
      id,
    );
  }

  @override
  SecondarySaleByIdProvider getProviderOverride(
    covariant SecondarySaleByIdProvider provider,
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
  String? get name => r'secondarySaleByIdProvider';
}

/// See also [secondarySaleById].
class SecondarySaleByIdProvider
    extends AutoDisposeFutureProvider<SecondarySale> {
  /// See also [secondarySaleById].
  SecondarySaleByIdProvider(
    int id,
  ) : this._internal(
          (ref) => secondarySaleById(
            ref as SecondarySaleByIdRef,
            id,
          ),
          from: secondarySaleByIdProvider,
          name: r'secondarySaleByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$secondarySaleByIdHash,
          dependencies: SecondarySaleByIdFamily._dependencies,
          allTransitiveDependencies:
              SecondarySaleByIdFamily._allTransitiveDependencies,
          id: id,
        );

  SecondarySaleByIdProvider._internal(
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
    FutureOr<SecondarySale> Function(SecondarySaleByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SecondarySaleByIdProvider._internal(
        (ref) => create(ref as SecondarySaleByIdRef),
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
  AutoDisposeFutureProviderElement<SecondarySale> createElement() {
    return _SecondarySaleByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SecondarySaleByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SecondarySaleByIdRef on AutoDisposeFutureProviderRef<SecondarySale> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SecondarySaleByIdProviderElement
    extends AutoDisposeFutureProviderElement<SecondarySale>
    with SecondarySaleByIdRef {
  _SecondarySaleByIdProviderElement(super.provider);

  @override
  int get id => (origin as SecondarySaleByIdProvider).id;
}

String _$secondarySaleInvoiceByIdHash() =>
    r'06d6d04062ff6f18054d0f47c34b59fa9a57ad88';

/// See also [secondarySaleInvoiceById].
@ProviderFor(secondarySaleInvoiceById)
const secondarySaleInvoiceByIdProvider = SecondarySaleInvoiceByIdFamily();

/// See also [secondarySaleInvoiceById].
class SecondarySaleInvoiceByIdFamily
    extends Family<AsyncValue<SecondarySaleInvoice>> {
  /// See also [secondarySaleInvoiceById].
  const SecondarySaleInvoiceByIdFamily();

  /// See also [secondarySaleInvoiceById].
  SecondarySaleInvoiceByIdProvider call(
    int id,
  ) {
    return SecondarySaleInvoiceByIdProvider(
      id,
    );
  }

  @override
  SecondarySaleInvoiceByIdProvider getProviderOverride(
    covariant SecondarySaleInvoiceByIdProvider provider,
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
  String? get name => r'secondarySaleInvoiceByIdProvider';
}

/// See also [secondarySaleInvoiceById].
class SecondarySaleInvoiceByIdProvider
    extends AutoDisposeFutureProvider<SecondarySaleInvoice> {
  /// See also [secondarySaleInvoiceById].
  SecondarySaleInvoiceByIdProvider(
    int id,
  ) : this._internal(
          (ref) => secondarySaleInvoiceById(
            ref as SecondarySaleInvoiceByIdRef,
            id,
          ),
          from: secondarySaleInvoiceByIdProvider,
          name: r'secondarySaleInvoiceByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$secondarySaleInvoiceByIdHash,
          dependencies: SecondarySaleInvoiceByIdFamily._dependencies,
          allTransitiveDependencies:
              SecondarySaleInvoiceByIdFamily._allTransitiveDependencies,
          id: id,
        );

  SecondarySaleInvoiceByIdProvider._internal(
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
    FutureOr<SecondarySaleInvoice> Function(
            SecondarySaleInvoiceByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SecondarySaleInvoiceByIdProvider._internal(
        (ref) => create(ref as SecondarySaleInvoiceByIdRef),
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
  AutoDisposeFutureProviderElement<SecondarySaleInvoice> createElement() {
    return _SecondarySaleInvoiceByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SecondarySaleInvoiceByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SecondarySaleInvoiceByIdRef
    on AutoDisposeFutureProviderRef<SecondarySaleInvoice> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SecondarySaleInvoiceByIdProviderElement
    extends AutoDisposeFutureProviderElement<SecondarySaleInvoice>
    with SecondarySaleInvoiceByIdRef {
  _SecondarySaleInvoiceByIdProviderElement(super.provider);

  @override
  int get id => (origin as SecondarySaleInvoiceByIdProvider).id;
}

String _$paymentReceiveByIdHash() =>
    r'224ab542267cea5f175ff66c518e0eea1ab47c41';

/// See also [paymentReceiveById].
@ProviderFor(paymentReceiveById)
const paymentReceiveByIdProvider = PaymentReceiveByIdFamily();

/// See also [paymentReceiveById].
class PaymentReceiveByIdFamily
    extends Family<AsyncValue<SecondarySaleReceipt>> {
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
    extends AutoDisposeFutureProvider<SecondarySaleReceipt> {
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
    FutureOr<SecondarySaleReceipt> Function(PaymentReceiveByIdRef provider)
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
  AutoDisposeFutureProviderElement<SecondarySaleReceipt> createElement() {
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
    on AutoDisposeFutureProviderRef<SecondarySaleReceipt> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PaymentReceiveByIdProviderElement
    extends AutoDisposeFutureProviderElement<SecondarySaleReceipt>
    with PaymentReceiveByIdRef {
  _PaymentReceiveByIdProviderElement(super.provider);

  @override
  int get id => (origin as PaymentReceiveByIdProvider).id;
}

String _$promotionEligibleHash() => r'9dccbb845498a2d8cdadeeb033ee3c18938c8f39';

/// See also [promotionEligible].
@ProviderFor(promotionEligible)
const promotionEligibleProvider = PromotionEligibleFamily();

/// See also [promotionEligible].
class PromotionEligibleFamily extends Family<AsyncValue<PromotionEligible>> {
  /// See also [promotionEligible].
  const PromotionEligibleFamily();

  /// See also [promotionEligible].
  PromotionEligibleProvider call(
    int invoiceId,
  ) {
    return PromotionEligibleProvider(
      invoiceId,
    );
  }

  @override
  PromotionEligibleProvider getProviderOverride(
    covariant PromotionEligibleProvider provider,
  ) {
    return call(
      provider.invoiceId,
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
  String? get name => r'promotionEligibleProvider';
}

/// See also [promotionEligible].
class PromotionEligibleProvider
    extends AutoDisposeFutureProvider<PromotionEligible> {
  /// See also [promotionEligible].
  PromotionEligibleProvider(
    int invoiceId,
  ) : this._internal(
          (ref) => promotionEligible(
            ref as PromotionEligibleRef,
            invoiceId,
          ),
          from: promotionEligibleProvider,
          name: r'promotionEligibleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$promotionEligibleHash,
          dependencies: PromotionEligibleFamily._dependencies,
          allTransitiveDependencies:
              PromotionEligibleFamily._allTransitiveDependencies,
          invoiceId: invoiceId,
        );

  PromotionEligibleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.invoiceId,
  }) : super.internal();

  final int invoiceId;

  @override
  Override overrideWith(
    FutureOr<PromotionEligible> Function(PromotionEligibleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PromotionEligibleProvider._internal(
        (ref) => create(ref as PromotionEligibleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        invoiceId: invoiceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PromotionEligible> createElement() {
    return _PromotionEligibleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PromotionEligibleProvider && other.invoiceId == invoiceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, invoiceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PromotionEligibleRef on AutoDisposeFutureProviderRef<PromotionEligible> {
  /// The parameter `invoiceId` of this provider.
  int get invoiceId;
}

class _PromotionEligibleProviderElement
    extends AutoDisposeFutureProviderElement<PromotionEligible>
    with PromotionEligibleRef {
  _PromotionEligibleProviderElement(super.provider);

  @override
  int get invoiceId => (origin as PromotionEligibleProvider).invoiceId;
}

String _$paginatedSecondarySaleNotifierHash() =>
    r'd151b83010c00ed60a9c333d3b4f6ebb0da9f095';

/// See also [PaginatedSecondarySaleNotifier].
@ProviderFor(PaginatedSecondarySaleNotifier)
final paginatedSecondarySaleNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedSecondarySaleNotifier, PaginatedData<SecondarySale>>.internal(
  PaginatedSecondarySaleNotifier.new,
  name: r'paginatedSecondarySaleNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedSecondarySaleNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedSecondarySaleNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<SecondarySale>>;
String _$paginatedSecondarySaleOrderApprovalNotifierHash() =>
    r'5cd0bfaefe8a464c1dcdb4277affc4dac48fc1c4';

/// See also [PaginatedSecondarySaleOrderApprovalNotifier].
@ProviderFor(PaginatedSecondarySaleOrderApprovalNotifier)
final paginatedSecondarySaleOrderApprovalNotifierProvider =
    AutoDisposeAsyncNotifierProvider<
        PaginatedSecondarySaleOrderApprovalNotifier,
        PaginatedData<SecondarySale>>.internal(
  PaginatedSecondarySaleOrderApprovalNotifier.new,
  name: r'paginatedSecondarySaleOrderApprovalNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedSecondarySaleOrderApprovalNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedSecondarySaleOrderApprovalNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<SecondarySale>>;
String _$paginatedSecondarySaleInvoiceNotifierHash() =>
    r'd11849b71ef66186639c6960c249804eba185dfd';

/// See also [PaginatedSecondarySaleInvoiceNotifier].
@ProviderFor(PaginatedSecondarySaleInvoiceNotifier)
final paginatedSecondarySaleInvoiceNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedSecondarySaleInvoiceNotifier,
        PaginatedData<SecondarySaleInvoice>>.internal(
  PaginatedSecondarySaleInvoiceNotifier.new,
  name: r'paginatedSecondarySaleInvoiceNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedSecondarySaleInvoiceNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedSecondarySaleInvoiceNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<SecondarySaleInvoice>>;
String _$paginatedSecondarySaleReceiptNotifierHash() =>
    r'e628a467a2cf62df138dc62d0606ed621cf6ff05';

/// See also [PaginatedSecondarySaleReceiptNotifier].
@ProviderFor(PaginatedSecondarySaleReceiptNotifier)
final paginatedSecondarySaleReceiptNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedSecondarySaleReceiptNotifier,
        PaginatedData<SecondarySaleReceipt>>.internal(
  PaginatedSecondarySaleReceiptNotifier.new,
  name: r'paginatedSecondarySaleReceiptNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedSecondarySaleReceiptNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedSecondarySaleReceiptNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<SecondarySaleReceipt>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
