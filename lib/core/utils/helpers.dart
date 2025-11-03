import 'dart:convert' show json;

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/core/utils/constants.dart';

String obfuscateEmail(String email) {
  final emailRegex = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w+$");
  if (!emailRegex.hasMatch(email)) return email;

  final parts = email.split('@');
  if (parts.length != 2) return email;

  final username = parts[0];
  final domain = parts[1];

  final visible = username.length > 4 ? username.substring(0, 4) : username;
  final obfuscated = '*' * (username.length - visible.length);

  return '$visible$obfuscated@$domain';
}

String obfuscatePhoneNumber(String phoneNumber) {
  final phoneRegex = RegExp(r"^\+(\d{1,3})(\d+)$");
  final match = phoneRegex.firstMatch(phoneNumber);
  if (match == null) return phoneNumber;

  final countryCode = match.group(1)!;
  final rest = match.group(2)!;

  if (rest.length <= 3) return phoneNumber;

  final obfuscated = '*' * (rest.length - 3);
  final visible = rest.substring(rest.length - 3);

  return '+$countryCode$obfuscated$visible';
}

String formatAmount(int amount) {
  final formatted = amount.toString().replaceAllMapped(
    RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
    (Match m) => '${m[1]},',
  );
  return '$formatted.00';
}

String capitalizeFirstChar(String s) {
  if (s.isEmpty) return s;
  return s[0].toUpperCase() + s.substring(1);
}

String getDateAndTime(DateTime date) {
  final year = date.year.toString().padLeft(4, '0');
  final month = date.month.toString().padLeft(2, '0');
  final day = date.day.toString().padLeft(2, '0');
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  return '$year-$month-${day}_$hour:$minute';
}

Future<void> preCacheSVGs() async {
  for (final svgIcon in AppAssets.icons.values) {
    final loadSvg = SvgAssetLoader(svgIcon.path);
    await svg.cache.putIfAbsent(
      loadSvg.cacheKey(null),
      () => loadSvg.loadBytes(null),
    );
  }
}

Future<Map<String, dynamic>> loadJsonFromAssets() async {
  // Keep an in-memory cache to avoid reloading the same asset multiple times.
  // This is a simple, process-lifetime cache.
  // Usage: loadJsonFromAssets(); or loadJsonFromAssets('assets/...json')
  return await _loadJsonAsset('assets/nigerian-banks.json');
}

final Map<String, Map<String, dynamic>> _jsonAssetCache = {};

Future<Map<String, dynamic>> _loadJsonAsset(String assetPath) async {
  if (_jsonAssetCache.containsKey(assetPath)) {
    return _jsonAssetCache[assetPath]!;
  }

  try {
    final String jsonString = await rootBundle.loadString(assetPath);
    final dynamic decoded = json.decode(jsonString);

    // We expect a JSON object at the root. If the decoded value is not a Map,
    // wrap it into a Map under the key 'data' so callers expecting a Map don't break.
    final Map<String, dynamic> result = decoded is Map<String, dynamic>
        ? decoded
        : <String, dynamic>{'data': decoded};

    _jsonAssetCache[assetPath] = result;
    return result;
  } catch (e) {
    // On failure (missing asset, malformed JSON), return an empty map and
    // avoid bubbling the exception here. Callers can log or handle as needed.
    // You may change this behaviour to rethrow if you prefer strict errors.

    logger.error('Failed to load JSON asset "$assetPath": $e');
    _jsonAssetCache[assetPath] = <String, dynamic>{};
    return <String, dynamic>{};
  }
}
