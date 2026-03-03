// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$expenseTypesHash() => r'237f7c490e5b8e84957f93822169f2bae53d5fc7';

/// See also [expenseTypes].
@ProviderFor(expenseTypes)
final expenseTypesProvider = FutureProvider<List<ExpenseType>>.internal(
  expenseTypes,
  name: r'expenseTypesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$expenseTypesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ExpenseTypesRef = FutureProviderRef<List<ExpenseType>>;
String _$paginatedExpenseNotifierHash() =>
    r'e30cbe735c3ac68627b4843db8e215d486d54959';

/// See also [PaginatedExpenseNotifier].
@ProviderFor(PaginatedExpenseNotifier)
final paginatedExpenseNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PaginatedExpenseNotifier, PaginatedState>.internal(
  PaginatedExpenseNotifier.new,
  name: r'paginatedExpenseNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedExpenseNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedExpenseNotifier = AutoDisposeAsyncNotifier<PaginatedState>;
String _$expenseStatusNotifierHash() =>
    r'319d9b3bb0c7d94d7960471bb9a1050fc1a8978f';

/// See also [ExpenseStatusNotifier].
@ProviderFor(ExpenseStatusNotifier)
final expenseStatusNotifierProvider =
    AutoDisposeNotifierProvider<ExpenseStatusNotifier, int>.internal(
  ExpenseStatusNotifier.new,
  name: r'expenseStatusNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$expenseStatusNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ExpenseStatusNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
