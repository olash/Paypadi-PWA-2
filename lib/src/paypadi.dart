import 'package:flutter/material.dart';
import 'package:paypadi/config/env.dart' show Env;
import 'package:paypadi/config/router/router.dart' show AppRouter;
import 'package:paypadi/config/theme.dart' show theme;

final AppRouter _router = AppRouter();

class PayPadi extends StatelessWidget {
  const PayPadi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
      builder:
          Env.isDev
              ? (context, child) => Stack(children: [child!, _flavorBanner()])
              : null,
    );
  }
}

Widget _flavorBanner() {
  return Banner(
    message: "${Env.flavor}",
    color: Env.color,
    textDirection: TextDirection.ltr,
    location: BannerLocation.topStart,
  );
}
