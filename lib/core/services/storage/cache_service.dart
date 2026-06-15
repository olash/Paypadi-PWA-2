/// A single cache contract shared by both the local (SharedPreferences) and
/// secure (FlutterSecureStorage) implementations.
///
/// ### Type support
/// | Implementation     | Supported value types                              |
/// |--------------------|---------------------------------------------------|
/// | [LocalCacheService]  | `String`, `int`, `double`, `bool`, `List<String>`, `Map<String, dynamic>`, any JSON-serialisable object |
/// | [SecureCacheService] | `String` only (stored encrypted on-device)        |
///
/// ### Reading complex objects
/// ```dart
/// // With a parser:
/// final user = await cache.get<User>('user', User.fromJson);
///
/// // Without a parser (primitive or Map):
/// final token = await cache.get<String>('access_token');
/// ```
abstract class CacheService {
  /// Persists [value] under [key].
  ///
  /// Supported types depend on the implementation. Unsupported types are
  /// logged and silently ignored — implementations never throw during
  /// normal operation.
  Future<void> save({required String key, required dynamic value});

  /// Returns the value stored under [key], cast to [T].
  ///
  /// An optional [parser] maps the raw stored value to [T]; useful for
  /// deserializing complex objects stored as JSON:
  ///
  /// ```dart
  /// final profile = await cache.get<Profile>('profile', Profile.fromJson);
  /// ```
  ///
  /// Returns `null` when the key is absent or on any error.
  Future<T?> get<T>(String key, [T Function(dynamic raw)? parser]);

  /// Removes the value stored under [key].
  ///
  /// A no-op (with optional logging) when the key does not exist.
  Future<void> remove(String key);

  /// Wipes **all** entries managed by this cache.
  ///
  /// Implementations should swallow and log non-fatal errors.
  Future<void> clear();
}
