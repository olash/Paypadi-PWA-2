import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppEnvironment {
  static String? flavor = appFlavor;
  static String backendApiBaseUrl = const String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://khidr.pythonanywhere.com/api/v1',
  );
  static String sentryDsn = const String.fromEnvironment('SENTRY_DSN');

  static bool get isProd => flavor == 'prod';

  static bool get isDev => flavor == 'dev';

  static Color get color => switch (flavor) {
    'dev' => Colors.red,
    'prod' => Colors.transparent,
    _ => const Color(0xA0B71C1C),
  };
}
