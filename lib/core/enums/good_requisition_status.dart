import 'package:flutter/material.dart';

enum GoodRequisitionStatus {
  open(id: 1, name: "open", fillColor: Color(0xffE3F2FD), textColor: Color(0xff3C7BAA), name2: "Open"),
  invoiced(
    id: 0,
    name: "invoiced",
    name2: "Invoiced",
    fillColor: Color.fromARGB(255, 230, 215, 244),
    textColor: Color.fromARGB(255, 91, 43, 162),
  ),
  paymentReceived(
    id: 3,
    name: "payment received",
    name2: "Payment Receive",
    fillColor: Color(0xffE6FFEF),
    textColor: Color(0xff228B26),
  ),
  none(id: 2, name: "", name2: "", fillColor: Colors.transparent, textColor: Colors.transparent);

  final int id;
  final String name;
  final String name2;
  final Color fillColor;
  final Color textColor;

  const GoodRequisitionStatus({
    required this.id,
    required this.name,
    required this.name2,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory GoodRequisitionStatus.fromName(String name) {
    return values.firstWhere(
      (element) => element.name == name.toLowerCase(),
      orElse: () => GoodRequisitionStatus.none,
    );
  }
}
