import 'package:flutter/material.dart';

enum OrderStatus {
  pending(
    id: 1,
    name: "Pending",
    name2: "Open",
    fillColor: Color(0xffE3F2FD),
    textColor: Color(0xff3C7BAA),
  ),
  alreadyInvoice(
    id: 2,
    name: "Invoice Created",
    name2: "Invoice Created",
    fillColor: Color.fromARGB(255, 230, 215, 244),
    textColor: Color.fromARGB(255, 91, 43, 162),
  ),
  accept(
    id: 3,
    name: "Approve & Open",
    name2: "Approve & Open",
    fillColor: Color(0xffE6FFEF),
    textColor: Color(0xff228B26),
  ),
  reject(
    id: 4,
    name: "Reject",
    name2: "Reject",
    fillColor: Color(0xffFFCDD2),
    textColor: Color(0xffE53935),
  ),
  all(
    id: 0,
    name: "All",
    name2: "All",
    fillColor: Colors.transparent,
    textColor: Colors.transparent,
  );

  final int id;
  final String name;
  final String name2;
  final Color fillColor;
  final Color textColor;

  const OrderStatus({
    required this.id,
    required this.name,
    required this.name2,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory OrderStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => OrderStatus.all,
    );
  }
}
