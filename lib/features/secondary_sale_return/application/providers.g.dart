// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$secondarySaleReturnByIdHash() =>
    r'8da81bb9a6902978093d4a4a21c138b62b4dad74';

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

/// See also [secondarySaleReturnById].
@ProviderFor(secondarySaleReturnById)
const secondarySaleReturnByIdProvider = SecondarySaleReturnByIdFamily();

/// See also [secondarySaleReturnById].
class SecondarySaleReturnByIdFamily
    extends Family<AsyncValue<SecondarySaleReturn>> {
  /// See also [secondarySaleReturnById].
  const SecondarySaleReturnByIdFamily();

  /// See also [secondarySaleReturnById].
  SecondarySaleReturnByIdProvider call(
    int id,
  ) {
    return SecondarySaleReturnByIdProvider(
      id,
    );
  }

  @override
  SecondarySaleReturnByIdProvider getProviderOverride(
    covariant SecondarySaleReturnByIdProvider provider,
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
  String? get name => r'secondarySaleReturnByIdProvider';
}

/// See also [secondarySaleReturnById].
class SecondarySaleReturnByIdProvider
    extends AutoDisposeFutureProvider<SecondarySaleReturn> {
  /// See also [secondarySaleReturnById].
  SecondarySaleReturnByIdProvider(
    int id,
  ) : this._internal(
          (ref) => secondarySaleReturnById(
            ref as SecondarySaleReturnByIdRef,
            id,
          ),
          from: secondarySaleReturnByIdProvider,
          name: r'secondarySaleReturnByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$secondarySaleReturnByIdHash,
          dependencies: SecondarySaleReturnByIdFamily._dependencies,
          allTransitiveDependencies:
              SecondarySaleReturnByIdFamily._allTransitiveDependencies,
          id: id,
        );

  SecondarySaleReturnByIdProvider._internal(
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
    FutureOr<SecondarySaleReturn> Function(SecondarySaleReturnByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SecondarySaleReturnByIdProvider._internal(
        (ref) => create(ref as SecondarySaleReturnByIdRef),
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
  AutoDisposeFutureProviderElement<SecondarySaleReturn> createElement() {
    return _SecondarySaleReturnByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SecondarySaleReturnByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SecondarySaleReturnByIdRef
    on AutoDisposeFutureProviderRef<SecondarySaleReturn> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SecondarySaleReturnByIdProviderElement
    extends AutoDisposeFutureProviderElement<SecondarySaleReturn>
    with SecondarySaleReturnByIdRef {
  _SecondarySaleReturnByIdProviderElement(super.provider);

  @override
  int get id => (origin as SecondarySaleReturnByIdProvider).id;
}

String _$paymentReceiveByIdHash() =>
    r'06aa7f5556839522313ac273f826d296654ae3e4';

/// See also [paymentReceiveById].
@ProviderFor(paymentReceiveById)
const paymentReceiveByIdProvider = PaymentReceiveByIdFamily();

/// See also [paymentReceiveById].
class PaymentReceiveByIdFamily
    extends Family<AsyncValue<SecondarySaleReturnReceipt>> {
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
    extends AutoDisposeFutureProvider<SecondarySaleReturnReceipt> {
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
    FutureOr<SecondarySaleReturnReceipt> Function(
            PaymentReceiveByIdRef provider)
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
  AutoDisposeFutureProviderElement<SecondarySaleReturnReceipt> createElement() {
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
    on AutoDisposeFutureProviderRef<SecondarySaleReturnReceipt> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PaymentReceiveByIdProviderElement
    extends AutoDisposeFutureProviderElement<SecondarySaleReturnReceipt>
    with PaymentReceiveByIdRef {
  _PaymentReceiveByIdProviderElement(super.provider);

  @override
  int get id => (origin as PaymentReceiveByIdProvider).id;
}

String _$paginatedSecondarySaleReturnNotifierHash() =>
    r'17bad089676639ee6cf29b524982ad0aa8bbf60c';

/// See also [PaginatedSecondarySaleReturnNotifier].
@ProviderFor(PaginatedSecondarySaleReturnNotifier)
final paginatedSecondarySaleReturnNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedSecondarySaleReturnNotifier,
        PaginatedData<SecondarySaleReturn>>.internal(
  PaginatedSecondarySaleReturnNotifier.new,
  name: r'paginatedSecondarySaleReturnNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedSecondarySaleReturnNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedSecondarySaleReturnNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<SecondarySaleReturn>>;
String _$paginatedSecondarySaleReturnReceiptNotifierHash() =>
    r'ef43710f7616403a386d97792f87db3a5f317c2c';

/// See also [PaginatedSecondarySaleReturnReceiptNotifier].
@ProviderFor(PaginatedSecondarySaleReturnReceiptNotifier)
final paginatedSecondarySaleReturnReceiptNotifierProvider =
    AutoDisposeAsyncNotifierProvider<
        PaginatedSecondarySaleReturnReceiptNotifier,
        PaginatedData<SecondarySaleReturnReceipt>>.internal(
  PaginatedSecondarySaleReturnReceiptNotifier.new,
  name: r'paginatedSecondarySaleReturnReceiptNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedSecondarySaleReturnReceiptNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedSecondarySaleReturnReceiptNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<SecondarySaleReturnReceipt>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
