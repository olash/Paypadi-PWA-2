import 'dart:ui' show Color;

import 'package:paypadi/config/router/router.dart' show AppRouter;
import 'package:paypadi/config/theme.dart' show AppTheme;
import 'package:paypadi/core/utils/constants.dart'
    show CacheKeys, availableColors, logger;
import 'package:paypadi/core/services/biometrics_service.dart'
    show BiometricsService;
import 'package:paypadi/core/services/local_cache_service.dart'
    show LocalCacheService;
import 'package:paypadi/core/services/secure_cache_service.dart'
    show SecureCacheService;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache, SharedPreferencesWithCacheOptions;

part 'service_registry.g.dart';

@Riverpod(keepAlive: true)
class ColorIndexNotifier extends _$ColorIndexNotifier {
  @override
  int build() {
    final localCache = ref.watch(localCacheProvider);
    final int colorIndex = localCache.getFromCache(CacheKeys.colorTheme) ?? 0;
    final bool isValidIndex =
        (colorIndex >= 0 && colorIndex < availableColors.length);
    return isValidIndex ? colorIndex : 0;
  }

  void setColorIndex(int index) {
    if (index >= 0 && index < availableColors.length) {
      state = index;
      final localCache = ref.read(localCacheProvider);
      localCache.saveToCache(key: CacheKeys.colorTheme, value: index);
    }
  }
}

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter(ref: ref);

@Riverpod(keepAlive: true)
Color appPrimary(Ref ref) {
  return availableColors[ref.watch(colorIndexProvider)];
}

@Riverpod(keepAlive: true)
AppTheme appTheme(Ref ref) {
  return AppTheme(
    primary: ref.watch(appPrimaryProvider),
  );
}

@Riverpod(keepAlive: true)
Future<SharedPreferencesWithCache> sharedPreferencesFuture(Ref ref) {
  final Set<String> allowList = {
    CacheKeys.enabledBiometrics,
    CacheKeys.viewedOnboarding,
    CacheKeys.isDarkMode,
    CacheKeys.colorTheme,
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
BiometricsService biometrics(Ref ref) {
  return BiometricsService();
}
