import 'dart:convert' show json;

import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache;
import 'package:talker_flutter/talker_flutter.dart' show Talker;
import 'package:paypadi/core/utils/constants.dart' show CacheKeys, debugLogger;

abstract class LocalCache {
  /// Enable biometric authentication in the cache.
  ///
  /// Implementations should persist a boolean flag indicating biometric
  /// auth is allowed/enabled for the current device/user. Use a stable
  /// key such as `CacheKeys.enabledBiometrics` so other modules can
  /// read the setting with [getFromCache].
  ///
  /// Returns a [Future] that completes when the value has been saved.
  Future<void> enableBiometrics();

  /// Enable dark mode in the cache.
  ///
  /// Implementations should persist a boolean flag indicating the app
  /// theme should be dark. Consumers should read this value via
  /// [getFromCache<bool>] (key: `CacheKeys.isDarkMode`).
  ///
  /// Returns a [Future] that completes when the value has been saved.
  Future<void> enableDarkMode();

  /// Disable biometric authentication in the cache.
  ///
  /// This should clear or set the persistent flag used by
  /// [enableBiometrics] so consumers reading
  /// `getFromCache<bool>(CacheKeys.enabledBiometrics)` will receive
  /// `false` (or `null` if removed). Implementations should prefer
  /// writing an explicit `false` value to keep semantics clear.
  Future<void> disableBiometrics();

  /// Disable dark mode in the cache.
  ///
  /// This mirrors [enableDarkMode] but stores `false` under
  /// `CacheKeys.isDarkMode`. Consumers should read via
  /// `getFromCache<bool>(CacheKeys.isDarkMode)` to determine theme.
  Future<void> disableDarkMode();

  /// Persist the selected color theme index.
  ///
  /// The `index` identifies a color choice from the application's
  /// palette (for example, `availableColors[index]`). Implementations
  /// should store the integer under a stable key such as
  /// `CacheKeys.colorTheme` so it can be retrieved with
  /// [getFromCache<int>].
  ///
  /// Returns a [Future] that completes when the value has been saved.
  Future<void> setColorTheme(int index);

  /// Save a value to the cache under `key`.
  ///
  /// Supported types: `String`, `int`, `double`, `bool`, `List<String>`,
  /// and `Map<String, dynamic>` (which implementations may encode as JSON
  /// strings). If an unsupported/unknown type is provided implementations
  /// should log an error and avoid throwing during normal operation.
  ///
  /// `value` is serialized by the implementation; callers may provide a
  /// `parser` to decode complex structures when reading (see
  /// [getFromCache]).
  Future<void> saveToCache({required String key, required dynamic value});

  /// Retrieve a cached value stored with `key`.
  ///
  /// The generic type parameter `T` indicates the expected return type.
  /// Implementations should attempt to return a value of type `T` (or
  /// `null` if the key is missing). The optional `parser` function can
  /// be provided to map a raw stored value to `T` — this is useful for
  /// decoding complex objects.
  ///
  /// Example: `getFromCache<Map<String, dynamic>>(key)` for JSON maps,
  /// or `getFromCache<User>(key, (raw) => User.fromJson(raw))`.
  ///
  /// On error implementations should return `null` and/or log the error
  /// rather than throw during normal reads.
  T? getFromCache<T>(String key, [T Function(dynamic)? parser]);

  /// Remove a cached value stored with `key`.
  ///
  /// The returned [Future] completes when the key has been removed or if
  /// an error occurred while attempting to remove it (implementations
  /// may log the error). This is typically used for sign-out flows or
  /// when clearing user-specific data.
  Future<void> removeFromCache(String key);

  /// Clears all values from the local cache.
  ///
  /// Implementations should swallow and log non-fatal errors.
  Future<void> clearStorage();
}

class LocalCacheService implements LocalCache {
  LocalCacheService({required SharedPreferencesWithCache sharedPreferences})
    : _sharedPreferences = sharedPreferences;

