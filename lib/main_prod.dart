import 'package:paypadi/firebase_options_prod.dart';
import 'package:paypadi/main.dart';

void main() async {
  await initializeApp(
    enableMonitoring: true,
    firebaseConfig: DefaultFirebaseOptions.currentPlatform,
  );
}
