// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$saleRanksHash() => r'bc90f7db51ff125e0be60c59b095cbae845bf881';

/// See also [saleRanks].
@ProviderFor(saleRanks)
final saleRanksProvider = AutoDisposeFutureProvider<List<SaleRank>>.internal(
  saleRanks,
  name: r'saleRanksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$saleRanksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SaleRanksRef = AutoDisposeFutureProviderRef<List<SaleRank>>;
String _$homeDataHash() => r'7ee6162e7c9b3b6c6939fe9a509448b613f74449';

/// See also [homeData].
@ProviderFor(homeData)
final homeDataProvider = AutoDisposeFutureProvider<HomeData>.internal(
  homeData,
  name: r'homeDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeDataRef = AutoDisposeFutureProviderRef<HomeData>;
String _$userInfoHash() => r'c6302abcbcc319a1984138043a85644d70bd47c4';

/// See also [UserInfo].
@ProviderFor(UserInfo)
final userInfoProvider =
    AutoDisposeAsyncNotifierProvider<UserInfo, User>.internal(
  UserInfo.new,
  name: r'userInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserInfo = AutoDisposeAsyncNotifier<User>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
