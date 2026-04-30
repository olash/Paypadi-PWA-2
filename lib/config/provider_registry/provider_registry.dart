import 'dart:ui' show Color;

import 'package:paypadi/config/router/router.dart' show AppRouter;
import 'package:paypadi/config/theme.dart' show AppTheme;
import 'package:paypadi/core/services/api_service.dart';
import 'package:paypadi/core/services/file_picker_service.dart';
import 'package:paypadi/core/services/image_picker_service.dart';
import 'package:paypadi/core/services/receipt_service.dart';
import 'package:paypadi/core/utils/constants.dart'
    show CacheKeys, availableColors;
import 'package:paypadi/core/services/biometrics_service.dart'
    show BiometricsService;
import 'package:paypadi/core/services/local_cache_service.dart'
    show LocalCacheService;
import 'package:paypadi/core/services/secure_cache_service.dart'
    show SecureCacheService;
import 'package:paypadi/core/datasource/authentication_ds/authentication_client.dart';
import 'package:paypadi/core/datasource/jwt_ds/jwt_client.dart';
import 'package:paypadi/core/datasource/payout_account_ds/payout_account_client.dart';
import 'package:paypadi/core/datasource/profile_ds/profile_client.dart';
import 'package:paypadi/core/repositories/authentication_repo.dart';
import 'package:paypadi/core/repositories/jwt_repo.dart';
import 'package:paypadi/core/repositories/payout_account_repo.dart';
import 'package:paypadi/core/repositories/profile_repo.dart';
import 'package:paypadi/core/datasource/wallet_ds/wallet_client.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';
import 'package:paypadi/core/datasource/transaction_ds/transaction_client.dart';
import 'package:paypadi/core/repositories/transaction_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart'
    show SharedPreferencesWithCache, SharedPreferencesWithCacheOptions;

part 'provider_registry.g.dart';

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

@riverpod
ReceiptService receiptService(Ref ref) {
  return ReceiptService();
}

@riverpod
FilePickerService filePickerService(Ref ref) {
  return FilePickerService();
}

@riverpod
ImagePickerService imagePickerService(Ref ref) {
  return ImagePickerService();
}

@riverpod
AuthenticationClient authenticationClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AuthenticationClient(dio);
}

@Riverpod(keepAlive: true)
JwtClient jwtClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return JwtClient(dio);
}

@riverpod
PayoutAccountClient payoutAccountClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return PayoutAccountClient(dio);
}

@riverpod
ProfileClient profileClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return ProfileClient(dio);
}

@riverpod
WalletClient walletClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return WalletClient(dio);
}

@riverpod
TransactionClient transactionClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return TransactionClient(dio);
}

@riverpod
AuthenticationRepository authenticationRepository(Ref ref) {
  final AuthenticationClient client = ref.watch(authenticationClientProvider);
  return AuthenticationRepository(client: client);
}

@Riverpod(keepAlive: true)
JwtRepository jwtRepository(Ref ref) {
  final JwtClient client = ref.watch(jwtClientProvider);
  return JwtRepository(client: client);
}

@riverpod
PayoutAccountRepository payoutAccountRepository(Ref ref) {
  final PayoutAccountClient client = ref.watch(payoutAccountClientProvider);
  return PayoutAccountRepository(client: client);
}

@riverpod
ProfileRepository profileRepository(Ref ref) {
  final ProfileClient client = ref.watch(profileClientProvider);
  return ProfileRepository(client: client);
}

@riverpod
WalletRepository walletRepository(Ref ref) {
  final WalletClient client = ref.watch(walletClientProvider);
  return WalletRepository(client);
}

@riverpod
TransactionRepository transactionRepository(Ref ref) {
  final TransactionClient client = ref.watch(transactionClientProvider);
  return TransactionRepository(client);
}
