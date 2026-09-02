// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_registry.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(monitoring)
final monitoringProvider = MonitoringProvider._();

final class MonitoringProvider
    extends
        $FunctionalProvider<
          MonitoringService,
          MonitoringService,
          MonitoringService
        >
    with $Provider<MonitoringService> {
  MonitoringProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monitoringProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monitoringHash();

  @$internal
  @override
  $ProviderElement<MonitoringService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MonitoringService create(Ref ref) {
    return monitoring(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MonitoringService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MonitoringService>(value),
    );
  }
}

String _$monitoringHash() => r'7f90cc7c924cdca2311868bf8b739cfc9764e62a';

@ProviderFor(sharedPreferencesFuture)
final sharedPreferencesFutureProvider = SharedPreferencesFutureProvider._();

final class SharedPreferencesFutureProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferencesWithCache>,
          SharedPreferencesWithCache,
          FutureOr<SharedPreferencesWithCache>
        >
    with
        $FutureModifier<SharedPreferencesWithCache>,
        $FutureProvider<SharedPreferencesWithCache> {
  SharedPreferencesFutureProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesFutureProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesFutureHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferencesWithCache> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferencesWithCache> create(Ref ref) {
    return sharedPreferencesFuture(ref);
  }
}

String _$sharedPreferencesFutureHash() =>
    r'86b8ab415e61ac715bc0e834c301a7b3551151f4';

@ProviderFor(secureCache)
final secureCacheProvider = SecureCacheProvider._();

final class SecureCacheProvider
    extends $FunctionalProvider<CacheService, CacheService, CacheService>
    with $Provider<CacheService> {
  SecureCacheProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureCacheProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureCacheHash();

  @$internal
  @override
  $ProviderElement<CacheService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CacheService create(Ref ref) {
    return secureCache(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CacheService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CacheService>(value),
    );
  }
}

String _$secureCacheHash() => r'37182b75f98d18c5e9662d2d4c2e4b4d17737f8a';

@ProviderFor(localCache)
final localCacheProvider = LocalCacheProvider._();

final class LocalCacheProvider
    extends
        $FunctionalProvider<
          AsyncValue<LocalCacheService>,
          LocalCacheService,
          FutureOr<LocalCacheService>
        >
    with
        $FutureModifier<LocalCacheService>,
        $FutureProvider<LocalCacheService> {
  LocalCacheProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localCacheProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localCacheHash();

  @$internal
  @override
  $FutureProviderElement<LocalCacheService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LocalCacheService> create(Ref ref) {
    return localCache(ref);
  }
}

String _$localCacheHash() => r'debc1f3254ebc035f5efa24b7f39a8010214bd74';

@ProviderFor(firebaseMessaging)
final firebaseMessagingProvider = FirebaseMessagingProvider._();

final class FirebaseMessagingProvider
    extends
        $FunctionalProvider<
          FirebaseMessaging,
          FirebaseMessaging,
          FirebaseMessaging
        >
    with $Provider<FirebaseMessaging> {
  FirebaseMessagingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firebaseMessagingProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firebaseMessagingHash();

  @$internal
  @override
  $ProviderElement<FirebaseMessaging> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FirebaseMessaging create(Ref ref) {
    return firebaseMessaging(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseMessaging value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseMessaging>(value),
    );
  }
}

String _$firebaseMessagingHash() => r'1672e956b9febea725d18574f63c5ce88cefb132';

@ProviderFor(notificationsService)
final notificationsServiceProvider = NotificationsServiceProvider._();

final class NotificationsServiceProvider
    extends
        $FunctionalProvider<
          INotificationsService,
          INotificationsService,
          INotificationsService
        >
    with $Provider<INotificationsService> {
  NotificationsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationsServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationsServiceHash();

  @$internal
  @override
  $ProviderElement<INotificationsService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  INotificationsService create(Ref ref) {
    return notificationsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(INotificationsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<INotificationsService>(value),
    );
  }
}

String _$notificationsServiceHash() =>
    r'03dbd154111ce246ad8ac15a486f59883dd84c0d';

@ProviderFor(appPrimaryColor)
final appPrimaryColorProvider = AppPrimaryColorProvider._();

final class AppPrimaryColorProvider
    extends $FunctionalProvider<Color, Color, Color>
    with $Provider<Color> {
  AppPrimaryColorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appPrimaryColorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appPrimaryColorHash();

  @$internal
  @override
  $ProviderElement<Color> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Color create(Ref ref) {
    return appPrimaryColor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Color value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Color>(value),
    );
  }
}

