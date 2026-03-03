// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productNotifierHash() => r'ccdf02176515f1102bad7a80ccf28bd3f16bb9f4';

/// See also [ProductNotifier].
@ProviderFor(ProductNotifier)
final productNotifierProvider =
    AutoDisposeNotifierProvider<ProductNotifier, Product>.internal(
  ProductNotifier.new,
  name: r'productNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductNotifier = AutoDisposeNotifier<Product>;
String _$newProductNotifierHash() =>
    r'fa4f14f57d764aa047798a5473d37ffd31fa3dca';

/// See also [NewProductNotifier].
@ProviderFor(NewProductNotifier)
final newProductNotifierProvider =
    NotifierProvider<NewProductNotifier, Product>.internal(
  NewProductNotifier.new,
  name: r'newProductNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newProductNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NewProductNotifier = Notifier<Product>;
String _$productSearchQueryNotifierHash() =>
    r'1468ea2343748a2b23bc7559c7f16118e41cd92f';

/// See also [ProductSearchQueryNotifier].
@ProviderFor(ProductSearchQueryNotifier)
final productSearchQueryNotifierProvider =
    AutoDisposeNotifierProvider<ProductSearchQueryNotifier, String>.internal(
  ProductSearchQueryNotifier.new,
  name: r'productSearchQueryNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productSearchQueryNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProductSearchQueryNotifier = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
