// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allFiltersHash() => r'cd947883de03f979aa43fff6e9e5f9192bcd56df';

/// See also [AllFilters].
@ProviderFor(AllFilters)
final allFiltersProvider =
    AutoDisposeNotifierProvider<AllFilters, Allfilter>.internal(
  AllFilters.new,
  name: r'allFiltersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allFiltersHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$AllFilters = AutoDisposeNotifier<Allfilter>;
String _$filterApplyHash() => r'92419a52ce838fa52d798ca995fa8414a315732c';

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

abstract class _$FilterApply extends BuildlessAutoDisposeNotifier<Allfilter?> {
  late final String? title;

  Allfilter? build([
    String? title,
  ]);
}

/// See also [FilterApply].
@ProviderFor(FilterApply)
const filterApplyProvider = FilterApplyFamily();

/// See also [FilterApply].
class FilterApplyFamily extends Family<Allfilter?> {
  /// See also [FilterApply].
  const FilterApplyFamily();

  /// See also [FilterApply].
  FilterApplyProvider call([
    String? title,
  ]) {
    return FilterApplyProvider(
      title,
    );
  }

  @override
  FilterApplyProvider getProviderOverride(
    covariant FilterApplyProvider provider,
  ) {
    return call(
      provider.title,
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
  String? get name => r'filterApplyProvider';
}

/// See also [FilterApply].
class FilterApplyProvider
    extends AutoDisposeNotifierProviderImpl<FilterApply, Allfilter?> {
  /// See also [FilterApply].
  FilterApplyProvider([
    String? title,
  ]) : this._internal(
          () => FilterApply()..title = title,
          from: filterApplyProvider,
          name: r'filterApplyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filterApplyHash,
          dependencies: FilterApplyFamily._dependencies,
          allTransitiveDependencies:
              FilterApplyFamily._allTransitiveDependencies,
          title: title,
        );

  FilterApplyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
  }) : super.internal();

  final String? title;

  @override
  Allfilter? runNotifierBuild(
    covariant FilterApply notifier,
  ) {
    return notifier.build(
      title,
    );
  }

  @override
  Override overrideWith(FilterApply Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilterApplyProvider._internal(
        () => create()..title = title,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FilterApply, Allfilter?> createElement() {
    return _FilterApplyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilterApplyProvider && other.title == title;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilterApplyRef on AutoDisposeNotifierProviderRef<Allfilter?> {
  /// The parameter `title` of this provider.
  String? get title;
}

class _FilterApplyProviderElement
    extends AutoDisposeNotifierProviderElement<FilterApply, Allfilter?>
    with FilterApplyRef {
  _FilterApplyProviderElement(super.provider);

  @override
  String? get title => (origin as FilterApplyProvider).title;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
