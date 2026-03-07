// ignore_for_file: notifier_extends
import 'dart:async';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/home/application/home_notifier.dart';
import 'package:mgkaung_dms_mobile/features/sale_promotion/domain/sale_promotion.dart';
import 'package:mgkaung_dms_mobile/features/secondary_sale/application/sale_promotion_notifier.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_management.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_name.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_user_assign.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/repos/trip_sale_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

/* Trip Sale List
----------------------------------------------------------------
*/
@riverpod
class PaginatedTripSaleNotifier extends PaginatedAsyncNotifier<TripSale> {
  @override
  Future<PaginatedData<TripSale>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('ts'));
    final filter = ref.watch(filterApplyProvider('ts'));
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripSales(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSale>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }
        final res = await tripsaleRepo.getTripSales(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSale>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripSale>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('ts'));
    final filter = ref.watch(filterApplyProvider('ts'));
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsaleRepo.getTripSales(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<TripSale>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedTripSaleRequestNotifier extends PaginatedAsyncNotifier<TripSaleRequest> {
  @override
  Future<PaginatedData<TripSaleRequest>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('treq'));
    final filter = ref.watch(filterApplyProvider('treq'));
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    // Get logged-in user info and their assigned trips
    List<int>? assignedTripIds;
    try {
      final userInfo = await ref.watch(userInfoProvider.future);
      final userName = userInfo.userName;

      // Fetch all trip user assignments (don't use cancelToken to avoid cancellation errors)
      final tripUserAssigns = await tripsaleRepo.getTripUserAssigns(
        pagination: (page: 1, query: userName),
        cancelToken: null,
        allfilter: null,
      );

      // Find the assignment for the current user and extract trip IDs
      final userAssignment = tripUserAssigns.where((assign) => assign.userName == userName).firstOrNull;
      if (userAssignment != null) {
        assignedTripIds = userAssignment.trips.map((trip) => trip.id).toList();
      }
    } on DioException catch (e) {
      // If request is cancelled or fails, show all trip sale requests
      if (e.type == DioExceptionType.cancel) {
        assignedTripIds = null;
      } else {
        rethrow;
      }
    } catch (e) {
      assignedTripIds = null;
    }

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripSaleRequests(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
          assignedTripIds: assignedTripIds,
        );

        return PaginatedData<TripSaleRequest>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsaleRepo.getTripSaleRequests(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
          assignedTripIds: assignedTripIds,
        );

        return PaginatedData<TripSaleRequest>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripSaleRequest>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('treq'));
    final filter = ref.watch(filterApplyProvider('treq'));
    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    // Get logged-in user info and their assigned trips
    List<int>? assignedTripIds;
    try {
      final userInfo = await ref.watch(userInfoProvider.future);
      final userName = userInfo.userName;

      // Fetch all trip user assignments (don't use cancelToken to avoid cancellation errors)
      final tripUserAssigns = await tripsaleRepo.getTripUserAssigns(
        pagination: (page: 1, query: userName),
        cancelToken: null,
        allfilter: null,
      );

      // Find the assignment for the current user and extract trip IDs
      final userAssignment = tripUserAssigns.where((assign) => assign.userName == userName).firstOrNull;
      if (userAssignment != null) {
        assignedTripIds = userAssignment.trips.map((trip) => trip.id).toList();
      }
    } on DioException catch (e) {
      // If request is cancelled or fails, show all trip sale requests
      if (e.type == DioExceptionType.cancel) {
        assignedTripIds = null;
      } else {
        rethrow;
      }
    } catch (e) {
      assignedTripIds = null;
    }

    final res = await tripsaleRepo.getTripSaleRequests(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
      assignedTripIds: assignedTripIds,
    );
    return PaginatedData<TripSaleRequest>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<TripSaleRequest> tripSaleRequestById(TripSaleRequestByIdRef ref, int id) async {
  return await ref.watch(tripSaleRepositoryProvider).getTripSaleRequestById(id);
}

