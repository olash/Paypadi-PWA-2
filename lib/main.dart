import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/env.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/paypadi.dart';
import 'package:paypadi/src/shared/controllers/session/session_controller.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_settings.dart';

Future<void> initializeApp() async {
  SentryWidgetsFlutterBinding.ensureInitialized();

  await preCacheSVGs();

  final ProviderContainer providerContainer = ProviderContainer(
    observers: [
      if (kDebugMode)
        TalkerRiverpodObserver(
          talker: debugLogger,
          settings: const TalkerRiverpodLoggerSettings(
            printProviderDisposed: true,
          ),
        ),
    ],
  );

  AppException.logger =
      (AppException converted, Object? original, StackTrace stackTrace) async {
        debugLogger.error('[Error]', converted, stackTrace);
      };
  // Initializes SharedPreferencesWithCache and JwtRefreshController
  try {
    await providerContainer.read(sharedPreferencesFutureProvider.future);
    await providerContainer.read(sessionControllerProvider.future);
  } catch (e, stack) {
    debugLogger.error(
      'Failed to initialize SharedPreferencesWithCache',
      e,
      stack,
    );
    // Optionally, handle the error further or rethrow
  }

  await SentryFlutter.init(
    (options) {
      options.dsn = AppEnvironment.sentryDsn;
      // Adds request headers and IP for users, for more info visit:
      // https://docs.sentry.io/platforms/dart/guides/flutter/data-management/data-collected/
      options.sendDefaultPii = true;
      // options.enableLogs = true;
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for tracing.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
      // The sampling rate for profiling is relative to tracesSampleRate
      // Setting to 1.0 will profile 100% of sampled transactions:
      // options.profilesSampleRate = 1.0;
      // Configure Session Replay
      // options.replay.sessionSampleRate = 0.1;
      // options.replay.onErrorSampleRate = 1.0;
    },
    appRunner: () {

      runApp(
        SentryWidget(
          child: UncontrolledProviderScope(
            container: providerContainer,
            child: const PayPadi(),
          ),
        ),
      );
    },
  );
}
