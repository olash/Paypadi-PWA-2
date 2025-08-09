import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_settings.dart';

import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/src/paypadi.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer(
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
  await container.read(sharedPreferencesFutureProvider.future);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: PayPadi(),
    ),
  );
}
