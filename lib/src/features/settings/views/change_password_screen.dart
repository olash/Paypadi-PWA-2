import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ChangePasswordScreen extends HookConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();

    return AppScaffold(
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Verify Password",
            style: context.textTheme.headlineMedium,
          ),
          Values.v12.verticalSpacing,
          Text(
            "Please enter your Password",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Values.v32.verticalSpacing,
          AppPinIndicator(
            pinLength: passwordPinLength,
            controller: passwordController,
          ),
          Spacer(flex: 3),
          AppKeypad(
            keyLength: passwordPinLength,
            controller: passwordController,
            onSubmit: (password) {},
          ),
          Spacer(),
        ],
      ),
    );
  }

  // void _changePasswordRouteOnSubmit(WidgetRef ref, String currentPassword) {
  //   // ref
  //   //     .read(appRouterProvider)
  //   //     .push(
  //   //       PasswordRoute(
  //   //         onSubmit: (password) => _passwordRouteOnSubmit(ref, password),
  //   //       ),
  //   //     );
  // }

  // void _passwordRouteOnSubmit(WidgetRef ref, String password) {
  //   ref
  //       .read(appRouterProvider)
  //       .push(
  //         ConfirmPasswordRoute(
  //           onSubmit:
  //               (confirmPassword) => _confirmPasswordRouteOnSubmit(
  //                 ref,
  //                 password,
  //                 confirmPassword,
  //               ),
  //         ),
  //       );
  // }

  // void _confirmPasswordRouteOnSubmit(
  //   WidgetRef ref,
  //   String password,
  //   String confirmPassword,
  // ) {
  //   if (password == confirmPassword) {
  //     ref
  //         .read(secureCacheProvider)
  //         .write(key: CacheKeys.loginPin, value: confirmPassword);
  //     ref
  //         .read(appRouterProvider)
  //         .popUntilRouteWithName(AppBottomNavBarRoute.name);
  //   }
  // }
}
