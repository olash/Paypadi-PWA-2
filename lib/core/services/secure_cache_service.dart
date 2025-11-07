import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:talker_flutter/talker_flutter.dart' show Talker;

abstract class SecureCache {
  ///Reads a value saved with [key] from storage
  ///
  /// Returns the stored string value, or `null` if no value exists for
  /// the provided key. Implementations should catch and log errors and
  /// return `null` on failure rather than throw for normal control flow.
  Future<String?> read(String key);

  ///Writes [value] to storage with [key].
  ///
  /// Implementations should persist the provided string value under the
  /// given key. On error implementations should log the failure and may
  /// rethrow only for unrecoverable errors.
  Future<void> write({
    required String key,
    required String value,
  });

  ///Deletes a value saved with [key] from storage
  ///
  /// Remove the stored value for [key]. Implementations should swallow
  /// and log non-fatal errors.
  Future<void> delete(String key);
}

class SecureCacheService implements SecureCache {
  /// Create a [SecureCacheService].
  ///
  /// If [storage] is provided it will be used for reads/writes which is
  /// helpful for testing. Otherwise a default [FlutterSecureStorage]
  /// instance is created using platform-appropriate options.
  SecureCacheService({FlutterSecureStorage? storage})
    : _storage =
          storage ??
          const FlutterSecureStorage(
            aOptions: AndroidOptions(encryptedSharedPreferences: true),
            iOptions: IOSOptions(
              synchronizable: false,
              accessibility: KeychainAccessibility.first_unlock_this_device,
            ),
          );
  final Talker logger = debugLogger;
  final FlutterSecureStorage _storage;

  @override
  Future<void> write({required String key, required String value}) async {
    try {
      await _storage.write(key: key, value: value);
      logger.debug("Saved key '$key' to $runtimeType");
    } catch (e, st) {
      logger.error('$runtimeType: write error', e, st);
    }
  }

  @override
  Future<String?> read(String key) async {
    try {
      final value = await _storage.read(key: key);
      logger.debug(
        "Read key '$key' from $runtimeType (present: ${value != null})",
      );
      return value;
    } catch (e, st) {
      logger.error('$runtimeType: read error', e, st);
      return null;
    }
  }

  @override
  Future<void> delete(String key) async {
    try {
      await _storage.delete(key: key);
      logger.debug("Deleted key '$key' from $runtimeType");
    } catch (e, st) {
      logger.error('$runtimeType: failed to delete', e, st);
    }
  }
}
