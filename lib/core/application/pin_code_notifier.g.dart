// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_code_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pinCodeNotifierHash() => r'4c36ab56cbaab25faaa0dae5aa0606f88ffc393a';

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

abstract class _$PinCodeNotifier
    extends BuildlessAutoDisposeNotifier<PinCodeState> {
  late final bool hasOperation;

  PinCodeState build(
    bool hasOperation,
  );
}

/// See also [PinCodeNotifier].
@ProviderFor(PinCodeNotifier)
const pinCodeNotifierProvider = PinCodeNotifierFamily();

/// See also [PinCodeNotifier].
class PinCodeNotifierFamily extends Family<PinCodeState> {
  /// See also [PinCodeNotifier].
  const PinCodeNotifierFamily();

  /// See also [PinCodeNotifier].
  PinCodeNotifierProvider call(
    bool hasOperation,
  ) {
    return PinCodeNotifierProvider(
      hasOperation,
    );
  }

  @override
  PinCodeNotifierProvider getProviderOverride(
    covariant PinCodeNotifierProvider provider,
  ) {
    return call(
      provider.hasOperation,
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
  String? get name => r'pinCodeNotifierProvider';
}

/// See also [PinCodeNotifier].
class PinCodeNotifierProvider
    extends AutoDisposeNotifierProviderImpl<PinCodeNotifier, PinCodeState> {
  /// See also [PinCodeNotifier].
  PinCodeNotifierProvider(
    bool hasOperation,
  ) : this._internal(
          () => PinCodeNotifier()..hasOperation = hasOperation,
          from: pinCodeNotifierProvider,
          name: r'pinCodeNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pinCodeNotifierHash,
          dependencies: PinCodeNotifierFamily._dependencies,
          allTransitiveDependencies:
              PinCodeNotifierFamily._allTransitiveDependencies,
          hasOperation: hasOperation,
        );

  PinCodeNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hasOperation,
  }) : super.internal();

  final bool hasOperation;

  @override
  PinCodeState runNotifierBuild(
    covariant PinCodeNotifier notifier,
  ) {
    return notifier.build(
      hasOperation,
    );
  }

  @override
  Override overrideWith(PinCodeNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PinCodeNotifierProvider._internal(
        () => create()..hasOperation = hasOperation,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hasOperation: hasOperation,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PinCodeNotifier, PinCodeState>
      createElement() {
    return _PinCodeNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PinCodeNotifierProvider &&
        other.hasOperation == hasOperation;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hasOperation.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PinCodeNotifierRef on AutoDisposeNotifierProviderRef<PinCodeState> {
  /// The parameter `hasOperation` of this provider.
  bool get hasOperation;
}

class _PinCodeNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PinCodeNotifier, PinCodeState>
    with PinCodeNotifierRef {
  _PinCodeNotifierProviderElement(super.provider);

  @override
  bool get hasOperation => (origin as PinCodeNotifierProvider).hasOperation;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
