import 'package:flutter/material.dart';

enum TripSaleRequestStatus {
  open(
    id: 1,
    name: "Open",
    fillColor: Color(0xffE3F2FD),
    textColor: Color(0xff3C7BAA),
  ),
  partialIssue(
    id: 2,
    name: "Partial Issue",
    fillColor: Color(0xffFFCDD2),
    textColor: Color(0xffE35F00),
  ),
  issue(
    id: 3,
    name: "Issue",
    fillColor: Color(0xffFFCDD2),
    textColor: Color(0xffE53935),
  ),
  all(
    id: 0,
    name: "All",
    fillColor: Colors.transparent,
    textColor: Colors.transparent,
  );

  final int id;
  final String name;
  final Color fillColor;
  final Color textColor;

  const TripSaleRequestStatus({
    required this.id,
    required this.name,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory TripSaleRequestStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => TripSaleRequestStatus.all,
    );
  }
}
