import 'package:flutter/material.dart';

enum PromotionEligibleStatus {
  eligible(
    id: 1,
    name: "Eligible",
    textColor: Color(0xff009418),
    fillColor: Color(0xffE6FFEF),
  ),
  ineligible(
    id: 0,
    name: "Ineligible",
    textColor: Color(0xffE35F00),
    fillColor: Color(0xffFFCDD2),
  ),
  none(
    id: 2,
    name: "",
    textColor: Colors.transparent,
    fillColor: Colors.transparent,
  );

  final int id;
  final String name;
  final Color fillColor;
  final Color textColor;
  const PromotionEligibleStatus({
    required this.id,
    required this.name,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory PromotionEligibleStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => PromotionEligibleStatus.none,
    );
  }
}
