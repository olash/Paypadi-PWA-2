import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/paypadi.dart';
import 'package:paypadi/src/shared/controllers/jwt_controller.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_settings.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

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

  AppException.logger = (AppException converted, Object? original, StackTrace stackTrace) async {
    debugLogger.error('[Error]', converted, stackTrace);
  };
  // Initializes SharedPreferencesWithCache and JwtRefreshController
  try {
    await providerContainer.read(sharedPreferencesFutureProvider.future);
    await providerContainer.read(jwtControllerProvider.future);
  } catch (e, stack) {
    debugLogger.error(
      'Failed to initialize SharedPreferencesWithCache',
      e,
      stack,
    );
    // Optionally, handle the error further or rethrow
  }

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const PayPadi(),
    ),
  );
}
