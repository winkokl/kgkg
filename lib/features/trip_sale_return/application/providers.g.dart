// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tripSaleReturnByIdHash() =>
    r'2064b19cccae921cd4bdba122cbfb47bd0f1756d';

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

/// See also [tripSaleReturnById].
@ProviderFor(tripSaleReturnById)
const tripSaleReturnByIdProvider = TripSaleReturnByIdFamily();

/// See also [tripSaleReturnById].
class TripSaleReturnByIdFamily extends Family<AsyncValue<TripSaleReturn>> {
  /// See also [tripSaleReturnById].
  const TripSaleReturnByIdFamily();

  /// See also [tripSaleReturnById].
  TripSaleReturnByIdProvider call(
    int id,
  ) {
    return TripSaleReturnByIdProvider(
      id,
    );
  }

  @override
  TripSaleReturnByIdProvider getProviderOverride(
    covariant TripSaleReturnByIdProvider provider,
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
  String? get name => r'tripSaleReturnByIdProvider';
}

/// See also [tripSaleReturnById].
class TripSaleReturnByIdProvider
    extends AutoDisposeFutureProvider<TripSaleReturn> {
  /// See also [tripSaleReturnById].
  TripSaleReturnByIdProvider(
    int id,
  ) : this._internal(
          (ref) => tripSaleReturnById(
            ref as TripSaleReturnByIdRef,
            id,
          ),
          from: tripSaleReturnByIdProvider,
          name: r'tripSaleReturnByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tripSaleReturnByIdHash,
          dependencies: TripSaleReturnByIdFamily._dependencies,
          allTransitiveDependencies:
              TripSaleReturnByIdFamily._allTransitiveDependencies,
          id: id,
        );

  TripSaleReturnByIdProvider._internal(
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
    FutureOr<TripSaleReturn> Function(TripSaleReturnByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TripSaleReturnByIdProvider._internal(
        (ref) => create(ref as TripSaleReturnByIdRef),
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
  AutoDisposeFutureProviderElement<TripSaleReturn> createElement() {
    return _TripSaleReturnByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripSaleReturnByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TripSaleReturnByIdRef on AutoDisposeFutureProviderRef<TripSaleReturn> {
  /// The parameter `id` of this provider.
  int get id;
}

class _TripSaleReturnByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripSaleReturn>
    with TripSaleReturnByIdRef {
  _TripSaleReturnByIdProviderElement(super.provider);

  @override
  int get id => (origin as TripSaleReturnByIdProvider).id;
}

String _$paymentReceiveByIdHash() =>
    r'0e1a126e8f88f2f82ab55944e74a37ffdfc111a8';

/// See also [paymentReceiveById].
@ProviderFor(paymentReceiveById)
const paymentReceiveByIdProvider = PaymentReceiveByIdFamily();

/// See also [paymentReceiveById].
class PaymentReceiveByIdFamily
    extends Family<AsyncValue<TripSaleReturnReceipt>> {
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
    extends AutoDisposeFutureProvider<TripSaleReturnReceipt> {
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
    FutureOr<TripSaleReturnReceipt> Function(PaymentReceiveByIdRef provider)
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
  AutoDisposeFutureProviderElement<TripSaleReturnReceipt> createElement() {
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
    on AutoDisposeFutureProviderRef<TripSaleReturnReceipt> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PaymentReceiveByIdProviderElement
    extends AutoDisposeFutureProviderElement<TripSaleReturnReceipt>
    with PaymentReceiveByIdRef {
  _PaymentReceiveByIdProviderElement(super.provider);

  @override
  int get id => (origin as PaymentReceiveByIdProvider).id;
}

String _$paginatedTripSaleReturnNotifierHash() =>
    r'e82bc1a44e1b1a958d0a506afe99d67f960a3ffb';

/// See also [PaginatedTripSaleReturnNotifier].
@ProviderFor(PaginatedTripSaleReturnNotifier)
final paginatedTripSaleReturnNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedTripSaleReturnNotifier,
        PaginatedData<TripSaleReturn>>.internal(
  PaginatedTripSaleReturnNotifier.new,
  name: r'paginatedTripSaleReturnNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripSaleReturnNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripSaleReturnNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripSaleReturn>>;
String _$paginatedTripSaleReturnReceiptNotifierHash() =>
    r'52932a668874c49d6dc9809def629e6d98b46d4e';

/// See also [PaginatedTripSaleReturnReceiptNotifier].
@ProviderFor(PaginatedTripSaleReturnReceiptNotifier)
final paginatedTripSaleReturnReceiptNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedTripSaleReturnReceiptNotifier,
        PaginatedData<TripSaleReturnReceipt>>.internal(
  PaginatedTripSaleReturnReceiptNotifier.new,
  name: r'paginatedTripSaleReturnReceiptNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedTripSaleReturnReceiptNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedTripSaleReturnReceiptNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<TripSaleReturnReceipt>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
