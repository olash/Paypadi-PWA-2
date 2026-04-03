import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/user_model/user_model.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_avatar.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = useState<String>("");

    final enabledBiometrics = useState<bool>(
      ref.read(localCacheProvider).getFromCache(CacheKeys.enabledBiometrics) ??
          false,
    );

    final user = ref.watch(localCacheProvider).getFromCache<UserModel>(
      CacheKeys.user,
      (data) {
        final json = jsonDecode(data) as Map<String, dynamic>;
        return UserModel.fromJson(json);
      },
    );

    ref.listen(authControllerProvider, (_, state) {
      state.when(
        data: (d) {
          dismissLoadingOverlay(context);
        },
        error: (e, st) {
          dismissLoadingOverlay(context);
          showErrorDialog(message: e.toString());
        },
        loading: () => showLoadingOverlay(context, ref),
      );
    });

    return AppScaffold(
      showAppBar: false,
      topPadding: kTopPadding,
      bottomPadding: Values.v24,
      child: Column(
        children: [
          AppAvatar(radius: Values.v84, imageUrl: kDemoProfilePic),
          Values.v16.verticalSpacing,
          Text(
            "Good ${getDayTime()}, ${user?.firstName ?? ""}",
            style: context.textTheme.headlineSmall,
          ),
          Values.v24.verticalSpacing,
          AppPinIndicator(
            text: password.value,
            pinLength: passwordPinLength,
          ),
          Spacer(flex: 2),
          AppKeypad(
            keyLength: passwordPinLength,
            showBiometric: enabledBiometrics.value,
            onChanged: (value) => password.value = value,
            onBiometricKeyPressed: () => loginWithBiometrics(
              ref,
              user?.phoneNumber ?? "",
            ),
            onSubmit: (loginPassword) => login(
              ref,
              user?.phoneNumber ?? "",
              loginPassword,
            ),
          ),
          Spacer(),
          Center(
            child: GestureDetector(
              onTap: () => onForgotPasswordPressed(ref, user?.email ?? ""),
              child: Text(
                "Forgot Password?",
                style: context.textTheme.bodyMedium?.copyWith(
                  letterSpacing: -Values.v1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onForgotPasswordPressed(WidgetRef ref, String email) {
    ref.read(appRouterProvider).push(ForgotPasswordRoute(email: email));
  }

  void loginWithBiometrics(WidgetRef ref, String phoneNumber) async {
    final biometricService = ref.watch(biometricsProvider);
    final result = await biometricService.authenticate();

    result.fold(
      (success) async {
        final String? password = await ref
            .read(secureCacheProvider)
            .read(CacheKeys.password);

        ref
            .read(authControllerProvider.notifier)
            .login(phoneNumber, password ?? "");
      },
      (error) {},
    );
  }

  void login(WidgetRef ref, String phoneNumber, String password) {
    ref.read(authControllerProvider.notifier).login(phoneNumber, password);
  }
}
