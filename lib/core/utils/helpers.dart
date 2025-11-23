import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:toastification/toastification.dart';

part 'helpers.g.dart';

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
  // Remove any spaces, dashes, or other formatting
  final cleaned = phoneNumber.replaceAll(RegExp(r'[^\d+]'), '');

  // Handle different Nigerian phone number formats
  String digits = cleaned;

  // Remove country code if present (+234 or 234)
  if (digits.startsWith('+234')) {
    digits = digits.substring(4);
  } else if (digits.startsWith('234')) {
    digits = digits.substring(3);
  }

  // Nigerian mobile numbers should be 11 digits starting with 0
  // or 10 digits without the leading 0
  if (digits.length == 10 && !digits.startsWith('0')) {
    digits = '0$digits'; // Add leading 0 if missing
  }

  // Validate Nigerian mobile number format
  if (digits.length != 11 || !digits.startsWith('0')) {
    return phoneNumber; // Return original if invalid format
  }

  // Nigerian mobile prefixes (080, 081, 070, 090, 091, etc.)
  final validPrefixes = ['080', '081', '070', '090', '091', '070', '071'];
  final prefix = digits.substring(0, 3);

  if (!validPrefixes.contains(prefix)) {
    return phoneNumber; // Return original if invalid prefix
  }

  // Format: 081 **** 6507 (show first 3 and last 4 digits)
  final firstPart = digits.substring(0, 3); // 081
  final lastPart = digits.substring(7); // 6507
  final obfuscated = '*' * 4; // ****

  return '$firstPart $obfuscated $lastPart';
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

void showErrorDialog(BuildContext context, {String? message}) {
  toastification.show(
    context: context,
    title: Text("Error"),
    applyBlurEffect: true,
    alignment: Alignment.topCenter,
    type: ToastificationType.error,
    style: ToastificationStyle.flat,
    icon: Icon(Iconsax.danger_outline),
    borderRadius: BorderRadius.circular(Values.v120),
    description: message != null ? Text(message) : SizedBox.shrink(),
    autoCloseDuration: const Duration(seconds: 4),
    animationBuilder: (context, animation, alignment, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
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

    debugLogger.error('Failed to load JSON asset "$assetPath": $e');
    _jsonAssetCache[assetPath] = <String, dynamic>{};
    return <String, dynamic>{};
  }
}

@Riverpod(keepAlive: true)
Future<List<String>> bankList(Ref ref) async {
  try {
    final asset = await loadJsonFromAssets();

    // The JSON loader may return a Map with a 'data' key containing a list,
    // or the root may already be a list wrapped under 'data' by the loader.
    final dynamic raw = asset['data'] ?? asset['banks'] ?? asset['items'];

    if (raw is List) {
      final names = <String>[];
      for (final item in raw) {
        if (item is Map<String, dynamic>) {
          final name = item['name'];
          if (name is String && name.isNotEmpty) names.add(name);
        }
      }
      return names;
    }

    // If the structure is unexpected, return an empty list instead of throwing.
    return <String>[];
  } catch (_) {
    // On error, return an empty list to keep the provider safe for consumers.
    return <String>[];
  }
}
