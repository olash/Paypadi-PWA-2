import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker_flutter/talker_flutter.dart' show Talker;

abstract class SecureCache {
  ///Reads a value saved with [key] from storage
  Future<String?> read(String key);

  ///Writes [value] to storage with [key].
  Future<void> write({
    required String key,
    required String value,
  });

  ///Deletes a value saved with [key] from storage
  Future<void> delete(String key);
}

class SecureCacheService implements SecureCache {
  const SecureCacheService({required this.logger})
    : _storage = const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );

  final FlutterSecureStorage _storage;
  final Talker logger;

  @override
  Future<void> write({required String key, required String value}) async {
    try {
      await _storage.write(key: key, value: value);
      logger.debug("Saved $key to $runtimeType");
    } catch (e) {
      logger.error('$runtimeType: write error', e);
    }
  }

  @override
  Future<String?> read(String key) async {
    try {
      return await _storage.read(key: key);
      logger.debug("Reading $key from $runtimeType");
    } catch (e) {
      logger.error('$runtimeType: read error', e);
      return null;
    }
  }

  @override
  Future<void> delete(String key) async {
    try {
      await _storage.delete(key: key);
      logger.debug("Deleted $key from $runtimeType");
    } catch (e) {
      logger.error('$runtimeType: failed to delete', e);
    }
  }
}
