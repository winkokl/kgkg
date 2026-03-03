// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$divisionsHash() => r'1a61ad251cf425001207599cd4d4ebdf6d95d802';

/// See also [divisions].
@ProviderFor(divisions)
final divisionsProvider = FutureProvider<List<Division>>.internal(
  divisions,
  name: r'divisionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$divisionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DivisionsRef = FutureProviderRef<List<Division>>;
String _$customerTypesHash() => r'535deb3944c1814a4c31d95e752baac938b1078c';

/// See also [customerTypes].
@ProviderFor(customerTypes)
final customerTypesProvider = FutureProvider<List<CustomerType>>.internal(
  customerTypes,
  name: r'customerTypesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerTypesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CustomerTypesRef = FutureProviderRef<List<CustomerType>>;
String _$creditTypesHash() => r'9efce754401741b11037271605836b07ecd1108d';

/// See also [creditTypes].
@ProviderFor(creditTypes)
final creditTypesProvider = FutureProvider<List<CreditType>>.internal(
  creditTypes,
  name: r'creditTypesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$creditTypesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CreditTypesRef = FutureProviderRef<List<CreditType>>;
String _$customerByIdHash() => r'32a32ab7083e140f790ccadee8ad08728d887e1a';

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

/// See also [customerById].
@ProviderFor(customerById)
const customerByIdProvider = CustomerByIdFamily();

/// See also [customerById].
class CustomerByIdFamily extends Family<AsyncValue<Customer>> {
  /// See also [customerById].
  const CustomerByIdFamily();

  /// See also [customerById].
  CustomerByIdProvider call(
    int id,
  ) {
    return CustomerByIdProvider(
      id,
    );
  }

  @override
  CustomerByIdProvider getProviderOverride(
    covariant CustomerByIdProvider provider,
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
  String? get name => r'customerByIdProvider';
}

/// See also [customerById].
class CustomerByIdProvider extends AutoDisposeFutureProvider<Customer> {
  /// See also [customerById].
  CustomerByIdProvider(
    int id,
  ) : this._internal(
          (ref) => customerById(
            ref as CustomerByIdRef,
            id,
          ),
          from: customerByIdProvider,
          name: r'customerByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerByIdHash,
          dependencies: CustomerByIdFamily._dependencies,
          allTransitiveDependencies:
              CustomerByIdFamily._allTransitiveDependencies,
          id: id,
        );

  CustomerByIdProvider._internal(
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
    FutureOr<Customer> Function(CustomerByIdRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerByIdProvider._internal(
        (ref) => create(ref as CustomerByIdRef),
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
  AutoDisposeFutureProviderElement<Customer> createElement() {
    return _CustomerByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CustomerByIdRef on AutoDisposeFutureProviderRef<Customer> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CustomerByIdProviderElement
    extends AutoDisposeFutureProviderElement<Customer> with CustomerByIdRef {
  _CustomerByIdProviderElement(super.provider);

  @override
  int get id => (origin as CustomerByIdProvider).id;
}

String _$paginatedCustomerCategoryNotifierHash() =>
    r'a7e763e802fa85db6c4b735daecf0941c719aac9';

/// See also [PaginatedCustomerCategoryNotifier].
@ProviderFor(PaginatedCustomerCategoryNotifier)
final paginatedCustomerCategoryNotifierProvider =
    AutoDisposeAsyncNotifierProvider<PaginatedCustomerCategoryNotifier,
        PaginatedData<CustomerCategory>>.internal(
  PaginatedCustomerCategoryNotifier.new,
  name: r'paginatedCustomerCategoryNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedCustomerCategoryNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedCustomerCategoryNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<CustomerCategory>>;
String _$paginatedCustomerNotifierHash() =>
    r'e6bcd5abde832e23e8635a7316de1d4112bbab7a';

/// See also [PaginatedCustomerNotifier].
@ProviderFor(PaginatedCustomerNotifier)
final paginatedCustomerNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedCustomerNotifier, PaginatedData<Customer>>.internal(
  PaginatedCustomerNotifier.new,
  name: r'paginatedCustomerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedCustomerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedCustomerNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Customer>>;
String _$paginatedWayNotifierHash() =>
    r'4dcd69f46b23f7b7b7ec0422e34df8a4feb1ce61';

/// See also [PaginatedWayNotifier].
@ProviderFor(PaginatedWayNotifier)
final paginatedWayNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedWayNotifier, PaginatedData<Way>>.internal(
  PaginatedWayNotifier.new,
  name: r'paginatedWayNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedWayNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedWayNotifier = AutoDisposeAsyncNotifier<PaginatedData<Way>>;
String _$paginatedWayCustomerNotifierHash() =>
    r'70df1fe0a4de9328fb768aaf1088bd0def1871c7';

/// See also [PaginatedWayCustomerNotifier].
@ProviderFor(PaginatedWayCustomerNotifier)
final paginatedWayCustomerNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedWayCustomerNotifier, PaginatedData<Customer>>.internal(
  PaginatedWayCustomerNotifier.new,
  name: r'paginatedWayCustomerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedWayCustomerNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedWayCustomerNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Customer>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