String _$appPrimaryColorHash() => r'be2a3d8e452ac501d2527058db3aabf790427f9c';

@ProviderFor(appTheme)
final appThemeProvider = AppThemeProvider._();

final class AppThemeProvider
    extends $FunctionalProvider<AppTheme, AppTheme, AppTheme>
    with $Provider<AppTheme> {
  AppThemeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appThemeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appThemeHash();

  @$internal
  @override
  $ProviderElement<AppTheme> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppTheme create(Ref ref) {
    return appTheme(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppTheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppTheme>(value),
    );
  }
}

String _$appThemeHash() => r'8067a5e5404073b730722b439159986549e2f4ed';

@ProviderFor(appRouter)
final appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends $FunctionalProvider<AppRouter, AppRouter, AppRouter>
    with $Provider<AppRouter> {
  AppRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @$internal
  @override
  $ProviderElement<AppRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppRouter create(Ref ref) {
    return appRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppRouter>(value),
    );
  }
}

String _$appRouterHash() => r'238bc3c3a2a61345ab4af2b64c712af707e885d5';

@ProviderFor(apiService)
final apiServiceProvider = ApiServiceProvider._();

final class ApiServiceProvider
    extends $FunctionalProvider<ApiService, ApiService, ApiService>
    with $Provider<ApiService> {
  ApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiServiceHash();

  @$internal
  @override
  $ProviderElement<ApiService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ApiService create(Ref ref) {
    return apiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiService>(value),
    );
  }
}

String _$apiServiceHash() => r'd5b943de573ce2c8689e007cfdfec085434273d4';

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'29da6971e567474f82bf08984cb3642ea94638ef';

@ProviderFor(authenticationClient)
final authenticationClientProvider = AuthenticationClientProvider._();

final class AuthenticationClientProvider
    extends
        $FunctionalProvider<
          IAuthenticationClient,
          IAuthenticationClient,
          IAuthenticationClient
        >
    with $Provider<IAuthenticationClient> {
  AuthenticationClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationClientHash();

  @$internal
  @override
  $ProviderElement<IAuthenticationClient> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IAuthenticationClient create(Ref ref) {
    return authenticationClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IAuthenticationClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IAuthenticationClient>(value),
    );
  }
}

String _$authenticationClientHash() =>
    r'490df62565fa53b089ec5b9111c2083da011da85';

@ProviderFor(sessionClient)
final sessionClientProvider = SessionClientProvider._();

final class SessionClientProvider
    extends $FunctionalProvider<ISessionClient, ISessionClient, ISessionClient>
    with $Provider<ISessionClient> {
  SessionClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionClientHash();

  @$internal
  @override
  $ProviderElement<ISessionClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ISessionClient create(Ref ref) {
    return sessionClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISessionClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISessionClient>(value),
    );
  }
}

String _$sessionClientHash() => r'e3f1431197839fdc59121244ef2b287e64867ab9';

@ProviderFor(payoutAccountClient)
final payoutAccountClientProvider = PayoutAccountClientProvider._();

final class PayoutAccountClientProvider
    extends
        $FunctionalProvider<
          IPayoutAccountClient,
          IPayoutAccountClient,
          IPayoutAccountClient
        >
    with $Provider<IPayoutAccountClient> {
  PayoutAccountClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payoutAccountClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payoutAccountClientHash();

  @$internal
  @override
  $ProviderElement<IPayoutAccountClient> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IPayoutAccountClient create(Ref ref) {
    return payoutAccountClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IPayoutAccountClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IPayoutAccountClient>(value),
    );
  }
}

String _$payoutAccountClientHash() =>
    r'f38df24c61cf32a40e07e87ad9f5903c2c336359';

@ProviderFor(profileClient)
final profileClientProvider = ProfileClientProvider._();

final class ProfileClientProvider
    extends $FunctionalProvider<IProfileClient, IProfileClient, IProfileClient>
    with $Provider<IProfileClient> {
  ProfileClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileClientHash();

  @$internal
  @override
  $ProviderElement<IProfileClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IProfileClient create(Ref ref) {
    return profileClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IProfileClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IProfileClient>(value),
    );
  }
}

