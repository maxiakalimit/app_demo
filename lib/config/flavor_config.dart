enum Flavor { dev, production }

class FlavorValues {
  FlavorValues({required this.baseUrl});

  final String baseUrl;
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final FlavorValues values;

  FlavorConfig._internal(
    this.flavor,
    this.name,
    this.values,
  );

  static FlavorConfig? _instance;

  FlavorConfig get instance {
    _instance ??= FlavorConfig(
      flavor: flavor,
      name: name,
      values: values,
    );

    //ignore: avoid-non-null-assertion
    return _instance!;
  }

  factory FlavorConfig({
    required Flavor flavor,
    required String name,
    required FlavorValues values,
  }) {
    _instance = FlavorConfig._internal(
      flavor,
      name,
      values,
    );

    //ignore: avoid-non-null-assertion
    return _instance!;
  }

  bool isProduction() => _instance?.flavor == Flavor.production;

  bool isDevelopment() => _instance?.flavor == Flavor.dev;
}
