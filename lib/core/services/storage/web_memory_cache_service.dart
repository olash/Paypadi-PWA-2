import 'package:paypadi/core/services/storage/cache_service.dart';
import 'package:paypadi/core/utils/constants.dart';

/// [CacheService] backed by a plain in-memory [Map] — used on web as a
/// replacement for [SecureCacheService].
///
/// **Security rationale**: `flutter_secure_storage` on web falls back to
/// `localStorage`, which is accessible to any JavaScript on the page and is
/// NOT acceptable for a fintech app storing access/refresh tokens.
/// In-memory storage means tokens survive only for the lifetime of the tab —
/// users must re-authenticate on a fresh tab open — but no sensitive data
/// ever touches persistent browser storage.
///
/// All methods silently swallow errors and return `null`/no-op on failure,
/// matching the contract of [SecureCacheService].
class WebMemoryCacheService implements CacheService {
  final Map<String, dynamic> _store = {};

  @override
  Future<T?> get<T>(String key, [T Function(dynamic raw)? parser]) async {
    try {
      final value = _store[key];
      debugLogger.debug("WebMemoryCache: read '$key' (present: ${value != null})");
      if (value == null) return null;
      return parser != null ? parser(value) : value as T?;
    } catch (e, st) {
      debugLogger.error('WebMemoryCache: get error for key "$key"', e, st);
      return null;
    }
  }

  @override
  Future<void> save({required String key, required dynamic value}) async {
    try {
      _store[key] = value;
      debugLogger.debug("WebMemoryCache: saved '$key'");
    } catch (e, st) {
      debugLogger.error('WebMemoryCache: save error for key "$key"', e, st);
    }
  }

  @override
  Future<void> remove(String key) async {
    try {
      _store.remove(key);
      debugLogger.debug("WebMemoryCache: removed '$key'");
    } catch (e, st) {
      debugLogger.error('WebMemoryCache: remove error for key "$key"', e, st);
    }
  }

  @override
  Future<void> clear() async {
    try {
      _store.clear();
      debugLogger.debug('WebMemoryCache: cleared all entries');
    } catch (e, st) {
      debugLogger.error('WebMemoryCache: clear error', e, st);
    }
  }
}