String _$profileClientHash() => r'51bd4bb59a0e078931cb31f646c00ff1a4c6a5dd';

@ProviderFor(walletClient)
final walletClientProvider = WalletClientProvider._();

final class WalletClientProvider
    extends $FunctionalProvider<IWalletClient, IWalletClient, IWalletClient>
    with $Provider<IWalletClient> {
  WalletClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'walletClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$walletClientHash();

  @$internal
  @override
  $ProviderElement<IWalletClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IWalletClient create(Ref ref) {
    return walletClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IWalletClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IWalletClient>(value),
    );
  }
}

String _$walletClientHash() => r'4f50de7ff0efc71a4638eab97c5d14e89cc5d09f';

@ProviderFor(transactionClient)
final transactionClientProvider = TransactionClientProvider._();

final class TransactionClientProvider
    extends
        $FunctionalProvider<
          ITransactionClient,
          ITransactionClient,
          ITransactionClient
        >
    with $Provider<ITransactionClient> {
  TransactionClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionClientHash();

  @$internal
  @override
  $ProviderElement<ITransactionClient> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ITransactionClient create(Ref ref) {
    return transactionClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ITransactionClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ITransactionClient>(value),
    );
  }
}

String _$transactionClientHash() => r'eb576492def83a93854017f78222451f8f59b550';

@ProviderFor(authenticationRepository)
final authenticationRepositoryProvider = AuthenticationRepositoryProvider._();

final class AuthenticationRepositoryProvider
    extends
        $FunctionalProvider<
          IAuthenticationRepository,
          IAuthenticationRepository,
          IAuthenticationRepository
        >
    with $Provider<IAuthenticationRepository> {
  AuthenticationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationRepositoryHash();

  @$internal
  @override
  $ProviderElement<IAuthenticationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IAuthenticationRepository create(Ref ref) {
    return authenticationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IAuthenticationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IAuthenticationRepository>(value),
    );
  }
}

String _$authenticationRepositoryHash() =>
    r'b10c16a4d8b9ea018d9dcdd3aaf8cf00a5665a22';

@ProviderFor(sessionRepository)
final sessionRepositoryProvider = SessionRepositoryProvider._();

final class SessionRepositoryProvider
    extends
        $FunctionalProvider<
          ISessionRepository,
          ISessionRepository,
          ISessionRepository
        >
    with $Provider<ISessionRepository> {
  SessionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionRepositoryHash();

  @$internal
  @override
  $ProviderElement<ISessionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ISessionRepository create(Ref ref) {
    return sessionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISessionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISessionRepository>(value),
    );
  }
}

String _$sessionRepositoryHash() => r'8df8235448a3e2c2c8a1aae72e725a5399858206';

@ProviderFor(payoutAccountRepository)
final payoutAccountRepositoryProvider = PayoutAccountRepositoryProvider._();

final class PayoutAccountRepositoryProvider
    extends
        $FunctionalProvider<
          IPayoutAccountRepository,
          IPayoutAccountRepository,
          IPayoutAccountRepository
        >
    with $Provider<IPayoutAccountRepository> {
  PayoutAccountRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payoutAccountRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payoutAccountRepositoryHash();

  @$internal
  @override
  $ProviderElement<IPayoutAccountRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IPayoutAccountRepository create(Ref ref) {
    return payoutAccountRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IPayoutAccountRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IPayoutAccountRepository>(value),
    );
  }
}

String _$payoutAccountRepositoryHash() =>
    r'f8220438ad614be19d5256260fa8777fd6786790';

@ProviderFor(profileRepository)
final profileRepositoryProvider = ProfileRepositoryProvider._();

final class ProfileRepositoryProvider
    extends
        $FunctionalProvider<
          IProfileRepository,
          IProfileRepository,
          IProfileRepository
        >
    with $Provider<IProfileRepository> {
  ProfileRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileRepositoryHash();

  @$internal
  @override
  $ProviderElement<IProfileRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IProfileRepository create(Ref ref) {
    return profileRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IProfileRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IProfileRepository>(value),
    );
  }
}

String _$profileRepositoryHash() => r'02dfc122b3467939e3c8cd45114e2ca94051ea0f';

@ProviderFor(walletRepository)
final walletRepositoryProvider = WalletRepositoryProvider._();

