enum Environment {
  dev,
  stg,
  prod,
}

extension EnvironmentExt on Environment {
  String get envName {
    switch (this) {
      case Environment.dev:
        return 'LOCAL';
      case Environment.stg:
        return 'STAGING';
      case Environment.prod:
        return 'PROD';
    }
  }

  String get baseUrl {
    switch (this) {
      case Environment.dev:
        return "http://192.168.10.20:8300";
      case Environment.stg:
        return "https://api-dev.click247.vn";
      case Environment.prod:
        return "https://click247.vn";
    }
  }
}
