import 'package:flutter/material.dart';

enum PaymentStatus {
  open(
    id: 1,
    name: "Open",
    textColor: Color(0xffCE0808),
    fillColor: Color(0xffFFCDD2),
  ),
  partial(
    id: 2,
    name: "Partial Paid",
    textColor: Color(0xffE35F00),
    fillColor: Color(0xffFFCDD2),
  ),
  paid(
    id: 3,
    name: "Paid",
    textColor: Color(0xff009418),
    fillColor: Color(0xffE6FFEF),
  ),
  none(
    id: 4,
    name: "",
    textColor: Colors.transparent,
    fillColor: Colors.transparent,
  );

  final int id;
  final String name;
  final Color fillColor;
  final Color textColor;
  const PaymentStatus({
    required this.id,
    required this.name,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory PaymentStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => PaymentStatus.none,
    );
  }

  factory PaymentStatus.fromString(String name) {
    return values.firstWhere(
      (element) => element.name.toLowerCase() == name.toLowerCase(),
      orElse: () => PaymentStatus.none,
    );
  }
}
