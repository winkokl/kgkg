// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentTermsHash() => r'f7fef7c4f196c89a224202306d99386423c1c7ca';

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

/// See also [paymentTerms].
@ProviderFor(paymentTerms)
const paymentTermsProvider = PaymentTermsFamily();

/// See also [paymentTerms].
class PaymentTermsFamily extends Family<AsyncValue<List<PaymentTerm>>> {
  /// See also [paymentTerms].
  const PaymentTermsFamily();

  /// See also [paymentTerms].
  PaymentTermsProvider call(
    int status,
  ) {
    return PaymentTermsProvider(
      status,
    );
  }

  @override
  PaymentTermsProvider getProviderOverride(
    covariant PaymentTermsProvider provider,
  ) {
    return call(
      provider.status,
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
  String? get name => r'paymentTermsProvider';
}

/// See also [paymentTerms].
class PaymentTermsProvider
    extends AutoDisposeFutureProvider<List<PaymentTerm>> {
  /// See also [paymentTerms].
  PaymentTermsProvider(
    int status,
  ) : this._internal(
          (ref) => paymentTerms(
            ref as PaymentTermsRef,
            status,
          ),
          from: paymentTermsProvider,
          name: r'paymentTermsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paymentTermsHash,
          dependencies: PaymentTermsFamily._dependencies,
          allTransitiveDependencies:
              PaymentTermsFamily._allTransitiveDependencies,
          status: status,
        );

  PaymentTermsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.status,
  }) : super.internal();

  final int status;

  @override
  Override overrideWith(
    FutureOr<List<PaymentTerm>> Function(PaymentTermsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PaymentTermsProvider._internal(
        (ref) => create(ref as PaymentTermsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<PaymentTerm>> createElement() {
    return _PaymentTermsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentTermsProvider && other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PaymentTermsRef on AutoDisposeFutureProviderRef<List<PaymentTerm>> {
  /// The parameter `status` of this provider.
  int get status;
}

class _PaymentTermsProviderElement
    extends AutoDisposeFutureProviderElement<List<PaymentTerm>>
    with PaymentTermsRef {
  _PaymentTermsProviderElement(super.provider);

  @override
  int get status => (origin as PaymentTermsProvider).status;
}

String _$paymentTypesHash() => r'fe02a8016e32168fcdded42f21f479d00572c48d';

/// See also [paymentTypes].
@ProviderFor(paymentTypes)
final paymentTypesProvider = FutureProvider<List<PaymentType>>.internal(
  paymentTypes,
  name: r'paymentTypesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$paymentTypesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PaymentTypesRef = FutureProviderRef<List<PaymentType>>;
String _$warehousesHash() => r'9a95c23a7995ddf2bab554b31846e4e0477dab0b';

/// See also [warehouses].
@ProviderFor(warehouses)
final warehousesProvider = FutureProvider<List<Warehouse>>.internal(
  warehouses,
  name: r'warehousesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$warehousesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WarehousesRef = FutureProviderRef<List<Warehouse>>;
String _$userAssignWarehousesHash() =>
    r'7465775457f1bfd9cc80070b2228df73590f986e';

/// See also [userAssignWarehouses].
@ProviderFor(userAssignWarehouses)
final userAssignWarehousesProvider =
    AutoDisposeFutureProvider<List<Warehouse>>.internal(
  userAssignWarehouses,
  name: r'userAssignWarehousesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userAssignWarehousesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserAssignWarehousesRef = AutoDisposeFutureProviderRef<List<Warehouse>>;
String _$saleTypesHash() => r'ec0677648b5a684dfa1a584c69c15d722b24303c';

/// See also [saleTypes].
@ProviderFor(saleTypes)
final saleTypesProvider = FutureProvider<List<SaleType>>.internal(
  saleTypes,
  name: r'saleTypesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$saleTypesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SaleTypesRef = FutureProviderRef<List<SaleType>>;
String _$distributionRegionsHash() =>
    r'1b6d63a78a275e71d5efc8f13ee01551749f98b6';

/// See also [distributionRegions].
@ProviderFor(distributionRegions)
final distributionRegionsProvider =
    AutoDisposeFutureProvider<List<Region>>.internal(
  distributionRegions,
  name: r'distributionRegionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$distributionRegionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DistributionRegionsRef = AutoDisposeFutureProviderRef<List<Region>>;
String _$returnReasonsHash() => r'af0fb858389f6522f9edd19095aa24a6bc92035f';

/// See also [returnReasons].
@ProviderFor(returnReasons)
final returnReasonsProvider =
    AutoDisposeFutureProvider<List<ReturnReason>>.internal(
  returnReasons,
  name: r'returnReasonsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$returnReasonsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReturnReasonsRef = AutoDisposeFutureProviderRef<List<ReturnReason>>;
String _$paymentMethodsHash() => r'0350f3adb4c18d503bb95e4049c2ffdf6f429969';

/// See also [paymentMethods].
@ProviderFor(paymentMethods)
final paymentMethodsProvider =
    AutoDisposeFutureProvider<List<PaymentMethod>>.internal(
  paymentMethods,
  name: r'paymentMethodsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paymentMethodsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PaymentMethodsRef = AutoDisposeFutureProviderRef<List<PaymentMethod>>;
String _$paginatedRegionNotifierHash() =>
    r'98826a6ec9ef540125193b87dfdea064a1925a21';

/// See also [PaginatedRegionNotifier].
@ProviderFor(PaginatedRegionNotifier)
final paginatedRegionNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedRegionNotifier, PaginatedData<Region>>.internal(
  PaginatedRegionNotifier.new,
  name: r'paginatedRegionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedRegionNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedRegionNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<Region>>;
String _$paginatedBusinessUnitNotifierHash() =>
    r'29964e85e80d678543e31a68b96e743235cba3f0';

/// See also [PaginatedBusinessUnitNotifier].
@ProviderFor(PaginatedBusinessUnitNotifier)
final paginatedBusinessUnitNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedBusinessUnitNotifier, PaginatedData<BusinessUnit>>.internal(
  PaginatedBusinessUnitNotifier.new,
  name: r'paginatedBusinessUnitNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedBusinessUnitNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedBusinessUnitNotifier
    = AutoDisposeAsyncNotifier<PaginatedData<BusinessUnit>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
