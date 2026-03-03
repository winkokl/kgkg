import 'package:flutter/material.dart';

enum ActiveStatus {
  active(id: 1, name: "Active", fillColor: Color(0xffE6FFEF), textColor: Color(0xff228B26)),
  inactive(id: 0, name: "Inactive", fillColor: Color(0xffFFCDD2), textColor: Color(0xffE53935)),
  none(id: 2, name: "", fillColor: Colors.transparent, textColor: Colors.transparent);

  final int id;
  final String name;
  final Color fillColor;
  final Color textColor;

  const ActiveStatus({
    required this.id,
    required this.name,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory ActiveStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => ActiveStatus.none,
    );
  }
}
