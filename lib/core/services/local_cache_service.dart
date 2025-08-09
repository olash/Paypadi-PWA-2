import 'dart:convert' show json;

import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:talker_flutter/talker_flutter.dart' show Talker;

abstract class LocalCache {
  ///Saves `value` to cache using `key`
  Future<void> saveToCache({required String key, required dynamic value});

  ///Retrieves a cached value stored with `key`
  T? getFromCache<T>(String key, [T Function(dynamic)? parser]);

  ///Removes cached value stored with `key` from cache
  Future<void> removeFromCache(String key);
}

class LocalCacheService implements LocalCache {
  LocalCacheService({
    required SharedPreferencesWithCache sharedPreferences,
    required this.logger,
  }) : _sharedPreferences = sharedPreferences;

  final Talker logger;
  late final SharedPreferencesWithCache _sharedPreferences;
  @override
  T? getFromCache<T>(String key, [T Function(dynamic p1)? parser]) {
    try {
      T? value;
      switch (T) {
        case const (String):
          value = _sharedPreferences.getString(key) as T?;
        case const (int):
          value = _sharedPreferences.getInt(key) as T?;
        case const (double):
          value = _sharedPreferences.getDouble(key) as T?;
        case const (bool):
          value = _sharedPreferences.getBool(key) as T?;
        case const (List):
          value = _sharedPreferences.getStringList(key) as T?;
        case const (Map<String, dynamic>):
          value = json.decode(_sharedPreferences.getString(key) ?? '') as T?;
        default:
          value = _sharedPreferences.get(key) as T?;
      }
      if (parser != null) {
        return parser(value);
      }
      return value;
    } catch (e) {
      logger.error('$runtimeType: getFromCache error', e);
      return null;
    }
  }

  @override
  Future<void> saveToCache({required String key, required dynamic value}) async {
    switch (value) {
      case final String value:
        await _sharedPreferences.setString(key, value);
        break;
      case final bool value:
        await _sharedPreferences.setBool(key, value);
        break;
      case final int value:
        await _sharedPreferences.setInt(key, value);
        break;
      case final double value:
        await _sharedPreferences.setDouble(key, value);
        break;
      case final List<String> value:
        await _sharedPreferences.setStringList(key, value);
        break;
      case final Map<String, dynamic> value:
        await _sharedPreferences.setString(key, json.encode(value));
        break;
      default:
        logger.error(
          '$runtimeType: Attempted to save unknown type to local cache',
        );
        break;
    }
  }

  @override
  Future<void> removeFromCache(String key) async {
    await _sharedPreferences.remove(key);
  }
}

