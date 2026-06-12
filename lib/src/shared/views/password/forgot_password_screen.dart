import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart'
    show appPrimaryColorProvider;
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ForgotPasswordScreen extends ConsumerWidget {
  ForgotPasswordScreen({required this.email, super.key});

  final String email;
  final TapGestureRecognizer resendMail = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      title: '',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v24.verticalSpace,
          Text(
            'Please check your email',
            style: context.textTheme.headlineSmall,
          ),
          Values.v16.verticalSpace,
          Text(
            "We've sent a password reset link to ${obfuscateEmail(email)}. "
            'Click the link in the email to reset your password.',
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Values.v24.verticalSpace,
          RichText(
            text: TextSpan(
              text:
                  "If you can't find it, check your spam folder. Still no email? ",
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: 'Send mail again',
                  recognizer: resendMail..onTap = () {},
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: ref.watch(appPrimaryColorProvider),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
