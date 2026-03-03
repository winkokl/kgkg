// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchQueryNotifierHash() =>
    r'a1e9205ea82eb4ce6a3b331b4a37d3bf8ef368da';

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

abstract class _$SearchQueryNotifier
    extends BuildlessAutoDisposeNotifier<String> {
  late final String? title;

  String build([
    String? title,
  ]);
}

/// See also [SearchQueryNotifier].
@ProviderFor(SearchQueryNotifier)
const searchQueryNotifierProvider = SearchQueryNotifierFamily();

/// See also [SearchQueryNotifier].
class SearchQueryNotifierFamily extends Family<String> {
  /// See also [SearchQueryNotifier].
  const SearchQueryNotifierFamily();

  /// See also [SearchQueryNotifier].
  SearchQueryNotifierProvider call([
    String? title,
  ]) {
    return SearchQueryNotifierProvider(
      title,
    );
  }

  @override
  SearchQueryNotifierProvider getProviderOverride(
    covariant SearchQueryNotifierProvider provider,
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
  String? get name => r'searchQueryNotifierProvider';
}

/// See also [SearchQueryNotifier].
class SearchQueryNotifierProvider
    extends AutoDisposeNotifierProviderImpl<SearchQueryNotifier, String> {
  /// See also [SearchQueryNotifier].
  SearchQueryNotifierProvider([
    String? title,
  ]) : this._internal(
          () => SearchQueryNotifier()..title = title,
          from: searchQueryNotifierProvider,
          name: r'searchQueryNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchQueryNotifierHash,
          dependencies: SearchQueryNotifierFamily._dependencies,
          allTransitiveDependencies:
              SearchQueryNotifierFamily._allTransitiveDependencies,
          title: title,
        );

  SearchQueryNotifierProvider._internal(
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
  String runNotifierBuild(
    covariant SearchQueryNotifier notifier,
  ) {
    return notifier.build(
      title,
    );
  }

  @override
  Override overrideWith(SearchQueryNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchQueryNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<SearchQueryNotifier, String>
      createElement() {
    return _SearchQueryNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchQueryNotifierProvider && other.title == title;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchQueryNotifierRef on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `title` of this provider.
  String? get title;
}

class _SearchQueryNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<SearchQueryNotifier, String>
    with SearchQueryNotifierRef {
  _SearchQueryNotifierProviderElement(super.provider);

  @override
  String? get title => (origin as SearchQueryNotifierProvider).title;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
