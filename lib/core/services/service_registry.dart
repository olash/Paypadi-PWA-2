import 'package:hooks_riverpod/hooks_riverpod.dart' show Ref;
import 'package:paypadi/config/router/router.dart' show AppRouter;
import 'package:paypadi/core/services/biometrics_service.dart' show BiometricsService;
import 'package:paypadi/core/services/local_cache_service.dart'
    show LocalCacheService;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache, SharedPreferencesWithCacheOptions;

import 'package:paypadi/core/constants/constants.dart' show CacheKeys, logger;
import 'package:paypadi/core/services/secure_cache_service.dart'
    show SecureCacheService;

part 'service_registry.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter(ref: ref);

@Riverpod(keepAlive: true)
Future<SharedPreferencesWithCache> sharedPreferencesFuture(Ref ref) {
  final Set<String> allowList = {
    CacheKeys.enabledBiometrics,
    CacheKeys.viewedOnboarding,
    CacheKeys.isDarkMode,
  };

  return SharedPreferencesWithCache.create(
    cacheOptions: SharedPreferencesWithCacheOptions(allowList: allowList),
  );
}

@Riverpod(keepAlive: true)
LocalCacheService localCache(Ref ref) {
  return LocalCacheService(
    logger: logger,
    sharedPreferences: ref.watch(sharedPreferencesFutureProvider).requireValue,
  );
}

@Riverpod(keepAlive: true)
SecureCacheService secureCache(Ref ref) => SecureCacheService(logger: logger);

@riverpod
BiometricsService biometrics(Ref<BiometricsService> ref) {
  return BiometricsService();
}
