enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'TMDB(dev)';
      case Flavor.prod:
        return 'TMDB';
      default:
        return 'title';
    }
  }

  static String get tmdbApiKey => const String.fromEnvironment('TMDB_API_KEY');

  static String get host => const String.fromEnvironment('HOST');
}
