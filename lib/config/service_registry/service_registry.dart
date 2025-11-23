import 'dart:ui' show Color;

import 'package:paypadi/config/router/router.dart' show AppRouter;
import 'package:paypadi/config/theme.dart' show AppTheme;
import 'package:paypadi/core/utils/constants.dart'
    show CacheKeys, availableColors;
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

  void setColorIndex(int index) async {
    if (index >= 0 && index < availableColors.length) {
      state = index;
      final localCache = ref.read(localCacheProvider);
      await localCache.setColorTheme(index);
    }
  }
}

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter(ref: ref);

@Riverpod(keepAlive: true)
Color appPrimaryColor(Ref ref) {
  return availableColors[ref.watch(colorIndexProvider)];
}

@Riverpod(keepAlive: true)
AppTheme appTheme(Ref ref) {
  return AppTheme(
    primary: ref.watch(appPrimaryColorProvider),
  );
}

@Riverpod(keepAlive: true)
Future<SharedPreferencesWithCache> sharedPreferencesFuture(Ref ref) {
  return SharedPreferencesWithCache.create(
    cacheOptions: SharedPreferencesWithCacheOptions(),
  );
}

@Riverpod(keepAlive: true)
LocalCacheService localCache(Ref ref) {
  return LocalCacheService(
    sharedPreferences: ref.watch(sharedPreferencesFutureProvider).requireValue,
  );
}

@Riverpod(keepAlive: true)
SecureCacheService secureCache(Ref ref) => SecureCacheService();

@riverpod
BiometricsService biometrics(Ref ref) {
  return BiometricsService();
}
