import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Env {
  static String? flavor = appFlavor;
  static String baseUrl = const String.fromEnvironment('API_BASE_URL');

  static bool get isProd => flavor == 'prod';

  static bool get isDev => flavor == 'dev';

  static Color get color => switch (flavor) {
    'dev' => Colors.red,
    'prod' => Colors.transparent,
    _ => const Color(0xA0B71C1C),
  };
}
