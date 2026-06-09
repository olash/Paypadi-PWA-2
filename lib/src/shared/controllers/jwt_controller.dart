import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/repositories/jwt_repo.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'jwt_controller.g.dart';

@Riverpod(keepAlive: true)
class JwtController extends _$JwtController with WidgetsBindingObserver {
  late final JwtRepository _repository;
  Timer? _refreshTimer;

  @override
  FutureOr<void> build() {
    _repository = ref.watch(jwtRepositoryProvider);

    // Register as app lifecycle observer
    WidgetsBinding.instance.addObserver(this);

    // Start the timer to refresh token every 5 minutes
    _startRefreshTimer();

    // Dispose the timer and remove observer when the provider is disposed
    ref.onDispose(() {
      _refreshTimer?.cancel();
      WidgetsBinding.instance.removeObserver(this);
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        // App came back to foreground
        _onAppResumed();
        break;
      case AppLifecycleState.paused:
        // App went to background
        _onAppPaused();
        break;
      case AppLifecycleState.detached:
        // App is being killed
        _onAppDetached();
        break;
      case AppLifecycleState.inactive:
        // App is inactive (e.g., during phone call)
        _onAppInactive();
        break;
      case AppLifecycleState.hidden:
        // App is hidden (new in Flutter 3.13+)
        _onAppHidden();
        break;
    }
  }

  void _onAppResumed() {
    // Resume token refresh when app comes to foreground
    _startRefreshTimer();
  }

  void _onAppPaused() {
    // Pause token refresh when app goes to background
    _refreshTimer?.cancel();
    _refreshTimer = null;
    debugLogger.info('Token refresh timer cancelled');
  }

  void _onAppDetached() {
    // App is being killed, cancel timer
    _refreshTimer?.cancel();
    _refreshTimer = null;
    debugLogger.info('Token refresh timer cancelled');
  }

  void _onAppInactive() {
    // App is inactive but still visible (e.g., during phone call overlay)
    // You can choose to pause or continue based on your needs
  }

  void _onAppHidden() {
    // App is hidden but still running (new in Flutter 3.13+)
    // Similar to paused state
    _refreshTimer?.cancel();
    _refreshTimer = null;
    debugLogger.info('Token refresh timer cancelled');
  }

  void _startRefreshTimer() {
    _refreshTimer?.cancel(); // Cancel any existing timer
    _refreshTimer = Timer.periodic(
      const Duration(minutes: 5),
      (Timer _) => _handleTokenRefresh(),
    );
    debugLogger.info('Token refresh timer started');
  }

  Future<void> _handleTokenRefresh() async {
    try {
      refreshToken();
    } catch (e) {
      // Log the error or handle it appropriately
      debugLogger.info('Token refresh failed: $e');
    }
  }

  Future<void> refreshToken() async {
    final String? refreshToken = await ref
        .read(secureCacheProvider)
        .read(CacheKeys.refreshToken);

    if (refreshToken != null) {
      final result = await _repository.refreshTokens(refreshToken);
      result.fold(
        (success) {
          ref
              .read(secureCacheProvider)
              .write(key: CacheKeys.refreshToken, value: success.data.refresh);

          ref
              .read(secureCacheProvider)
              .write(key: CacheKeys.accessToken, value: success.data.access);
        },
        (failure) => throw failure,
      );
    }
  }
}
