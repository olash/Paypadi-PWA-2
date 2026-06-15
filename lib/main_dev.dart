import 'package:paypadi/firebase_options_dev.dart';
import 'package:paypadi/main.dart';

void main() async {
  await initializeApp(
    enableMonitoring: false,
    firebaseConfig: DefaultFirebaseOptions.currentPlatform,
  );
}
