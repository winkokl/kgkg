import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/business_unit.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_method.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_term.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/payment_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/region.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/sale_type.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/warehouse.dart';
import 'package:mgkaung_dms_mobile/features/sale/infrastructure/repos/sale_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'providers.g.dart';

@riverpod
FutureOr<List<PaymentTerm>> paymentTerms(PaymentTermsRef ref, int status) async {
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getPaymentTerms(status));
}

@Riverpod(keepAlive: true)
FutureOr<List<PaymentType>> paymentTypes(PaymentTypesRef ref) async {
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getPaymentTypes());
}

@Riverpod(keepAlive: true)
FutureOr<List<Warehouse>> warehouses(WarehousesRef ref) async {
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getWarehouses());
}

@Riverpod(keepAlive: false)
FutureOr<List<Warehouse>> userAssignWarehouses(UserAssignWarehousesRef ref) async {
  final userId = SharedPrefs.getInt('user_id');
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getUserAssignWarehouses(userId!));
}

@Riverpod(keepAlive: true)
FutureOr<List<SaleType>> saleTypes(SaleTypesRef ref) async {
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getSaleTypes());
}

@riverpod
FutureOr<List<Region>> distributionRegions(DistributionRegionsRef ref) async {
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getDistributionRegions());
}

@riverpod
FutureOr<List<ReturnReason>> returnReasons(ReturnReasonsRef ref) async {
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getReturnReasons());
}

@riverpod
FutureOr<List<PaymentMethod>> paymentMethods(PaymentMethodsRef ref) async {
  return ref.guardXFetch(() async => await ref.watch(saleRepositoryProvider).getPaymentMethods());
}

@riverpod
class PaginatedRegionNotifier extends PaginatedAsyncNotifier<Region> {
  @override
  Future<PaginatedData<Region>> build() async {
    final saleRepo = ref.watch(saleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('rn'));
    final filter = ref.watch(filterApplyProvider('rn'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await saleRepo.getRegions(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Region>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await saleRepo.getRegions(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Region>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Region>> fetchNext(int page) async {
    final saleRepo = ref.watch(saleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('rn'));
    final filter = ref.watch(filterApplyProvider('rn'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await saleRepo.getRegions(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<Region>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedBusinessUnitNotifier extends PaginatedAsyncNotifier<BusinessUnit> {
  @override
  Future<PaginatedData<BusinessUnit>> build() async {
    final saleRepo = ref.watch(saleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('bn'));
    final filter = ref.watch(filterApplyProvider('bn'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await saleRepo.getBusinessUnits(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<BusinessUnit>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await saleRepo.getBusinessUnits(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<BusinessUnit>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<BusinessUnit>> fetchNext(int page) async {
    final saleRepo = ref.watch(saleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('bn'));
    final filter = ref.watch(filterApplyProvider('bn'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await saleRepo.getBusinessUnits(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<BusinessUnit>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}
