import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/enums/payment_status.dart';
import 'package:mgkaung_dms_mobile/features/consignment/domain/consignment_contract.dart';
import 'package:mgkaung_dms_mobile/features/customer/domain/customer.dart';
import 'package:mgkaung_dms_mobile/features/product/infrastructure/dtos/product_dto.dart';
import 'package:mgkaung_dms_mobile/features/consignment_return/domain/consignment_return.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mgkaung_dms_mobile/features/sale/domain/return_reason.dart';

part 'consignment_return_dto.freezed.dart';
part 'consignment_return_dto.g.dart';

@freezed
class ConsignmentReturnDTO with _$ConsignmentReturnDTO {
  const ConsignmentReturnDTO._();
  const factory ConsignmentReturnDTO({
    @JsonKey(name: 'consignment_return_id', includeToJson: false) @Default(-1) int id,
    @JsonKey(name: 'consignment_contract_id') @Default(-1) int consignmentContractId,
    @JsonKey(name: "customer_id", includeToJson: false) @Default(-1) int customerId,
    @JsonKey(name: "customer_first_name", includeToJson: false) @Default("") String customerFirstName,
    @JsonKey(name: 'return_date') @Default("") String returnDate,
    @JsonKey(name: 'consignment_return_code', includeToJson: false) @Default("") String code,
    @JsonKey(name: 'consignment_contract_code', includeToJson: false) @Default("") String contractCode,
    @JsonKey(name: 'products') @Default([]) List<ProductDTO> productDtos,
    @Default("") String remark,
    @Default("") String description,
    @JsonKey(name: 'other_charges') @Default(0) dynamic otherChargesAmount,
    @JsonKey(name: 'sub_total') @Default(0) double subtotal,
    @JsonKey(name: "grand_total_amount") @Default(0) double grandtotal,
    @JsonKey(name: 'return_deduct_method') @Default("") String returnDeductMethod,
    @JsonKey(name: 'return_deduct_amount') @Default(0) double returnDeductAmount,
    @JsonKey(name: 'total_return_amount') @Default(0) double totalReturnAmount,
    @JsonKey(name: 'balance', includeToJson: false) @Default(0) double balance,
    @JsonKey(name: 'status', includeToJson: false) @Default(-1) int paymentStatus,
    @JsonKey(name: 'return_reason_id') @Default(-1) int returnReasonId,
    @JsonKey(name: 'reason_name', includeToJson: false) @Default("") String returnReasonName,
  }) = _ConsignmentReturnDTO;

  factory ConsignmentReturnDTO.fromJson(Map<String, dynamic> json) => _$ConsignmentReturnDTOFromJson(json);

  factory ConsignmentReturnDTO.fromDomain(ConsignmentReturn consignmentReturn) {
    return ConsignmentReturnDTO(
      id: consignmentReturn.id,
      consignmentContractId: consignmentReturn.consignmentContract.id,
      returnDate: consignmentReturn.returnDate,
      code: consignmentReturn.code,
      productDtos: consignmentReturn.products.map((e) => ProductDTO.fromDomain(e)).toList(),
      description: consignmentReturn.description,
      balance: consignmentReturn.totalReturnAmount,
      grandtotal: consignmentReturn.grandtotal,
      otherChargesAmount: consignmentReturn.otherChargesAmount,
      subtotal: consignmentReturn.subtotal,
      returnDeductMethod: consignmentReturn.returnDeductType.name,
      returnDeductAmount: consignmentReturn.returnDeductAmount,
      totalReturnAmount: consignmentReturn.totalReturnAmount,
      remark: consignmentReturn.remark,
      returnReasonId: consignmentReturn.returnReason.id,
    );
  }

  ConsignmentReturn toDomain() {
    return ConsignmentReturn(
      id: id,
      returnDate: returnDate,
      code: code,
      balance: balance,
      customer: Customer(id: customerId, name: customerFirstName),
      otherChargesAmount: otherChargesAmount.runtimeType == String ? double.parse(otherChargesAmount) : otherChargesAmount,
      returnDeductAmount: returnDeductAmount,
      totalReturnAmount: totalReturnAmount,
      returnDeductType: AmountOrPercentStatus.fromName(returnDeductMethod),
      consignmentContract: ConsignmentContract(id: consignmentContractId, code: contractCode),
      products: productDtos.map((e) => e.toDomain()).toList(),
      paymentStatus: PaymentStatus.fromId(paymentStatus),
      remark: remark,
      description: description,
      subtotal: subtotal,
      grandtotal: grandtotal,
      returnReason: ReturnReason(id: returnReasonId, name: returnReasonName),
    );
  }
}

// "product_id": 16,
//           "unit_id": 1,
//           "sales_price": 5000,
//           "qty": 3,
//           "amount" : 5000,
//           "total_amount": 20000,
//           "return_qty" : 1,
//           "return_amount" : 10000
