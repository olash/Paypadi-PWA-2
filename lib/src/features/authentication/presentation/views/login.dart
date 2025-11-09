import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/config/service_registry/service_registry.dart'
    show
        appRouterProvider,
        biometricsProvider,
        localCacheProvider,
        secureCacheProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_avatar.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = useState<String>("");
    final biometricService = ref.watch(biometricsProvider);
    final ValueNotifier<bool> enabledBiometrics = useState<bool>(
      ref.read(localCacheProvider).getFromCache(CacheKeys.enabledBiometrics) ??
          false,
    );

    useEffect(() {
      if (password.value.length == passwordPinLength) {
        ref.read(appRouterProvider).push(AppBottomNavBarRoute());
      }
      return null;
    }, [password.value]);

    return AppScaffold(
      showAppBar: false,
      topPadding: kTopPadding,
      bottomPadding: Values.v24,
      child: Column(
        children: [
          AppAvatar(radius: Values.v84, imageUrl: kDemoProfilePic),
          Values.v16.verticalSpacing,
          Text(
            "Good evening, Sheriff",
            style: context.textTheme.headlineSmall,
          ),
          Values.v24.verticalSpacing,
          AppPinIndicator(
            text: password.value,
            pinLength: passwordPinLength,
          ),
          Spacer(flex: 2),
          AppKeypad(
            pinLength: passwordPinLength,
            showBiometric: enabledBiometrics.value,
            onChanged: (value) => password.value = value,
            onBiometricKeyPressed: () async {
              final result = await biometricService.authenticate();
              result.fold(
                (success) async {
                  if (success) {
                    final String? pin = await ref
                        .read(secureCacheProvider)
                        .read(CacheKeys.loginPin);
                    password.value = pin ?? "";
                  }
                },
                (error) {},
              );
            },
          ),
          Spacer(),
          Center(
            child: GestureDetector(
              onTap: () => ref
                  .read(appRouterProvider)
                  .push(ForgotPasswordRoute(email: "tokiolaolu@gmail.com")),
              child: Text(
                "Forgot Password?",
                style: context.textTheme.bodyMedium?.copyWith(
                  letterSpacing: -Values.v1
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
