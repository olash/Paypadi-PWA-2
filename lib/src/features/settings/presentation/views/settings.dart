import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/settings/presentation/widgets/setting_tile.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          "Settings",
          style: context.textTheme.headlineSmall?.copyWith(
            letterSpacing: (-.43),
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SettingTile(
              name: "Profile",
              icon: Iconsax.profile_circle_outline,
              onTap: () => context.router.push(ProfileRoute()),
            ),
            SettingTile(
              name: "Notification Preferences",
              icon: Iconsax.notification_outline,
              onTap: () => context.router.push(NotificationsRoute()),
            ),
            SettingTile(
              name: "Change Password",
              showTrailingIcon: false,
              icon: Iconsax.lock_1_outline,
              onTap: () => context.router.push(ChangePasswordRoute()),
            ),
            SettingTile(
              name: "Change Pin",
              showTrailingIcon: false,
              icon: Iconsax.password_check_outline,
              onTap: () => context.router.push(ChangePinRoute()),
            ),
            SettingTile(
              name: "Referral",
              showTrailingIcon: false,
              icon: Iconsax.alarm_outline,
              onTap: () => context.router.push(ReferralRoute()),
            ),
            SettingTile(
              name: "Theme",
              icon: Iconsax.colorfilter_outline,
              onTap: () => context.router.push(ChangeThemeRoute()),
            ),
            SettingTile(
              name: "Enable Biometrics",
              showTrailingIcon: false,
              icon: IonIcons.finger_print,
              onChanged: (value) {},
            ),
            SettingTile(
              name: "Dark Mode",
              showTrailingIcon: false,
              icon: Iconsax.moon_outline,
              onChanged: (value) {},
            ),
            SettingTile(
              name: "Help & Support",
              icon: Iconsax.support_outline,
              onTap: () => context.router.push(SupportRoute()),
            ),
            SettingTile(
              name: "Legal & Policies",
              icon: Iconsax.judge_outline,
              onTap: () => context.router.push(LegalRoute()),
            ),
            SettingTile(
              name: "Log out",
              showTrailingIcon: false,
              icon: Iconsax.logout_1_outline,
              onTap:
                  () => context.router.pushAndPopUntil(
                    LoginRoute(),
                    predicate: (route) => route.settings.name == "/login",
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
