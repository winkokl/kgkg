enum AppFlavor {
  // production(name: "Production"),
  demo(name: "Demo"),
  staging(name: "Staging"),
  uat(name: "Uat");

  final String name;

  const AppFlavor({required this.name});

  @override
  String toString() => name;
}
