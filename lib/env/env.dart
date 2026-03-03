// lib/env/env.dart
import 'package:envied/envied.dart';
import 'package:mgkaung_dms_mobile/core/enums/app_flavor.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'STAGING_URL', obfuscate: true)
  static final String stagingUrl = _Env.stagingUrl;

  // @EnviedField(varName: 'PRODUCTION_URL', obfuscate: true)
  // static final String productionUrl = _Env.productionUrl;

  @EnviedField(varName: 'UAT_URL', obfuscate: true)
  static final String uatUrl = _Env.uatUrl;

  @EnviedField(varName: 'DEMO_URL', obfuscate: true)
  static final String demoUrl = _Env.demoUrl;

  static AppFlavor? appFlavor;

  static String get baseUrl {
    switch (appFlavor) {
      case AppFlavor.staging:
        return stagingUrl;
      case AppFlavor.uat:
        return uatUrl;
      // case AppFlavor.production:
      //   return productionUrl;
      case AppFlavor.demo:
        return demoUrl;
      default:
        return uatUrl; // Default to UAT
    }
  }
}
