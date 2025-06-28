import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/src/paypadi.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_settings.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      observers: [
        if (kDebugMode)
          TalkerRiverpodObserver(
            talker: logger,
            settings: TalkerRiverpodLoggerSettings(
              printProviderDisposed: true,
            ),
          ),
      ],
      child: PayPadi(),
    ),
  );
}
