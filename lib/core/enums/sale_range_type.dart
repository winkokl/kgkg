enum SaleRangeType {
  mmk(id: 1, name: "MMK"),
  unit(id: 2, name: "Unit");

  final int id;
  final String name;

  const SaleRangeType({required this.id, required this.name});

  @override
  String toString() => name;

  factory SaleRangeType.fromName(String name) {
    return values.firstWhere(
      (element) => element.name == name,
      orElse: () => SaleRangeType.mmk,
    );
  }
}
