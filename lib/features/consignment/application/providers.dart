// ignore_for_file: notifier_extends
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/extensions/ref_extension.dart';
import 'package:mgkaung_dms_mobile/core/pagination/pagaing_data.dart';
import 'package:mgkaung_dms_mobile/core/pagination/paginated_async_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_approval.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/core/application/all_filter_provider.dart';
import 'package:mgkaung_dms_mobile/features/core/application/search_query_notifier.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_invoice.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_receipt.dart';
import 'package:mgkaung_dms_mobile/features/consignment/infrastructure/repos/consignment_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';

part 'providers.g.dart';

/* Consignment Sale List
----------------------------------------------------------------
*/
@riverpod
class PaginatedConsignmentNotifier extends PaginatedAsyncNotifier<Consignment> {
  @override
  Future<PaginatedData<Consignment>> build() async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });
    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await consignmentRepo.getConsignments(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Consignment>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await consignmentRepo.getConsignments(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Consignment>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Consignment>> fetchNext(int page) async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await consignmentRepo.getConsignments(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<Consignment>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedConsignmentApprovalNotifier extends PaginatedAsyncNotifier<Consignment> {
  @override
  Future<PaginatedData<Consignment>> build() async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await consignmentRepo.getConsignmentApprovals(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Consignment>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await consignmentRepo.getConsignmentApprovals(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<Consignment>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<Consignment>> fetchNext(int page) async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await consignmentRepo.getConsignmentApprovals(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<Consignment>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<ConsignmentApproval> consignmentApprovalById(ConsignmentApprovalByIdRef ref, int id) async {
  return await ref.watch(consignmentRepositoryProvider).getConsignmentApprovalById(id);
}

@riverpod
class PaginatedConsignmentContractNotifier extends PaginatedAsyncNotifier<ConsignmentContract> {
  @override
  Future<PaginatedData<ConsignmentContract>> build() async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await consignmentRepo.getConsignmentContracts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentContract>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await consignmentRepo.getConsignmentContracts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentContract>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<ConsignmentContract>> fetchNext(int page) async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await consignmentRepo.getConsignmentContracts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<ConsignmentContract>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<ConsignmentContract> consignmentContractById(ConsignmentContractByIdRef ref, int id) async {
  return await ref.watch(consignmentRepositoryProvider).getConsignmentContractById(id);
}

@riverpod
FutureOr<Consignment> consignmentById(ConsignmentByIdRef ref, int id) async {
  return await ref.watch(consignmentRepositoryProvider).getConsignmentById(id);
}

/* Consignment Sale Invoice List
----------------------------------------------------------------
*/
@riverpod
class PaginatedConsignmentInvoiceNotifier extends PaginatedAsyncNotifier<ConsignmentInvoice> {
  @override
  Future<PaginatedData<ConsignmentInvoice>> build() async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider("cinv"));
    final filter = ref.watch(filterApplyProvider("cinv"));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await consignmentRepo.getConsignmentInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentInvoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await consignmentRepo.getConsignmentInvoices(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentInvoice>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<ConsignmentInvoice>> fetchNext(int page) async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider("cinv"));
    final filter = ref.watch(filterApplyProvider("cinv"));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await consignmentRepo.getConsignmentInvoices(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<ConsignmentInvoice>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<ConsignmentInvoice> consignmentInvoiceById(ConsignmentInvoiceByIdRef ref, int id) async {
  return await ref.watch(consignmentRepositoryProvider).getConsignmentInvoiceById(id);
}

/* Consignment Sale Receipt List
----------------------------------------------------------------
*/
@riverpod
class PaginatedConsignmentReceiptNotifier extends PaginatedAsyncNotifier<ConsignmentReceipt> {
  @override
  Future<PaginatedData<ConsignmentReceipt>> build() async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await consignmentRepo.getConsignmentReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));

        if (cancelToken.isCancelled) {
          throw Exception();
        }

        final res = await consignmentRepo.getConsignmentReceipts(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
          allfilter: filter,
        );

        return PaginatedData<ConsignmentReceipt>(
          items: res,
          page: 1,
          hasMore: res.length >= limit,
        );
      }
    });
  }

  @override
  Future<PaginatedData<ConsignmentReceipt>> fetchNext(int page) async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider());
    final filter = ref.watch(filterApplyProvider());

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await consignmentRepo.getConsignmentReceipts(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
      allfilter: filter,
    );
    return PaginatedData<ConsignmentReceipt>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
class PaginatedConsignmentContractCustomerNotifier extends PaginatedAsyncNotifier<Customer> {
  @override
  Future<PaginatedData<Customer>> build() async {
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('contractCus'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    return await ref.guardXFetch(() async {
      if (query.isEmpty) {
        final res = await consignmentRepo.getConsignmentContractCustomers(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
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

        final res = await consignmentRepo.getConsignmentContractCustomers(
          pagination: (page: 1, query: query),
          cancelToken: cancelToken,
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
    final consignmentRepo = ref.watch(consignmentRepositoryProvider);
    final query = ref.watch(searchQueryNotifierProvider('contractCus'));

    final cancelToken = CancelToken();

    ref.onDispose(() {
      cancelToken.cancel();
    });

    final res = await consignmentRepo.getConsignmentContractCustomers(
      pagination: (page: page, query: query),
      cancelToken: cancelToken,
    );
    return PaginatedData<Customer>(
      items: res,
      page: page + 1,
      hasMore: res.length >= limit,
    );
  }
}

@riverpod
FutureOr<List<ConsignmentContract>> consignmentContractsByBU(ConsignmentContractsByBURef ref, int buId) async {
  return await ref.guardXFetch(() async {
    return ref.watch(consignmentRepositoryProvider).getConsignmentContractsByBu(buId);
  });
}

@riverpod
FutureOr<ConsignmentReceipt> paymentReceiveById(PaymentReceiveByIdRef ref, int id) async {
  return await ref.watch(consignmentRepositoryProvider).getPaymentReceiveById(id);
}
