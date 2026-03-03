enum ConsignmentMethod {
  stockRefill(id: 1, name: "Stock Refill"),
  terminationProcess(id: 2, name: "Termination Process");

  final int id;
  final String name;

  const ConsignmentMethod({required this.id, required this.name});

  @override
  String toString() => name;

  factory ConsignmentMethod.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => ConsignmentMethod.stockRefill,
    );
  }
}
