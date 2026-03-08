import 'dart:io';

import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/trip_sale_method.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/features/core/domain/all_filter.dart';
import 'package:mgkaung_dms_mobile/features/core/dtos/all_filter_dto.dart';
import 'package:mgkaung_dms_mobile/features/product/domain/product.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_management.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_name.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_invoice.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_receipt.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_sale_request.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_user_assign.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/data_sources/trip_sale_remote_data_source.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_invoice_dto.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/infrastructure/dtos/trip_sale_receipt_dto.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'trip_sale_repository.g.dart';

@riverpod
TripSaleRepository tripSaleRepository(TripSaleRepositoryRef ref) => TripSaleRepository(ref.watch(tripSaleRemoteDataSourceProvider));

class TripSaleRepository {
  final TripSaleRemoteDataSource remoteDataSource;

  TripSaleRepository(this.remoteDataSource);

  Future<List<TripProposal>> getTripProposals({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
    List<int>? assignedTripIds,
  }) async {
    final data = await remoteDataSource.getTripProposals(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );

    // Filter by assigned trips if provided
    final allProposals = data.map((e) => e.toDomain()).toList();

    // If assignedTripIds is null or empty, show no data (user has no trip assignments)
    if (assignedTripIds == null || assignedTripIds.isEmpty) {
      return [];
    }

    // Filter and return only proposals for assigned trips
    return allProposals.where((proposal) => assignedTripIds.contains(proposal.id)).toList();
  }

  Future<TripProposal> getTripProposalById(int id) async {
    final data = await remoteDataSource.getTripProposalById(id);
    return data.toDomain();
  }

