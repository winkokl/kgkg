import 'package:flutter/material.dart';

enum ExpenseStatus {
  pending(id: 1, name: "Pending", fillColor: Color(0xffE3F2FD), textColor: Color(0xff3C7BAA)),
  accept(id: 2, name: "Approved", fillColor: Color(0xffE6FFEF), textColor: Color(0xff228B26)),
  reject(id: 3, name: "Reject", fillColor: Color(0xffFFCDD2), textColor: Color(0xffE53935)),
  all(id: 0, name: "All", fillColor: Colors.transparent, textColor: Colors.transparent);

  final int id;
  final String name;
  final Color fillColor;
  final Color textColor;

  const ExpenseStatus({
    required this.id,
    required this.name,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory ExpenseStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => ExpenseStatus.all,
    );
  }
}
