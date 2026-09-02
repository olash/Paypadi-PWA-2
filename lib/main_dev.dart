import 'package:flutter/foundation.dart';
import 'package:paypadi/firebase_options_dev.dart';
import 'package:paypadi/firebase_options_web.dart';
import 'package:paypadi/main.dart';

void main() async {
  await initializeApp(
    enableMonitoring: false,
    firebaseConfig: kIsWeb
        ? webFirebaseOptions
        : DefaultFirebaseOptions.currentPlatform,
  );
}