  Future<List<TripName>> getTripNames({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getTripNames(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<List<TripSaleRequest>> getTripSaleRequests({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
    List<int>? assignedTripIds,
  }) async {
    final data = await remoteDataSource.getTripSaleRequests(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );

    // Filter by assigned trips if provided
    final allRequests = data.map((e) => e.toDomain()).toList();

    // If assignedTripIds is null or empty, show no data (user has no trip assignments)
    if (assignedTripIds == null || assignedTripIds.isEmpty) {
      return [];
    }

    // Filter and return only requests for assigned trips
    return allRequests.where((request) => assignedTripIds.contains(request.tripId)).toList();
  }

  Future<TripSaleRequest> getTripSaleRequestById(int id) async {
    final data = await remoteDataSource.getTripSaleRequestById(id);
    return data.toDomain();
  }

  Future<List<TripManagement>> getTripManagements({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getTripManagements(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<TripManagement> getTripManagementById(int id) async {
    final data = await remoteDataSource.getTripManagementById(id);
    return data.toDomain();
  }

  Future<CustomResponse> deleteTripSaleRequest(int id, String reason) async => await remoteDataSource.deleteTripSaleRequest(id, reason);

  Future<CustomResponse> deleteTripManagement(int id, String reason) async => await remoteDataSource.deleteTripManagement(id, reason);

  Future<CustomResponse> deleteTripUserAssign(int id, String reason) async => await remoteDataSource.deleteTripUserAssign(id, reason);

  Future<List<TripUserAssign>> getTripUserAssigns({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
  }) async {
    final data = await remoteDataSource.getTripUserAssigns(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );
    return data.map((e) => e.toDomain()).toList();
  }

  Future<List<TripSale>> getTripSales({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
    List<int>? assignedTripIds,
  }) async {
    final data = await remoteDataSource.getTripSales(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );

    final allSales = data.map((e) => e.toDomain()).toList();

    // If user has no trip assignments, show no data
    if (assignedTripIds == null || assignedTripIds.isEmpty) {
      return [];
    }

    // Get all trip sale requests for assigned trips to get their IDs
    final tripSaleRequests = await getTripSaleRequests(
      pagination: pagination,
      cancelToken: cancelToken,
      allfilter: null,
      assignedTripIds: assignedTripIds,
    );

    // Get all trip proposals for assigned trips to get their IDs
    final tripProposals = await getTripProposals(
      pagination: pagination,
      cancelToken: cancelToken,
      allfilter: null,
      assignedTripIds: assignedTripIds,
    );

    // Extract IDs
    final tripSaleRequestIds = tripSaleRequests.map((req) => req.id).toSet();
    final tripProposalIds = tripProposals.map((prop) => prop.id).toSet();

    // Filter trip sales
    return allSales.where((sale) {
      // For sale request type, check if tripSaleRequest.id is in our allowed list
      if (sale.tripSaleMethod == TripSaleMethod.saleRequest) {
        return tripSaleRequestIds.contains(sale.tripSaleRequest.id);
      }
      // For extra sale type, check if tripProposal.id is in our allowed list
      else if (sale.tripSaleMethod == TripSaleMethod.extraSale) {
        return tripProposalIds.contains(sale.tripProposal.id);
      }
      return false;
    }).toList();
  }

  Future<TripSale> getTripSaleById(int id) async {
    final data = await remoteDataSource.getTripSaleById(id);
    return data.toDomain();
  }

  Future<CustomResponse> createTripSale(TripSale sale) async {
    final res = await remoteDataSource.createTripSale(TripSaleDTO.fromDomain(sale));
    print(res);
    return res.copyWith(data: TripSaleDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateTripSale(TripSale sale) async {
    final res = await remoteDataSource.updateTripSale(TripSaleDTO.fromDomain(sale));
    return res.copyWith(data: TripSaleDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteTripSale(int id, String reason) async => await remoteDataSource.deleteTripSale(id, reason);

  Future<List<TripSaleInvoice>> getTripSaleInvoices({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
    List<int>? assignedTripIds,
  }) async {
    final data = await remoteDataSource.getTripSaleInvoices(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );

    final allInvoices = data.map((e) => e.toDomain()).toList();

    // If user has no trip assignments, show no data
    if (assignedTripIds == null || assignedTripIds.isEmpty) {
      return [];
    }

    // Get trip sale requests and proposals for assigned trips
    final tripSaleRequests = await getTripSaleRequests(
      pagination: (page: 1, query: ''),
      cancelToken: null,
      allfilter: null,
      assignedTripIds: assignedTripIds,
    );

    final tripProposals = await getTripProposals(
      pagination: (page: 1, query: ''),
      cancelToken: null,
      allfilter: null,
      assignedTripIds: assignedTripIds,
    );

    // Get ALL trip sales (not paginated) and filter by assigned trip requests/proposals
    final allTripSalesData = await remoteDataSource.getTripSales(
      pagination: (page: 1, query: ''),
      cancelToken: null,
      allFilterDTO: null,
    );

    final allTripSales = allTripSalesData.map((e) => e.toDomain()).toList();

    final tripSaleRequestIds = tripSaleRequests.map((req) => req.id).toSet();
    final tripProposalIds = tripProposals.map((prop) => prop.id).toSet();

    final filteredTripSales = allTripSales.where((sale) {
      if (sale.tripSaleMethod == TripSaleMethod.saleRequest) {
        return tripSaleRequestIds.contains(sale.tripSaleRequest.id);
      } else if (sale.tripSaleMethod == TripSaleMethod.extraSale) {
        return tripProposalIds.contains(sale.tripProposal.id);
      }
      return false;
    }).toList();

    // Extract trip sale IDs
    final tripSaleIds = filteredTripSales.map((sale) => sale.id).toSet();

    // Filter invoices by matching saleOrderId with trip sale IDs
    return allInvoices.where((invoice) => tripSaleIds.contains(invoice.saleOrderId)).toList();
  }

  Future<TripSaleInvoice> getTripSaleInvoiceById(int id) async {
    final data = await remoteDataSource.getTripSaleInvoiceById(id);
    return data.toDomain();
  }

  Future<CustomResponse> covertToInvoice(TripSaleInvoice saleInvoice) async {
    final res = await remoteDataSource.covertToInvoice(TripSaleInvoiceDTO.fromDomain(saleInvoice));
    return res.copyWith(data: TripSaleInvoiceDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> updateInvoice(TripSaleInvoice saleInvoice) async {
    final res = await remoteDataSource.updateInvoice(TripSaleInvoiceDTO.fromDomain(saleInvoice));
    return res.copyWith(data: TripSaleInvoiceDTO.fromJson(res.data).toDomain());
  }

  Future<CustomResponse> deleteInvoice(int id, String reason) async => await remoteDataSource.deleteInvoice(id, reason);

  Future<List<TripSaleReceipt>> getTripSaleReceipts({
    required Pagination pagination,
    CancelToken? cancelToken,
    Allfilter? allfilter,
    List<int>? assignedTripIds,
  }) async {
    final data = await remoteDataSource.getTripSaleReceipts(
      pagination: pagination,
      cancelToken: cancelToken,
      allFilterDTO: allfilter == null ? null : AllFilterDTO.fromDomain(allfilter),
    );

    final allReceipts = data.map((e) => e.toDomain()).toList();

    // If user has no trip assignments, show no data
    if (assignedTripIds == null || assignedTripIds.isEmpty) {
      return [];
    }

    // Get trip sale requests and proposals for assigned trips
    final tripSaleRequests = await getTripSaleRequests(
      pagination: (page: 1, query: ''),
      cancelToken: null,
      allfilter: null,
      assignedTripIds: assignedTripIds,
    );

    final tripProposals = await getTripProposals(
      pagination: (page: 1, query: ''),
      cancelToken: null,
      allfilter: null,
      assignedTripIds: assignedTripIds,
    );

    // Get ALL trip sales and filter
    final allTripSalesData = await remoteDataSource.getTripSales(
      pagination: (page: 1, query: ''),
      cancelToken: null,
      allFilterDTO: null,
    );

    final allTripSales = allTripSalesData.map((e) => e.toDomain()).toList();

    final tripSaleRequestIds = tripSaleRequests.map((req) => req.id).toSet();
    final tripProposalIds = tripProposals.map((prop) => prop.id).toSet();

    final filteredTripSales = allTripSales.where((sale) {
      if (sale.tripSaleMethod == TripSaleMethod.saleRequest) {
        return tripSaleRequestIds.contains(sale.tripSaleRequest.id);
      } else if (sale.tripSaleMethod == TripSaleMethod.extraSale) {
        return tripProposalIds.contains(sale.tripProposal.id);
      }
      return false;
    }).toList();

    final tripSaleIds = filteredTripSales.map((sale) => sale.id).toSet();

    // Get ALL invoices and filter by trip sale IDs
    final allInvoicesData = await remoteDataSource.getTripSaleInvoices(
      pagination: (page: 1, query: ''),
      cancelToken: null,
      allFilterDTO: null,
    );

    final allInvoices = allInvoicesData.map((e) => e.toDomain()).toList();
    final filteredInvoices = allInvoices.where((invoice) => tripSaleIds.contains(invoice.saleOrderId)).toList();

    // Extract invoice IDs
    final invoiceIds = filteredInvoices.map((invoice) => invoice.id).toSet();

    // Filter receipts by matching tripSaleInvoiceId with invoice IDs
    return allReceipts.where((receipt) => invoiceIds.contains(receipt.tripSaleInvoiceId)).toList();
  }

  Future<CustomResponse> makePaymentReceive(File? attachment, File signFile, TripSaleReceipt tripSaleReceipt) async {
    final res = await remoteDataSource.makePaymentReceive(attachment, signFile, TripSaleReceiptDTO.fromDomain(tripSaleReceipt));
    return res.copyWith(data: TripSaleReceiptDTO.fromJson(res.data).toDomain());
  }

  Future<TripSaleReceipt> getPaymentReceiveById(int id) async {
    final data = await remoteDataSource.getPaymentReceiveById(id);
    return data.toDomain();
  }

  Future<CustomResponse> deletePayment(int id, String reason) async => await remoteDataSource.deletePayment(id, reason);

  Future<List<Product>> getTripProposalProducts(int tripId, int warehouseId) async {
    final data = await remoteDataSource.getTripProposalProduct(tripId, warehouseId);
    return data.map((e) => e.toDomain()).toList();
  }
}