/* Trip Management List
----------------------------------------------------------------
*/
@riverpod
class PaginatedTripManagementNotifier extends PaginatedAsyncNotifier<TripManagement> {
  @override
  Future<PaginatedData<TripManagement>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripManagements(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripManagement>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsaleRepo.getTripManagements(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripManagement>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripManagement>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsaleRepo.getTripManagements(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<TripManagement>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<TripManagement> tripManagementById(TripManagementByIdRef ref, int id) async {
  return await ref.watch(tripSaleRepositoryProvider).getTripManagementById(id);
}

/* Trip Propsoal List
----------------------------------------------------------------
*/
@riverpod
class PaginatedTripProposalNotifier extends PaginatedAsyncNotifier<TripProposal> {
  @override
  Future<PaginatedData<TripProposal>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('tp'));
    final filter = ref.watch(filterApplyProvider('tp'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    // Get logged-in user info and their assigned trips
    List<int>? assignedTripIds;
    try {
      final userInfo = await ref.watch(userInfoProvider.future);
      final userName = userInfo.userName;

      // Fetch all trip user assignments (don't use cancelToken to avoid cancellation errors)
      final tripUserAssigns = await tripsaleRepo.getTripUserAssigns(
        pagination: (page: 1, query: userName),
        cancelToken: null,
        allfilter: null,
      );

      // Find the assignment for the current user and extract trip IDs
      final userAssignment = tripUserAssigns.where((assign) => assign.userName == userName).firstOrNull;
      if (userAssignment != null) {
        assignedTripIds = userAssignment.trips.map((trip) => trip.id).toList();
      }
    } on DioException catch (e) {
      // If request is cancelled or fails, show all trip proposals
      if (e.type == DioExceptionType.cancel) {
        assignedTripIds = null;
      } else {
        rethrow;
      }
    } catch (e) {
      assignedTripIds = null;
    }

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripProposals(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
          assignedTripIds: assignedTripIds,
        );

        return PaginatedData<TripProposal>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsaleRepo.getTripProposals(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
          assignedTripIds: assignedTripIds,
        );

        return PaginatedData<TripProposal>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripProposal>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('tp'));
    final filter = ref.watch(filterApplyProvider('tp'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    // Get logged-in user info and their assigned trips
    List<int>? assignedTripIds;
    try {
      final userInfo = await ref.watch(userInfoProvider.future);
      final userName = userInfo.userName;

      // Fetch all trip user assignments (don't use cancelToken to avoid cancellation errors)
      final tripUserAssigns = await tripsaleRepo.getTripUserAssigns(
        pagination: (page: 1, query: userName),
        cancelToken: null,
        allfilter: null,
      );

      // Find the assignment for the current user and extract trip IDs
      final userAssignment = tripUserAssigns.where((assign) => assign.userName == userName).firstOrNull;
      if (userAssignment != null) {
        assignedTripIds = userAssignment.trips.map((trip) => trip.id).toList();
      }
    } on DioException catch (e) {
      // If request is cancelled or fails, show all trip proposals
      if (e.type == DioExceptionType.cancel) {
        assignedTripIds = null;
      } else {
        rethrow;
      }
    } catch (e) {
      assignedTripIds = null;
    }

    final res = await tripsaleRepo.getTripProposals(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
      assignedTripIds: assignedTripIds,
    );
    return PaginatedData<TripProposal>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<TripProposal> tripProposalById(TripProposalByIdRef ref, int id) async {
  return await ref.watch(tripSaleRepositoryProvider).getTripProposalById(id);
}
/* Trip User Assign List
----------------------------------------------------------------
*/

@riverpod
class PaginatedTripUserAssignNotifier extends PaginatedAsyncNotifier<TripUserAssign> {
  @override
  Future<PaginatedData<TripUserAssign>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripUserAssigns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripUserAssign>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsaleRepo.getTripUserAssigns(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripUserAssign>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripUserAssign>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsaleRepo.getTripUserAssigns(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<TripUserAssign>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<TripSale> tripSaleById(TripSaleByIdRef ref, int id) async {
  final repo = ref.read(tripSaleRepositoryProvider);
  var tripSale = await repo.getTripSaleById(id);

  // If there's a promotion attached, fetch it and attach to the returned TripSale
  if (tripSale.salePromotion.id != -1 && tripSale.salePromotion.id != 0) {
    // await the notifier to fetch the promotion (notifier should update its state)
    await ref.read(salePromotionNotifierProvider.notifier).getByIdfortrip(tripSale.salePromotion.id);

    // read the sale promotion provider state and, if present, copy it into tripSale
    ref.read(salePromotionNotifierProvider).maybeWhen(
          orElse: () {},
          data: (salePromotionOption) {
            salePromotionOption.match(
              () {},
              (salePromotion) {
                tripSale = tripSale.copyWith(salePromotion: salePromotion);
              },
            );
          },
        );
  }

  return tripSale;
}

/* Trip Sale Invoice List
----------------------------------------------------------------
*/
@riverpod
class PaginatedTripSaleInvoiceNotifier extends PaginatedAsyncNotifier<TripSaleInvoice> {
  @override
  Future<PaginatedData<TripSaleInvoice>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider("tsinv"));
    final filter = ref.watch(filterApplyProvider("tsinv"));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripSaleInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleInvoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsaleRepo.getTripSaleInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleInvoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripSaleInvoice>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider("tsinv"));
    final filter = ref.watch(filterApplyProvider("tsinv"));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsaleRepo.getTripSaleInvoices(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<TripSaleInvoice>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<TripSaleInvoice> tripSaleInvoiceById(TripSaleInvoiceByIdRef ref, int id) async {
  var tripsaleInvoice = await ref.watch(tripSaleRepositoryProvider).getTripSaleInvoiceById(id);
  print(tripsaleInvoice.salePromotion.id);
  if (tripsaleInvoice.salePromotionId != -1 && tripsaleInvoice.salePromotionId != 0) {
    // await the notifier to fetch the promotion (notifier should update its state)
    await ref.read(salePromotionNotifierProvider.notifier).getByIdfortrip(tripsaleInvoice.salePromotionId);

    // read the sale promotion provider state and, if present, copy it into tripSale
    ref.read(salePromotionNotifierProvider).maybeWhen(
          orElse: () {},
          data: (salePromotionOption) {
            salePromotionOption.match(
              () {},
              (salePromotion) {
                tripsaleInvoice = tripsaleInvoice.copyWith(salePromotion: salePromotion);
              },
            );
          },
        );
  }
  return tripsaleInvoice;
}

/* Trip Sale Receipt List
----------------------------------------------------------------
*/
@riverpod
class PaginatedTripSaleReceiptNotifier extends PaginatedAsyncNotifier<TripSaleReceipt> {
  @override
  Future<PaginatedData<TripSaleReceipt>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('pr'));
    final filter = ref.watch(filterApplyProvider('pr'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripSaleReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsaleRepo.getTripSaleReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<TripSaleReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripSaleReceipt>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('pr'));
    final filter = ref.watch(filterApplyProvider('pr'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsaleRepo.getTripSaleReceipts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<TripSaleReceipt>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedTripNameNotifier extends PaginatedAsyncNotifier<TripName> {
  @override
  Future<PaginatedData<TripName>> build() async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('tn'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await tripsaleRepo.getTripNames(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
        );

        return PaginatedData<TripName>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await tripsaleRepo.getTripNames(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
        );

        return PaginatedData<TripName>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<TripName>> fetchNext(int page) async {
    final tripsaleRepo = ref.watch(tripSaleRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('tn'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await tripsaleRepo.getTripNames(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
    );
    return PaginatedData<TripName>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<TripSaleReceipt> paymentReceiveById(PaymentReceiveByIdRef ref, int id) async {
  return await ref.watch(tripSaleRepositoryProvider).getPaymentReceiveById(id);
}
