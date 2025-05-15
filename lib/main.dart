import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/src/paypadi.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: PayPadi()));
}
