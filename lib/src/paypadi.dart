import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.dart' show AppRouter;
import 'package:paypadi/config/theme.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:toastification/toastification.dart';

class PayPadi extends ConsumerWidget {
  const PayPadi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppRouter router = ref.watch(appRouterProvider);
    final AppTheme appTheme = ref.watch(appThemeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: appDesignSize,
      fontSizeResolver: (fontSize, instance) {
        if (kIsWeb) {
          final double effectiveWidth =
              instance.screenWidth > 450.0 ? 450.0 : instance.screenWidth;
          final double scale = effectiveWidth / appDesignSize.width;
          return fontSize * scale;
        }
        return FontSizeResolvers.width(fontSize, instance);
      },
      builder: (context, _) {
        if (kIsWeb) {
          final rawView = View.maybeOf(context);
          if (rawView != null) {
            final mq = MediaQueryData.fromView(rawView);
            final double clampedWidth =
                mq.size.width > 450.0 ? 450.0 : mq.size.width;
            ScreenUtil.configure(
              data: mq.copyWith(
                size: Size(clampedWidth, mq.size.height),
              ),
              designSize: appDesignSize,
              minTextAdapt: true,
              splitScreenMode: true,
            );
          }
        }

        return ToastificationWrapper(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: appTheme.theme(),
            routerConfig: router.config(
              navigatorObservers: () {
                return [if (kDebugMode) TalkerRouteObserver(debugLogger)];
              },
            ),
            builder: (context, child) {
              Widget content = AppLoadingOverlay(child: child!);
              if (kIsWeb) {
                final mq = MediaQuery.of(context);
                final double clampedWidth =
                    mq.size.width > 450.0 ? 450.0 : mq.size.width;
                final clampedMq = mq.copyWith(
                  size: Size(clampedWidth, mq.size.height),
                );

                ScreenUtil.configure(
                  data: clampedMq,
                  designSize: appDesignSize,
                  minTextAdapt: true,
                  splitScreenMode: true,
                );

                content = Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 450),
                    decoration: mq.size.width > 450.0
                        ? BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.18),
                                blurRadius: 30,
                                spreadRadius: 2,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          )
                        : null,
                    child: MediaQuery(
                      data: clampedMq,
                      child: ClipRect(child: content),
                    ),
                  ),
                );
              }
              return content;
            },
          ),
        );
      },
    );
  }
}
