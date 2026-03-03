// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$consignmentReturnByIdHash() =>
    r'18f63f4518fe06eebff8d758d9b19b2f3ae3e512';

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

/// See also [consignmentReturnById].
@ProviderFor(consignmentReturnById)
const consignmentReturnByIdProvider = ConsignmentReturnByIdFamily();

/// See also [consignmentReturnById].
class ConsignmentReturnByIdFamily
    extends Family<AsyncValue<ConsignmentReturn>> {
  /// See also [consignmentReturnById].
  const ConsignmentReturnByIdFamily();

  /// See also [consignmentReturnById].
  ConsignmentReturnByIdProvider call(
    int id,
  ) {
    return ConsignmentReturnByIdProvider(
      id,
    );
  }

  @override
  ConsignmentReturnByIdProvider getProviderOverride(
    covariant ConsignmentReturnByIdProvider provider,
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
  String? get name => r'consignmentReturnByIdProvider';
}

/// See also [consignmentReturnById].
class ConsignmentReturnByIdProvider
    extends AutoDisposeFutureProvider<ConsignmentReturn> {
  /// See also [consignmentReturnById].
  ConsignmentReturnByIdProvider(
    int id,
  ) : this._internal(
          (ref) => consignmentReturnById(
            ref as ConsignmentReturnByIdRef,
            id,
          ),
          from: consignmentReturnByIdProvider,
          name: r'consignmentReturnByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$consignmentReturnByIdHash,
          dependencies: ConsignmentReturnByIdFamily._dependencies,
          allTransitiveDependencies:
              ConsignmentReturnByIdFamily._allTransitiveDependencies,
          id: id,
        );

  ConsignmentReturnByIdProvider._internal(
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
    FutureOr<ConsignmentReturn> Function(ConsignmentReturnByIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConsignmentReturnByIdProvider._internal(
        (ref) => create(ref as ConsignmentReturnByIdRef),
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
  AutoDisposeFutureProviderElement<ConsignmentReturn> createElement() {
    return _ConsignmentReturnByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConsignmentReturnByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConsignmentReturnByIdRef
    on AutoDisposeFutureProviderRef<ConsignmentReturn> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ConsignmentReturnByIdProviderElement
    extends AutoDisposeFutureProviderElement<ConsignmentReturn>
    with ConsignmentReturnByIdRef {
  _ConsignmentReturnByIdProviderElement(super.provider);

  @override
  int get id => (origin as ConsignmentReturnByIdProvider).id;
}

String _$paginatedConsignmentReturnNotifierHash() =>
    r'1eadfdab67d267d1ec6f1538f85d476c83a58fc7';

/// See also [PaginatedConsignmentReturnNotifier].
@ProviderFor(PaginatedConsignmentReturnNotifier)
final paginatedConsignmentReturnNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedConsignmentReturnNotifier,
        PaginatedData<ConsignmentReturn>>.internal(
  PaginatedConsignmentReturnNotifier.new,
  name: r'paginatedConsignmentReturnNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedConsignmentReturnNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedConsignmentReturnNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<ConsignmentReturn>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
