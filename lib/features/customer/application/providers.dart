import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/core/providers.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/credit_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_category.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer_type.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/division.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/way.dart';
import 'package:mgkaung_dms_mobile/features/customer/infrastructure/repos/customer_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'providers.g.dart';

@Riverpod(keepAlive: true)
FutureOr<List<Division>> divisions(DivisionsRef ref) {
  return ref.guardXFetch(() async => ref.watch(customerRepositoryProvider).getDivisions());
}

@riverpod
// ignore: notifier_extends
class PaginatedCustomerCategoryNotifier extends PaginatedAsyncNotifier<CustomerCategory> {
  @override
  Future<PaginatedData<CustomerCategory>> build() async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('CusCategory'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    if (query.isEmpty) {
      final res = await customerRepo.getCustomerCategorys(
        pagination: (page: 1, query: query),
        cancelToken: cancelToken,
      );
      return PaginatedData<CustomerCategory>(
        items: res,
        page: 1,
        hasMore: res.length >= limit,
      );
    } else {
      await Future.delayed(const Duration(milliseconds: 500));

      if (cancelToken.isCancelled) {
        throw Exception();
      }

      final res = await customerRepo.getCustomerCategorys(
        pagination: (page: 1, query: query),
        cancelToken: cancelToken,
      );

      return PaginatedData<CustomerCategory>(
        items: res,
        page: 1,
        hasMore: res.length >= limit,
      );
    }
  }

  @override
  Future<PaginatedData<CustomerCategory>> fetchNext(int page) async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('CusCategory'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await customerRepo.getCustomerCategorys(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
    );
    return PaginatedData<CustomerCategory>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@Riverpod(keepAlive: true)
FutureOr<List<CustomerType>> customerTypes(CustomerTypesRef ref) {
  return ref.guardXFetch(() async => ref.watch(customerRepositoryProvider).getCustomerTypes());
}

@Riverpod(keepAlive: true)
FutureOr<List<CreditType>> creditTypes(CreditTypesRef ref) {
  return ref.guardXFetch(() async => ref.watch(customerRepositoryProvider).getCreditTypes());
}

@riverpod
FutureOr<Customer> customerById(CustomerByIdRef ref, int id) {
  return ref.guardXFetch(() async => ref.watch(customerRepositoryProvider).getCustomerById(id));
}

@riverpod
// ignore: notifier_extends
class PaginatedCustomerNotifier extends PaginatedAsyncNotifier<Customer> {
  @override
  Future<PaginatedData<Customer>> build() async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('Cus'));
    final filter = ref.watch(filterApplyProvider('Cus'));
    ref.listen(tabIndexProvider, (previous, next) {
      if (next == 1) {
        ref.invalidateSelf();
      }
    });
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await customerRepo.getCustomers(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );
        return PaginatedData<Customer>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await customerRepo.getCustomers(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Customer>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Customer>> fetchNext(int page) async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('Cus'));
    final filter = ref.watch(filterApplyProvider('Cus'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await customerRepo.getCustomers(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<Customer>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
// ignore: notifier_extends
class PaginatedWayNotifier extends PaginatedAsyncNotifier<Way> {
  @override
  Future<PaginatedData<Way>> build() async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('way'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await customerRepo.getWays(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
        );
        return PaginatedData<Way>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await customerRepo.getWays(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
        );

        return PaginatedData<Way>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Way>> fetchNext(int page) async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('way'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await customerRepo.getWays(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
    );
    return PaginatedData<Way>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
// ignore: notifier_extends
class PaginatedWayCustomerNotifier extends PaginatedAsyncNotifier<Customer> {
  @override
  Future<PaginatedData<Customer>> build() async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('WayCus'));
    final filter = ref.watch(filterApplyProvider('WayCus'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await customerRepo.getWayCustomers(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );
        return PaginatedData<Customer>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await customerRepo.getWayCustomers(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Customer>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Customer>> fetchNext(int page) async {
    final customerRepo = ref.watch(customerRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('WayCus'));
    final filter = ref.watch(filterApplyProvider('WayCus'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await customerRepo.getCustomers(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<Customer>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}