  final Talker logger = debugLogger;
  final SharedPreferencesWithCache _sharedPreferences;

  @override
  Future<void> enableBiometrics() async {
    await saveToCache(key: CacheKeys.enabledBiometrics, value: true);
  }

  @override
  Future<void> enableDarkMode() async {
    await saveToCache(key: CacheKeys.isDarkMode, value: true);
  }

  @override
  Future<void> disableBiometrics() async {
    await saveToCache(key: CacheKeys.enabledBiometrics, value: false);
  }

  @override
  Future<void> disableDarkMode() async {
    await saveToCache(key: CacheKeys.isDarkMode, value: false);
  }

  @override
  Future<void> setColorTheme(int index) async {
    await saveToCache(key: CacheKeys.colorTheme, value: index);
  }

  @override
  T? getFromCache<T>(String key, [T Function(dynamic)? parser]) {
    try {
      dynamic raw;
      if (T == String) {
        raw = _sharedPreferences.getString(key);
      } else if (T == int) {
        raw = _sharedPreferences.getInt(key);
      } else if (T == double) {
        raw = _sharedPreferences.getDouble(key);
      } else if (T == bool) {
        raw = _sharedPreferences.getBool(key);
      } else if (T == List || T == List<String>) {
        raw = _sharedPreferences.getStringList(key);
      } else if (T == Map || T == Map<String, dynamic>) {
        final rawJson = _sharedPreferences.getString(key);
        if (rawJson == null || rawJson.isEmpty) return null;
        final decoded = json.decode(rawJson);
        raw = Map<String, dynamic>.from(decoded as Map);
      } else {
        // Complex objects are stored as JSON strings via saveToCache
        final rawJson = _sharedPreferences.getString(key);
        if (rawJson == null || rawJson.isEmpty) return null;

        try {
          raw = json.decode(rawJson); // decode before handing to parser
        } catch (e, st) {
          logger.error(
            '$runtimeType: failed to decode JSON for key "$key"',
            e,
            st,
          );
          return null;
        }
      }

      if (raw == null) return null;

      if (parser != null) return parser(raw);
      return raw as T?;
    } catch (e, st) {
      try {
        debugLogger.error('$runtimeType: getFromCache error', e, st);
      } catch (_) {
        debugLogger.error('$runtimeType: getFromCache error', e);
      }
      return null;
    }
  }

  @override
  Future<void> saveToCache({
    required String key,
    required dynamic value,
  }) async {
    try {
      if (value is String) {
        await _sharedPreferences.setString(key, value);
      } else if (value is bool) {
        await _sharedPreferences.setBool(key, value);
      } else if (value is int) {
        await _sharedPreferences.setInt(key, value);
      } else if (value is double) {
        await _sharedPreferences.setDouble(key, value);
      } else if (value is List<String>) {
        await _sharedPreferences.setStringList(key, value);
      } else if (value is Map<String, dynamic>) {
        await _sharedPreferences.setString(key, json.encode(value));
      } else {
        debugLogger.error(
          '$runtimeType: Attempted to save unknown type to local cache: ${value.runtimeType}',
        );
      }
    } catch (e, st) {
      try {
        debugLogger.error('$runtimeType: saveToCache error', e, st);
      } catch (_) {
        debugLogger.error('$runtimeType: saveToCache error', e);
      }
    }
  }

  @override
  Future<void> removeFromCache(String key) async {
    try {
      await _sharedPreferences.remove(key);
      logger.debug("Removed key '$key' from $runtimeType");
    } catch (e, st) {
      logger.error('$runtimeType: removeFromCache error', e, st);
    }
  }

  @override
  Future<void> clearStorage() async {
    try {
      await _sharedPreferences.clear();
      logger.debug('Cleared all local cache in $runtimeType');
    } catch (e, st) {
      logger.error('$runtimeType: failed to clear local cache', e, st);
    }
  }
}
