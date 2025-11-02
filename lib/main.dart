import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_settings.dart';

import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/src/paypadi.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await preCacheSVGs();

  final ProviderContainer providerContainer = ProviderContainer(
    observers: [
      if (kDebugMode)
        TalkerRiverpodObserver(
          talker: logger,
          settings: TalkerRiverpodLoggerSettings(
            printProviderDisposed: true,
          ),
        ),
    ],
  );

  // Initializes SharedPreferencesWithCache
  try {
    await providerContainer.read(sharedPreferencesFutureProvider.future);
  } catch (e, stack) {
    logger.error('Failed to initialize SharedPreferencesWithCache', e, stack);
    // Optionally, handle the error further or rethrow
  }

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: PayPadi(),
    ),
  );
}
