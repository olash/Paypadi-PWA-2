import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:paypadi/config/env.dart' show Env;
import 'package:paypadi/config/router/router.dart' show AppRouter;
import 'package:paypadi/config/theme.dart' show theme;
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

class PayPadi extends ConsumerWidget {
  const PayPadi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppRouter router = ref.watch(appRouterProvider);
    AppSize.instance.appHeight = context.screenHeight;
    AppSize.instance.appWidth = context.screenWidth;

    return MaterialApp.router(
      theme: theme,
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(
        navigatorObservers: () => [if (kDebugMode) TalkerRouteObserver(logger)],
      ),
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
