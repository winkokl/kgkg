enum VIPStatus {
  vip(id: 1, name: "VIP"),
  nonVip(id: 0, name: "NON-VIP"),
  none(id: 3, name: "");

  final int id;
  final String name;

  const VIPStatus({required this.id, required this.name});

  @override
  String toString() => name;

  factory VIPStatus.fromId(int id) {
    return values.firstWhere(
      (element) => element.id == id,
      orElse: () => VIPStatus.none,
    );
  }
}
