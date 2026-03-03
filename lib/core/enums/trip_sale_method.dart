enum TripSaleMethod {
  saleRequest(id: 1, name: "Sale Request"),
  extraSale(id: 2, name: "Proposal");

  final int id;
  final String name;

  const TripSaleMethod({required this.id, required this.name});

  @override
  String toString() => name;

  factory TripSaleMethod.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => TripSaleMethod.saleRequest,
    );
  }
}
