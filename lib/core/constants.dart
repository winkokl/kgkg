import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';

typedef AuthorizationToken = ({String accessToken, String refreshToken});
typedef Pagination = ({dynamic query, int page});

typedef SummaryOnSaves = ({
  OnSaved discountOnSaved,
  OnSaved taxOnSaved,
  OnSaved otherChargesOnSaved,
  AmountOrPercentOnSaved amountOrPercentOnSaved,
});

typedef OnSaved = Function(String? v)?;
typedef AmountOrPercentOnSaved = Function(AmountOrPercentStatus discountType, AmountOrPercentStatus taxType)?;

const limit = 10;

final whiteContainerDecoration = BoxDecoration(
  color: bgWhite,
  border: Border.all(color: borderColor),
  borderRadius: const BorderRadius.all(Radius.circular(8)),
);

const buttonStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(Colors.red),
  foregroundColor: MaterialStatePropertyAll(bgWhite),
);

const readOnlyTextStyle = TextStyle(color: Color(0xff002C76), fontWeight: FontWeight.bold);

const String dateFormattedString = "yyyy-MM-dd";

const String customDateFormat = "yyyy-MM-dd";

final GlobalKey menuKey = GlobalKey();

const int monthDifference = 1;

final List<String> saleOrderids = ["1", "2", "3", "4", "5", "6", "7", "8"];

const customerTitleList = [
  "Customers",
  "Business Units",
];

const saleOrderTitleList = [
  "Sale Order",
  "Order Approval",
  "Invoice",
  "Payment Receive",
];

const tripSaleTitleList = [
  "Trip Proposal",
  "Trip Sale Request",
  "Sale Order",
  "Invoice",
  "Payment Receive",
];

const consignmentTitleList = [
  'Consignment Contract',
  'Consignment Approval',
  "Consignment",
  "Invoice",
  "Payment Receive",
];

const marketingpromotionplanTitleList = [
  'Marketing Plan',
  "Marketing Promotion Requsition",
  "Invoice",
  "Payment Receive",
];

const marketingpromotionReturnTitleList = ["Marketing Promotion Return", "Make Payment"];
const saleReturnTitleList = ["Sale Return", "Make Payment"];

const expenseTitleList = [
  "All",
  "Pending",
  "Approved",
  "Reject",
];

final textInputRegex = RegExp(r'^\d+\.?\d*$|^$');

const String commonErrorString = """Error: Unable to process your request!\nPlease ensure your internet connection is active and try again by refreshing the page.""";
