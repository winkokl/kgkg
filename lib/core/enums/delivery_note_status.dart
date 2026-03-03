import 'package:flutter/material.dart';

enum DeliveryNoteStatus {
  pending(id: 1, name: "Pending", fillColor: Color(0xffE3F2FD), textColor: Color(0xff3C7BAA)),
  delivered(id: 2, name: "Delivered", fillColor: Color(0xffE6FFEF), textColor: Color(0xff228B26)),
  none(id: 0, name: "None", fillColor: Colors.transparent, textColor: Colors.transparent);

  final int id;
  final String name;
  final Color fillColor;
  final Color textColor;

  const DeliveryNoteStatus({
    required this.id,
    required this.name,
    required this.fillColor,
    required this.textColor,
  });

  @override
  String toString() => name;

  factory DeliveryNoteStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => DeliveryNoteStatus.none,
    );
  }
}
