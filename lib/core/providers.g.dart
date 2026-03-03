// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentIndexHash() => r'e977dbb0dee192ed320122362eb168770e58d54b';

/// See also [currentIndex].
@ProviderFor(currentIndex)
final currentIndexProvider = AutoDisposeProvider<int>.internal(
  currentIndex,
  name: r'currentIndexProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentIndexHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef CurrentIndexRef = AutoDisposeProviderRef<int>;
String _$selectedDateHash() => r'0e2871f5fc7c0a33c9f42e17f37b26609717bd94';

/// See also [SelectedDate].
@ProviderFor(SelectedDate)
final selectedDateProvider = NotifierProvider<SelectedDate, String>.internal(
  SelectedDate.new,
  name: r'selectedDateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedDateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedDate = Notifier<String>;
String _$isSessionExpiredNotifierHash() =>
    r'f8b65eef8e6de09fdc95f77cdf78444ebf166056';

/// See also [IsSessionExpiredNotifier].
@ProviderFor(IsSessionExpiredNotifier)
final isSessionExpiredNotifierProvider =
    AutoDisposeNotifierProvider<IsSessionExpiredNotifier, bool>.internal(
  IsSessionExpiredNotifier.new,
  name: r'isSessionExpiredNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isSessionExpiredNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsSessionExpiredNotifier = AutoDisposeNotifier<bool>;
String _$tabIndexHash() => r'88f378188a4a933673459a133057004761aea6b8';

/// See also [TabIndex].
@ProviderFor(TabIndex)
final tabIndexProvider = AutoDisposeNotifierProvider<TabIndex, int>.internal(
  TabIndex.new,
  name: r'tabIndexProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tabIndexHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TabIndex = AutoDisposeNotifier<int>;
String _$isLoginHash() => r'75f642e234c7aa6b9f36dda8d3c0b17871162d47';

/// See also [IsLogin].
@ProviderFor(IsLogin)
final isLoginProvider = NotifierProvider<IsLogin, bool>.internal(
  IsLogin.new,
  name: r'isLoginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isLoginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsLogin = Notifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
