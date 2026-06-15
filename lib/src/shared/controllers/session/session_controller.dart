import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/repositories/session/i_session_repository.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_controller.g.dart';

@Riverpod(keepAlive: true)
class SessionController extends _$SessionController
    with WidgetsBindingObserver {
  Timer? _refreshTimer;
  late final ISessionRepository _repository;

  @override
  FutureOr<void> build() {
    _repository = ref.watch(sessionRepositoryProvider);
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
    _startRefreshTimer();
  }

  void _onAppPaused() {
    _cancelTimer();
    debugLogger.info('Token refresh timer cancelled (Paused)');
  }

  void _onAppDetached() {
    _cancelTimer();
    debugLogger.info('Token refresh timer cancelled (Detached)');
  }

  void _onAppInactive() {
    // Optional implementation depending on requirements
  }

  void _onAppHidden() {
    _cancelTimer();
    debugLogger.info('Token refresh timer cancelled (Hidden)');
  }

  void _startRefreshTimer() {
    _refreshTimer?.cancel();
    _refreshTimer = Timer.periodic(
      const Duration(minutes: 5),
      (Timer _) => _handleTokenRefresh(),
    );
    debugLogger.info('Token refresh timer started');
  }

  void _cancelTimer() {
    _refreshTimer?.cancel();
    _refreshTimer = null;
  }

  Future<void> _handleTokenRefresh() async {
    try {
      await refreshToken();
    } catch (e, stackTrace) {
      final exception = AppException.handleException(e, stackTrace);
      final message = AppException.getExceptionMessage(exception);

      e.printLog();
      debugLogger.info('Token refresh failed: $message');
    }
  }

  Future<void> refreshToken() async {
    final refreshToken = await ref
        .read(secureCacheProvider)
        .get<String?>(CacheKeys.refreshToken);

    if (refreshToken != null) {
      final result = await _repository.refreshTokens(refreshToken);

      await result.fold(
        (success) async {
          await Future.wait([
            ref
                .read(secureCacheProvider)
                .save(
                  key: CacheKeys.refreshToken,
                  value: success.data.refreshToken,
                ),
            ref
                .read(secureCacheProvider)
                .save(
                  key: CacheKeys.accessToken,
                  value: success.data.accessToken,
                ),
          ]);
          debugLogger.info('Tokens successfully refreshed and stored.');
        },
        // Throw the domain failure so it is caught and normalized by _handleTokenRefresh
        (failure) => throw failure,
      );
    }
  }
}