final class WalletRepositoryProvider
    extends
        $FunctionalProvider<
          IWalletRepository,
          IWalletRepository,
          IWalletRepository
        >
    with $Provider<IWalletRepository> {
  WalletRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'walletRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$walletRepositoryHash();

  @$internal
  @override
  $ProviderElement<IWalletRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IWalletRepository create(Ref ref) {
    return walletRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IWalletRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IWalletRepository>(value),
    );
  }
}

String _$walletRepositoryHash() => r'2d86ff14bf0e43069befe83e5d28b82def91e0b3';

@ProviderFor(transactionRepository)
final transactionRepositoryProvider = TransactionRepositoryProvider._();

final class TransactionRepositoryProvider
    extends
        $FunctionalProvider<
          ITransactionRepository,
          ITransactionRepository,
          ITransactionRepository
        >
    with $Provider<ITransactionRepository> {
  TransactionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionRepositoryHash();

  @$internal
  @override
  $ProviderElement<ITransactionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ITransactionRepository create(Ref ref) {
    return transactionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ITransactionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ITransactionRepository>(value),
    );
  }
}

String _$transactionRepositoryHash() =>
    r'221c0717751b3123f729801e73e0e5c9817ce26c';

@ProviderFor(biometrics)
final biometricsProvider = BiometricsProvider._();

final class BiometricsProvider
    extends
        $FunctionalProvider<
          BiometricsService,
          BiometricsService,
          BiometricsService
        >
    with $Provider<BiometricsService> {
  BiometricsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'biometricsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$biometricsHash();

  @$internal
  @override
  $ProviderElement<BiometricsService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BiometricsService create(Ref ref) {
    return biometrics(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BiometricsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BiometricsService>(value),
    );
  }
}

String _$biometricsHash() => r'1337d11cf26e127cca062446f53b3bf4b7c73806';

@ProviderFor(receiptService)
final receiptServiceProvider = ReceiptServiceProvider._();

final class ReceiptServiceProvider
    extends $FunctionalProvider<ReceiptService, ReceiptService, ReceiptService>
    with $Provider<ReceiptService> {
  ReceiptServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'receiptServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$receiptServiceHash();

  @$internal
  @override
  $ProviderElement<ReceiptService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReceiptService create(Ref ref) {
    return receiptService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReceiptService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReceiptService>(value),
    );
  }
}

String _$receiptServiceHash() => r'a224491664cebf813454d2a9c90e3571e708442b';

@ProviderFor(filePickerService)
final filePickerServiceProvider = FilePickerServiceProvider._();

final class FilePickerServiceProvider
    extends
        $FunctionalProvider<
          FilePickerService,
          FilePickerService,
          FilePickerService
        >
    with $Provider<FilePickerService> {
  FilePickerServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filePickerServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filePickerServiceHash();

  @$internal
  @override
  $ProviderElement<FilePickerService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FilePickerService create(Ref ref) {
    return filePickerService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilePickerService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilePickerService>(value),
    );
  }
}

String _$filePickerServiceHash() => r'1157e96e7baa9cffa0c1ab88802e1ba29f8a1076';

@ProviderFor(imagePickerService)
final imagePickerServiceProvider = ImagePickerServiceProvider._();

final class ImagePickerServiceProvider
    extends
        $FunctionalProvider<
          ImagePickerService,
          ImagePickerService,
          ImagePickerService
        >
    with $Provider<ImagePickerService> {
  ImagePickerServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'imagePickerServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$imagePickerServiceHash();

  @$internal
  @override
  $ProviderElement<ImagePickerService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ImagePickerService create(Ref ref) {
    return imagePickerService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ImagePickerService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ImagePickerService>(value),
    );
  }
}

String _$imagePickerServiceHash() =>
    r'42c3114a00ff9b9a011ae86ab5aaf6c1c9aea7fb';

@ProviderFor(appVersionService)
final appVersionServiceProvider = AppVersionServiceProvider._();

final class AppVersionServiceProvider
    extends
        $FunctionalProvider<
          AppVersionService,
          AppVersionService,
          AppVersionService
        >
    with $Provider<AppVersionService> {
  AppVersionServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appVersionServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appVersionServiceHash();

  @$internal
  @override
  $ProviderElement<AppVersionService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppVersionService create(Ref ref) {
    return appVersionService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppVersionService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppVersionService>(value),
    );
  }
}

String _$appVersionServiceHash() => r'5d2d6a05eb796f427cd25c0d55ae04840c017491';
