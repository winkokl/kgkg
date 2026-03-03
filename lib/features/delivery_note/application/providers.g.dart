// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deliveryNoteByIdHash() => r'dcf07151f07ef7c49a54bfc426aa7e9a58ec94b2';

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

/// See also [deliveryNoteById].
@ProviderFor(deliveryNoteById)
const deliveryNoteByIdProvider = DeliveryNoteByIdFamily();

/// See also [deliveryNoteById].
class DeliveryNoteByIdFamily extends Family<AsyncValue<DeliveryNote>> {
  /// See also [deliveryNoteById].
  const DeliveryNoteByIdFamily();

  /// See also [deliveryNoteById].
  DeliveryNoteByIdProvider call(
    int id,
  ) {
    return DeliveryNoteByIdProvider(
      id,
    );
  }

  @override
  DeliveryNoteByIdProvider getProviderOverride(
    covariant DeliveryNoteByIdProvider provider,
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
  String? get name => r'deliveryNoteByIdProvider';
}

/// See also [deliveryNoteById].
class DeliveryNoteByIdProvider extends AutoDisposeFutureProvider<DeliveryNote> {
  /// See also [deliveryNoteById].
  DeliveryNoteByIdProvider(
    int id,
  ) : this._internal(
          (ref) => deliveryNoteById(
            ref as DeliveryNoteByIdRef,
            id,
          ),
          from: deliveryNoteByIdProvider,
          name: r'deliveryNoteByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deliveryNoteByIdHash,
          dependencies: DeliveryNoteByIdFamily._dependencies,
          allTransitiveDependencies:
              DeliveryNoteByIdFamily._allTransitiveDependencies,
          id: id,
        );

  DeliveryNoteByIdProvider._internal(
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
    FutureOr<DeliveryNote> Function(DeliveryNoteByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeliveryNoteByIdProvider._internal(
        (ref) => create(ref as DeliveryNoteByIdRef),
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
  AutoDisposeFutureProviderElement<DeliveryNote> createElement() {
    return _DeliveryNoteByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeliveryNoteByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeliveryNoteByIdRef on AutoDisposeFutureProviderRef<DeliveryNote> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DeliveryNoteByIdProviderElement
    extends AutoDisposeFutureProviderElement<DeliveryNote>
    with DeliveryNoteByIdRef {
  _DeliveryNoteByIdProviderElement(super.provider);

  @override
  int get id => (origin as DeliveryNoteByIdProvider).id;
}

String _$paginatedDeliveryNoteNotifierHash() =>
    r'd2b16dfb202e5809e5ed4a332adc6cbfb582389c';

/// See also [PaginatedDeliveryNoteNotifier].
@ProviderFor(PaginatedDeliveryNoteNotifier)
final paginatedDeliveryNoteNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedDeliveryNoteNotifier, PaginatedData<DeliveryNote>>.internal(
  PaginatedDeliveryNoteNotifier.new,
  name: r'paginatedDeliveryNoteNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedDeliveryNoteNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedDeliveryNoteNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<DeliveryNote>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
