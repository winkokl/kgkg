enum AmountOrPercentStatus {
  amount(id: 1, name: "AMT"),
  percent(id: 2, name: "%");

  final int id;
  final String name;

  const AmountOrPercentStatus({required this.id, required this.name});

  @override
  String toString() => name;

  factory AmountOrPercentStatus.fromName(String name) {
    return values.firstWhere(
      (element) => element.name == name,
      orElse: () => AmountOrPercentStatus.amount,
    );
  }

  AmountOrPercentStatus get toggle {
    switch (this) {
      case AmountOrPercentStatus.amount:
        return AmountOrPercentStatus.percent;
      case AmountOrPercentStatus.percent:
        return AmountOrPercentStatus.amount;
    }
  }
}
